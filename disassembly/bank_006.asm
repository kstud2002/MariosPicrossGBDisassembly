; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

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
    inc bc                                        ; $4070: $03
    nop                                           ; $4071: $00
    inc bc                                        ; $4072: $03
    nop                                           ; $4073: $00
    inc bc                                        ; $4074: $03
    nop                                           ; $4075: $00
    inc bc                                        ; $4076: $03
    nop                                           ; $4077: $00
    inc bc                                        ; $4078: $03
    nop                                           ; $4079: $00
    inc bc                                        ; $407a: $03
    nop                                           ; $407b: $00
    inc bc                                        ; $407c: $03
    nop                                           ; $407d: $00
    inc bc                                        ; $407e: $03
    nop                                           ; $407f: $00
    ldh a, [rP1]                                  ; $4080: $f0 $00
    ldh a, [rP1]                                  ; $4082: $f0 $00
    ldh a, [rP1]                                  ; $4084: $f0 $00
    ldh a, [rP1]                                  ; $4086: $f0 $00
    ldh a, [rP1]                                  ; $4088: $f0 $00
    ldh a, [rP1]                                  ; $408a: $f0 $00
    ldh a, [rP1]                                  ; $408c: $f0 $00
    ldh a, [rP1]                                  ; $408e: $f0 $00
    ccf                                           ; $4090: $3f
    nop                                           ; $4091: $00
    ccf                                           ; $4092: $3f
    nop                                           ; $4093: $00
    ccf                                           ; $4094: $3f
    nop                                           ; $4095: $00
    ccf                                           ; $4096: $3f
    nop                                           ; $4097: $00
    ccf                                           ; $4098: $3f
    nop                                           ; $4099: $00
    ccf                                           ; $409a: $3f
    nop                                           ; $409b: $00
    ccf                                           ; $409c: $3f
    nop                                           ; $409d: $00
    ccf                                           ; $409e: $3f
    nop                                           ; $409f: $00
    inc bc                                        ; $40a0: $03
    nop                                           ; $40a1: $00
    inc bc                                        ; $40a2: $03
    nop                                           ; $40a3: $00
    inc bc                                        ; $40a4: $03
    nop                                           ; $40a5: $00
    inc bc                                        ; $40a6: $03
    nop                                           ; $40a7: $00
    inc bc                                        ; $40a8: $03
    nop                                           ; $40a9: $00
    inc bc                                        ; $40aa: $03
    nop                                           ; $40ab: $00
    inc bc                                        ; $40ac: $03
    nop                                           ; $40ad: $00
    inc bc                                        ; $40ae: $03
    nop                                           ; $40af: $00
    ldh a, [rP1]                                  ; $40b0: $f0 $00
    ldh a, [rP1]                                  ; $40b2: $f0 $00
    ldh a, [rP1]                                  ; $40b4: $f0 $00
    ldh a, [rP1]                                  ; $40b6: $f0 $00
    ldh a, [rP1]                                  ; $40b8: $f0 $00
    ldh a, [rP1]                                  ; $40ba: $f0 $00
    ldh a, [rP1]                                  ; $40bc: $f0 $00
    ldh a, [rP1]                                  ; $40be: $f0 $00
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
    inc bc                                        ; $4170: $03
    nop                                           ; $4171: $00
    inc bc                                        ; $4172: $03
    nop                                           ; $4173: $00
    inc bc                                        ; $4174: $03
    nop                                           ; $4175: $00
    inc bc                                        ; $4176: $03
    nop                                           ; $4177: $00
    inc bc                                        ; $4178: $03
    nop                                           ; $4179: $00
    inc bc                                        ; $417a: $03
    nop                                           ; $417b: $00
    inc bc                                        ; $417c: $03
    nop                                           ; $417d: $00
    inc bc                                        ; $417e: $03
    nop                                           ; $417f: $00
    ldh a, [rP1]                                  ; $4180: $f0 $00
    ldh a, [rP1]                                  ; $4182: $f0 $00
    ldh a, [rP1]                                  ; $4184: $f0 $00
    ldh a, [rP1]                                  ; $4186: $f0 $00
    ldh a, [rP1]                                  ; $4188: $f0 $00
    ldh a, [rP1]                                  ; $418a: $f0 $00
    ldh a, [rP1]                                  ; $418c: $f0 $00
    ldh a, [rP1]                                  ; $418e: $f0 $00
    ccf                                           ; $4190: $3f
    nop                                           ; $4191: $00
    ccf                                           ; $4192: $3f
    nop                                           ; $4193: $00
    ccf                                           ; $4194: $3f
    nop                                           ; $4195: $00
    ccf                                           ; $4196: $3f
    nop                                           ; $4197: $00
    ccf                                           ; $4198: $3f
    nop                                           ; $4199: $00
    ccf                                           ; $419a: $3f
    nop                                           ; $419b: $00
    ccf                                           ; $419c: $3f
    nop                                           ; $419d: $00
    ccf                                           ; $419e: $3f
    nop                                           ; $419f: $00
    inc bc                                        ; $41a0: $03
    nop                                           ; $41a1: $00
    inc bc                                        ; $41a2: $03
    nop                                           ; $41a3: $00
    inc bc                                        ; $41a4: $03
    nop                                           ; $41a5: $00
    inc bc                                        ; $41a6: $03
    nop                                           ; $41a7: $00
    inc bc                                        ; $41a8: $03
    nop                                           ; $41a9: $00
    inc bc                                        ; $41aa: $03
    nop                                           ; $41ab: $00
    inc bc                                        ; $41ac: $03
    nop                                           ; $41ad: $00
    inc bc                                        ; $41ae: $03
    nop                                           ; $41af: $00
    ldh a, [rP1]                                  ; $41b0: $f0 $00
    ldh a, [rP1]                                  ; $41b2: $f0 $00
    ldh a, [rP1]                                  ; $41b4: $f0 $00
    ldh a, [rP1]                                  ; $41b6: $f0 $00
    ldh a, [rP1]                                  ; $41b8: $f0 $00
    ldh a, [rP1]                                  ; $41ba: $f0 $00
    ldh a, [rP1]                                  ; $41bc: $f0 $00
    ldh a, [rP1]                                  ; $41be: $f0 $00
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
    inc bc                                        ; $4270: $03
    nop                                           ; $4271: $00
    inc bc                                        ; $4272: $03
    nop                                           ; $4273: $00
    inc bc                                        ; $4274: $03
    nop                                           ; $4275: $00
    inc bc                                        ; $4276: $03
    nop                                           ; $4277: $00
    inc bc                                        ; $4278: $03
    nop                                           ; $4279: $00
    inc bc                                        ; $427a: $03
    nop                                           ; $427b: $00
    inc bc                                        ; $427c: $03
    nop                                           ; $427d: $00
    inc bc                                        ; $427e: $03
    nop                                           ; $427f: $00
    ldh a, [rP1]                                  ; $4280: $f0 $00
    ldh a, [rP1]                                  ; $4282: $f0 $00
    ldh a, [rP1]                                  ; $4284: $f0 $00
    ldh a, [rP1]                                  ; $4286: $f0 $00
    ldh a, [rP1]                                  ; $4288: $f0 $00
    ldh a, [rP1]                                  ; $428a: $f0 $00
    ldh a, [rP1]                                  ; $428c: $f0 $00
    ldh a, [rP1]                                  ; $428e: $f0 $00
    ccf                                           ; $4290: $3f
    nop                                           ; $4291: $00
    ccf                                           ; $4292: $3f
    nop                                           ; $4293: $00
    ccf                                           ; $4294: $3f
    nop                                           ; $4295: $00
    ccf                                           ; $4296: $3f
    nop                                           ; $4297: $00
    ccf                                           ; $4298: $3f
    nop                                           ; $4299: $00
    ccf                                           ; $429a: $3f
    nop                                           ; $429b: $00
    ccf                                           ; $429c: $3f
    nop                                           ; $429d: $00
    ccf                                           ; $429e: $3f
    nop                                           ; $429f: $00
    inc bc                                        ; $42a0: $03
    nop                                           ; $42a1: $00
    inc bc                                        ; $42a2: $03
    nop                                           ; $42a3: $00
    inc bc                                        ; $42a4: $03
    nop                                           ; $42a5: $00
    inc bc                                        ; $42a6: $03
    nop                                           ; $42a7: $00
    inc bc                                        ; $42a8: $03
    nop                                           ; $42a9: $00
    inc bc                                        ; $42aa: $03
    nop                                           ; $42ab: $00
    inc bc                                        ; $42ac: $03
    nop                                           ; $42ad: $00
    inc bc                                        ; $42ae: $03
    nop                                           ; $42af: $00
    ldh a, [rP1]                                  ; $42b0: $f0 $00
    ldh a, [rP1]                                  ; $42b2: $f0 $00
    ldh a, [rP1]                                  ; $42b4: $f0 $00
    ldh a, [rP1]                                  ; $42b6: $f0 $00
    ldh a, [rP1]                                  ; $42b8: $f0 $00
    ldh a, [rP1]                                  ; $42ba: $f0 $00
    ldh a, [rP1]                                  ; $42bc: $f0 $00
    ldh a, [rP1]                                  ; $42be: $f0 $00
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
    inc bc                                        ; $4370: $03
    nop                                           ; $4371: $00
    inc bc                                        ; $4372: $03
    nop                                           ; $4373: $00
    inc bc                                        ; $4374: $03
    nop                                           ; $4375: $00
    inc bc                                        ; $4376: $03
    nop                                           ; $4377: $00
    inc bc                                        ; $4378: $03
    nop                                           ; $4379: $00
    inc bc                                        ; $437a: $03
    nop                                           ; $437b: $00
    inc bc                                        ; $437c: $03
    nop                                           ; $437d: $00
    inc bc                                        ; $437e: $03
    nop                                           ; $437f: $00
    ldh a, [rP1]                                  ; $4380: $f0 $00
    ldh a, [rP1]                                  ; $4382: $f0 $00
    ldh a, [rP1]                                  ; $4384: $f0 $00
    ldh a, [rP1]                                  ; $4386: $f0 $00
    ldh a, [rP1]                                  ; $4388: $f0 $00
    ldh a, [rP1]                                  ; $438a: $f0 $00
    ldh a, [rP1]                                  ; $438c: $f0 $00
    ldh a, [rP1]                                  ; $438e: $f0 $00
    ccf                                           ; $4390: $3f
    nop                                           ; $4391: $00
    ccf                                           ; $4392: $3f
    nop                                           ; $4393: $00
    ccf                                           ; $4394: $3f
    nop                                           ; $4395: $00
    ccf                                           ; $4396: $3f
    nop                                           ; $4397: $00
    ccf                                           ; $4398: $3f
    nop                                           ; $4399: $00
    ccf                                           ; $439a: $3f
    nop                                           ; $439b: $00
    ccf                                           ; $439c: $3f
    nop                                           ; $439d: $00
    ccf                                           ; $439e: $3f
    nop                                           ; $439f: $00
    inc bc                                        ; $43a0: $03
    nop                                           ; $43a1: $00
    inc bc                                        ; $43a2: $03
    nop                                           ; $43a3: $00
    inc bc                                        ; $43a4: $03
    nop                                           ; $43a5: $00
    inc bc                                        ; $43a6: $03
    nop                                           ; $43a7: $00
    inc bc                                        ; $43a8: $03
    nop                                           ; $43a9: $00
    inc bc                                        ; $43aa: $03
    nop                                           ; $43ab: $00
    inc bc                                        ; $43ac: $03
    nop                                           ; $43ad: $00
    inc bc                                        ; $43ae: $03
    nop                                           ; $43af: $00
    ldh a, [rP1]                                  ; $43b0: $f0 $00
    ldh a, [rP1]                                  ; $43b2: $f0 $00
    ldh a, [rP1]                                  ; $43b4: $f0 $00
    ldh a, [rP1]                                  ; $43b6: $f0 $00
    ldh a, [rP1]                                  ; $43b8: $f0 $00
    ldh a, [rP1]                                  ; $43ba: $f0 $00
    ldh a, [rP1]                                  ; $43bc: $f0 $00
    ldh a, [rP1]                                  ; $43be: $f0 $00
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
    jr nc, jr_006_4420                            ; $441e: $30 $00

jr_006_4420:
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
    jr nc, jr_006_4450                            ; $444e: $30 $00

jr_006_4450:
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
    inc bc                                        ; $4470: $03
    nop                                           ; $4471: $00
    inc bc                                        ; $4472: $03
    nop                                           ; $4473: $00
    inc bc                                        ; $4474: $03
    nop                                           ; $4475: $00
    inc bc                                        ; $4476: $03
    nop                                           ; $4477: $00
    inc bc                                        ; $4478: $03
    nop                                           ; $4479: $00
    inc bc                                        ; $447a: $03
    nop                                           ; $447b: $00
    ld a, c                                       ; $447c: $79
    nop                                           ; $447d: $00
    jr nc, jr_006_4480                            ; $447e: $30 $00

jr_006_4480:
    ldh a, [rP1]                                  ; $4480: $f0 $00
    ldh a, [rP1]                                  ; $4482: $f0 $00
    ldh a, [rP1]                                  ; $4484: $f0 $00
    ldh a, [rP1]                                  ; $4486: $f0 $00
    ldh a, [rP1]                                  ; $4488: $f0 $00
    ldh a, [rP1]                                  ; $448a: $f0 $00
    rst RST_20                                    ; $448c: $e7
    nop                                           ; $448d: $00
    jp Jump_000_3f00                              ; $448e: $c3 $00 $3f


    nop                                           ; $4491: $00
    ccf                                           ; $4492: $3f
    nop                                           ; $4493: $00
    ccf                                           ; $4494: $3f
    nop                                           ; $4495: $00
    ccf                                           ; $4496: $3f
    nop                                           ; $4497: $00
    ccf                                           ; $4498: $3f
    nop                                           ; $4499: $00
    ccf                                           ; $449a: $3f
    nop                                           ; $449b: $00
    sbc [hl]                                      ; $449c: $9e
    nop                                           ; $449d: $00
    inc c                                         ; $449e: $0c
    nop                                           ; $449f: $00
    inc bc                                        ; $44a0: $03
    nop                                           ; $44a1: $00
    inc bc                                        ; $44a2: $03
    nop                                           ; $44a3: $00
    inc bc                                        ; $44a4: $03
    nop                                           ; $44a5: $00
    inc bc                                        ; $44a6: $03
    nop                                           ; $44a7: $00
    inc bc                                        ; $44a8: $03
    nop                                           ; $44a9: $00
    inc bc                                        ; $44aa: $03
    nop                                           ; $44ab: $00
    ld a, c                                       ; $44ac: $79
    nop                                           ; $44ad: $00
    jr nc, jr_006_44b0                            ; $44ae: $30 $00

jr_006_44b0:
    ldh a, [rP1]                                  ; $44b0: $f0 $00
    ldh a, [rP1]                                  ; $44b2: $f0 $00
    ldh a, [rP1]                                  ; $44b4: $f0 $00
    ldh a, [rP1]                                  ; $44b6: $f0 $00
    ldh a, [rP1]                                  ; $44b8: $f0 $00
    ldh a, [rP1]                                  ; $44ba: $f0 $00
    ldh [rP1], a                                  ; $44bc: $e0 $00
    ret nz                                        ; $44be: $c0

    nop                                           ; $44bf: $00
    dec b                                         ; $44c0: $05
    ld b, $02                                     ; $44c1: $06 $02
    inc bc                                        ; $44c3: $03

jr_006_44c4:
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
    jr jr_006_44c4                                ; $4528: $18 $9a

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
    jr nz, jr_006_456d                            ; $456b: $20 $00

jr_006_456d:
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

jr_006_4599:
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

jr_006_45ad:
    inc e                                         ; $45ad: $1c
    add hl, sp                                    ; $45ae: $39
    ld [hl], $00                                  ; $45af: $36 $00
    nop                                           ; $45b1: $00
    nop                                           ; $45b2: $00
    nop                                           ; $45b3: $00
    nop                                           ; $45b4: $00
    ret nz                                        ; $45b5: $c0

    ret nz                                        ; $45b6: $c0

    jr nz, jr_006_4599                            ; $45b7: $20 $e0

jr_006_45b9:
    db $10                                        ; $45b9: $10
    ldh [rNR10], a                                ; $45ba: $e0 $10
    ldh [rNR10], a                                ; $45bc: $e0 $10
    ret nz                                        ; $45be: $c0

    jr nz, jr_006_45c3                            ; $45bf: $20 $02

    ld b, $05                                     ; $45c1: $06 $05

jr_006_45c3:
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

    jr nz, jr_006_45b9                            ; $45d7: $20 $e0

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
    jr jr_006_45ad                                ; $4629: $18 $82

    nop                                           ; $462b: $00
    add d                                         ; $462c: $82
    nop                                           ; $462d: $00
    cp $00                                        ; $462e: $fe $00
    ld b, $05                                     ; $4630: $06 $05

jr_006_4632:
    inc b                                         ; $4632: $04
    rlca                                          ; $4633: $07
    inc bc                                        ; $4634: $03
    rrca                                          ; $4635: $0f
    inc b                                         ; $4636: $04
    inc e                                         ; $4637: $1c
    jr jr_006_4652                                ; $4638: $18 $18

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
    jr nz, jr_006_4632                            ; $4650: $20 $e0

jr_006_4652:
    ret nz                                        ; $4652: $c0

    ret nz                                        ; $4653: $c0

    inc b                                         ; $4654: $04
    dec b                                         ; $4655: $05
    jr nz, jr_006_46a8                            ; $4656: $20 $50

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
    jr nz, jr_006_468d                            ; $466b: $20 $20

jr_006_466d:
    jr nc, jr_006_466f                            ; $466d: $30 $00

jr_006_466f:
    nop                                           ; $466f: $00
    nop                                           ; $4670: $00
    nop                                           ; $4671: $00
    nop                                           ; $4672: $00
    nop                                           ; $4673: $00
    nop                                           ; $4674: $00
    nop                                           ; $4675: $00
    nop                                           ; $4676: $00
    jr nz, jr_006_4679                            ; $4677: $20 $00

jr_006_4679:
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

jr_006_468d:
    inc l                                         ; $468d: $2c
    nop                                           ; $468e: $00
    jr jr_006_466d                                ; $468f: $18 $dc

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

jr_006_46a8:
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

    jr nc, jr_006_46fb                            ; $46b9: $30 $40

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
    jr nz, jr_006_46d3                            ; $46d1: $20 $00

jr_006_46d3:
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

jr_006_46fb:
    sbc c                                         ; $46fb: $99
    ld a, [hl]                                    ; $46fc: $7e
    ld b, d                                       ; $46fd: $42
    inc a                                         ; $46fe: $3c

Jump_006_46ff:
    inc a                                         ; $46ff: $3c
    jr nc, jr_006_4722                            ; $4700: $30 $20

    jr nc, jr_006_4724                            ; $4702: $30 $20

    ld hl, sp-$40                                 ; $4704: $f8 $c0
    inc a                                         ; $4706: $3c
    jr c, jr_006_472f                             ; $4707: $38 $26

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

jr_006_4722:
    nop                                           ; $4722: $00
    nop                                           ; $4723: $00

jr_006_4724:
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

jr_006_472f:
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
    jr jr_006_4772                                ; $474c: $18 $24

    nop                                           ; $474e: $00
    jr jr_006_4751                                ; $474f: $18 $00

jr_006_4751:
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

jr_006_4772:
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
    jr nc, jr_006_47d0                            ; $479e: $30 $30

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
    jr nc, jr_006_47e0                            ; $47ae: $30 $30

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

jr_006_47d0:
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

jr_006_47e0:
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
    jr nc, jr_006_4843                            ; $4811: $30 $30

    ld c, b                                       ; $4813: $48
    jr nc, jr_006_485e                            ; $4814: $30 $48

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
    jr nc, jr_006_4873                            ; $4841: $30 $30

jr_006_4843:
    ld c, b                                       ; $4843: $48
    jr nc, jr_006_488e                            ; $4844: $30 $48

jr_006_4846:
    jr nc, jr_006_4890                            ; $4846: $30 $48

    jr z, jr_006_48a2                             ; $4848: $28 $58

    ld a, b                                       ; $484a: $78
    ld a, b                                       ; $484b: $78
    nop                                           ; $484c: $00
    nop                                           ; $484d: $00
    nop                                           ; $484e: $00
    nop                                           ; $484f: $00
    db $10                                        ; $4850: $10
    jr jr_006_4863                                ; $4851: $18 $10

    jr jr_006_4865                                ; $4853: $18 $10

    jr @-$43                                      ; $4855: $18 $bb

    rst RST_38                                    ; $4857: $ff
    inc bc                                        ; $4858: $03
    add e                                         ; $4859: $83
    ld b, $84                                     ; $485a: $06 $84
    add hl, bc                                    ; $485c: $09
    adc c                                         ; $485d: $89

jr_006_485e:
    ld a, [$10ff]                                 ; $485e: $fa $ff $10
    jr jr_006_4873                                ; $4861: $18 $10

jr_006_4863:
    jr jr_006_4876                                ; $4863: $18 $11

jr_006_4865:
    add hl, de                                    ; $4865: $19
    cp [hl]                                       ; $4866: $be
    rst RST_38                                    ; $4867: $ff
    or c                                          ; $4868: $b1
    cp b                                          ; $4869: $b8
    rst RST_00                                    ; $486a: $c7
    ldh [$ff1f], a                                ; $486b: $e0 $1f
    add b                                         ; $486d: $80
    ld a, a                                       ; $486e: $7f
    nop                                           ; $486f: $00
    db $10                                        ; $4870: $10
    jr jr_006_4883                                ; $4871: $18 $10

jr_006_4873:
    jr @+$01                                      ; $4873: $18 $ff

    rst RST_38                                    ; $4875: $ff

jr_006_4876:
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
    db $10                                        ; $4880: $10
    jr jr_006_4893                                ; $4881: $18 $10

jr_006_4883:
    jr jr_006_4895                                ; $4883: $18 $10

    jr @-$03                                      ; $4885: $18 $fb

    rst RST_38                                    ; $4887: $ff
    ld sp, $8971                                  ; $4888: $31 $71 $89
    add hl, de                                    ; $488b: $19
    sub l                                         ; $488c: $95
    dec h                                         ; $488d: $25

jr_006_488e:
    inc a                                         ; $488e: $3c
    ld a, a                                       ; $488f: $7f

jr_006_4890:
    inc c                                         ; $4890: $0c
    ld c, $09                                     ; $4891: $0e $09

jr_006_4893:
    inc c                                         ; $4893: $0c
    inc de                                        ; $4894: $13

jr_006_4895:
    jr jr_006_48be                                ; $4895: $18 $27

    jr nc, @+$26                                  ; $4897: $30 $24

    ld h, b                                       ; $4899: $60
    ld b, b                                       ; $489a: $40
    ld h, e                                       ; $489b: $63
    ld c, c                                       ; $489c: $49
    db $fc                                        ; $489d: $fc
    ld d, e                                       ; $489e: $53
    ld hl, sp-$08                                 ; $489f: $f8 $f8
    nop                                           ; $48a1: $00

jr_006_48a2:
    ldh [rIF], a                                  ; $48a2: $e0 $0f
    rst RST_00                                    ; $48a4: $c7
    jr nc, jr_006_4846                            ; $48a5: $30 $9f

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

jr_006_48be:
    rst RST_18                                    ; $48be: $df

jr_006_48bf:
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
    jr nz, jr_006_4940                            ; $48de: $20 $60

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

jr_006_48fe:
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
    jr nc, jr_006_48fe                            ; $491d: $30 $df

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
    jr nz, jr_006_48bf                            ; $493d: $20 $80

    ret nc                                        ; $493f: $d0

jr_006_4940:
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

jr_006_4a22:
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
    db $10                                        ; $4a60: $10
    jr jr_006_4a73                                ; $4a61: $18 $10

    jr jr_006_4a75                                ; $4a63: $18 $10

    jr jr_006_4a22                                ; $4a65: $18 $bb

    rst RST_38                                    ; $4a67: $ff
    ld bc, $0181                                  ; $4a68: $01 $81 $01
    add c                                         ; $4a6b: $81
    ld bc, $ff81                                  ; $4a6c: $01 $81 $ff
    rst RST_38                                    ; $4a6f: $ff
    add c                                         ; $4a70: $81
    db $e3                                        ; $4a71: $e3
    add c                                         ; $4a72: $81

jr_006_4a73:
    db $e3                                        ; $4a73: $e3
    add c                                         ; $4a74: $81

jr_006_4a75:
    db $e3                                        ; $4a75: $e3
    db $e3                                        ; $4a76: $e3
    rst RST_38                                    ; $4a77: $ff
    sbc l                                         ; $4a78: $9d
    add c                                         ; $4a79: $81
    sbc l                                         ; $4a7a: $9d
    add c                                         ; $4a7b: $81
    sbc l                                         ; $4a7c: $9d
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
    rst RST_38                                    ; $4b6c: $ff
    nop                                           ; $4b6d: $00
    rst RST_38                                    ; $4b6e: $ff
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
    rst RST_38                                    ; $4b7c: $ff
    nop                                           ; $4b7d: $00
    rst RST_38                                    ; $4b7e: $ff
    nop                                           ; $4b7f: $00
    rst RST_38                                    ; $4b80: $ff
    nop                                           ; $4b81: $00
    rst RST_38                                    ; $4b82: $ff
    nop                                           ; $4b83: $00
    rst RST_38                                    ; $4b84: $ff
    nop                                           ; $4b85: $00
    rst RST_38                                    ; $4b86: $ff
    nop                                           ; $4b87: $00
    nop                                           ; $4b88: $00
    nop                                           ; $4b89: $00
    nop                                           ; $4b8a: $00
    nop                                           ; $4b8b: $00
    nop                                           ; $4b8c: $00
    nop                                           ; $4b8d: $00
    nop                                           ; $4b8e: $00
    nop                                           ; $4b8f: $00
    rst RST_38                                    ; $4b90: $ff
    nop                                           ; $4b91: $00
    rst RST_38                                    ; $4b92: $ff
    nop                                           ; $4b93: $00
    rst RST_38                                    ; $4b94: $ff
    nop                                           ; $4b95: $00
    rst RST_38                                    ; $4b96: $ff
    nop                                           ; $4b97: $00
    nop                                           ; $4b98: $00
    nop                                           ; $4b99: $00
    nop                                           ; $4b9a: $00
    nop                                           ; $4b9b: $00
    nop                                           ; $4b9c: $00
    nop                                           ; $4b9d: $00
    nop                                           ; $4b9e: $00
    nop                                           ; $4b9f: $00
    nop                                           ; $4ba0: $00
    nop                                           ; $4ba1: $00
    nop                                           ; $4ba2: $00
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
    nop                                           ; $4bb0: $00
    nop                                           ; $4bb1: $00
    nop                                           ; $4bb2: $00
    nop                                           ; $4bb3: $00
    rst RST_38                                    ; $4bb4: $ff
    nop                                           ; $4bb5: $00
    rst RST_38                                    ; $4bb6: $ff
    nop                                           ; $4bb7: $00
    rst RST_38                                    ; $4bb8: $ff
    nop                                           ; $4bb9: $00
    rst RST_38                                    ; $4bba: $ff
    nop                                           ; $4bbb: $00
    rst RST_38                                    ; $4bbc: $ff
    nop                                           ; $4bbd: $00
    rst RST_38                                    ; $4bbe: $ff
    nop                                           ; $4bbf: $00
    nop                                           ; $4bc0: $00
    nop                                           ; $4bc1: $00
    nop                                           ; $4bc2: $00
    nop                                           ; $4bc3: $00
    nop                                           ; $4bc4: $00
    nop                                           ; $4bc5: $00
    nop                                           ; $4bc6: $00
    nop                                           ; $4bc7: $00
    nop                                           ; $4bc8: $00
    nop                                           ; $4bc9: $00
    nop                                           ; $4bca: $00
    nop                                           ; $4bcb: $00
    rst RST_38                                    ; $4bcc: $ff
    nop                                           ; $4bcd: $00
    rst RST_38                                    ; $4bce: $ff
    nop                                           ; $4bcf: $00
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
    rst RST_38                                    ; $4bdc: $ff
    nop                                           ; $4bdd: $00
    rst RST_38                                    ; $4bde: $ff
    nop                                           ; $4bdf: $00
    rst RST_38                                    ; $4be0: $ff
    nop                                           ; $4be1: $00
    rst RST_38                                    ; $4be2: $ff
    nop                                           ; $4be3: $00
    rst RST_38                                    ; $4be4: $ff
    nop                                           ; $4be5: $00
    rst RST_38                                    ; $4be6: $ff
    nop                                           ; $4be7: $00
    nop                                           ; $4be8: $00
    nop                                           ; $4be9: $00
    nop                                           ; $4bea: $00
    nop                                           ; $4beb: $00
    nop                                           ; $4bec: $00
    nop                                           ; $4bed: $00
    nop                                           ; $4bee: $00
    nop                                           ; $4bef: $00
    rst RST_38                                    ; $4bf0: $ff
    nop                                           ; $4bf1: $00
    rst RST_38                                    ; $4bf2: $ff
    nop                                           ; $4bf3: $00
    rst RST_38                                    ; $4bf4: $ff
    nop                                           ; $4bf5: $00
    rst RST_38                                    ; $4bf6: $ff
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
    rst RST_38                                    ; $4cb5: $ff
    ld a, a                                       ; $4cb6: $7f
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
    rst RST_38                                    ; $4cc3: $ff
    rst RST_38                                    ; $4cc4: $ff
    rst RST_38                                    ; $4cc5: $ff
    rst RST_30                                    ; $4cc6: $f7
    nop                                           ; $4cc7: $00
    rst RST_30                                    ; $4cc8: $f7
    nop                                           ; $4cc9: $00
    rst RST_30                                    ; $4cca: $f7
    nop                                           ; $4ccb: $00
    rst RST_30                                    ; $4ccc: $f7
    nop                                           ; $4ccd: $00
    rst RST_30                                    ; $4cce: $f7
    nop                                           ; $4ccf: $00
    nop                                           ; $4cd0: $00
    nop                                           ; $4cd1: $00
    nop                                           ; $4cd2: $00
    rst RST_38                                    ; $4cd3: $ff
    rst RST_38                                    ; $4cd4: $ff
    rst RST_38                                    ; $4cd5: $ff
    rst RST_18                                    ; $4cd6: $df
    nop                                           ; $4cd7: $00
    rst RST_18                                    ; $4cd8: $df
    nop                                           ; $4cd9: $00
    rst RST_18                                    ; $4cda: $df
    nop                                           ; $4cdb: $00
    rst RST_18                                    ; $4cdc: $df
    nop                                           ; $4cdd: $00
    rst RST_18                                    ; $4cde: $df
    nop                                           ; $4cdf: $00
    nop                                           ; $4ce0: $00
    nop                                           ; $4ce1: $00
    nop                                           ; $4ce2: $00
    rst RST_38                                    ; $4ce3: $ff
    rst RST_38                                    ; $4ce4: $ff
    rst RST_38                                    ; $4ce5: $ff
    ld a, l                                       ; $4ce6: $7d
    nop                                           ; $4ce7: $00
    ld a, l                                       ; $4ce8: $7d
    nop                                           ; $4ce9: $00
    ld a, l                                       ; $4cea: $7d
    nop                                           ; $4ceb: $00
    ld a, l                                       ; $4cec: $7d
    nop                                           ; $4ced: $00
    ld a, l                                       ; $4cee: $7d
    nop                                           ; $4cef: $00
    nop                                           ; $4cf0: $00
    nop                                           ; $4cf1: $00
    nop                                           ; $4cf2: $00
    db $fc                                        ; $4cf3: $fc
    db $fc                                        ; $4cf4: $fc
    ld hl, sp-$04                                 ; $4cf5: $f8 $fc
    ld [$08fc], sp                                ; $4cf7: $08 $fc $08
    db $fc                                        ; $4cfa: $fc
    ld [$08fc], sp                                ; $4cfb: $08 $fc $08
    db $fc                                        ; $4cfe: $fc
    ld [$0000], sp                                ; $4cff: $08 $00 $00
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
    jr nz, jr_006_4da2                            ; $4d40: $20 $60

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
    jr nz, jr_006_4dae                            ; $4d4c: $20 $60

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

jr_006_4da2:
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

jr_006_4dae:
    rst RST_18                                    ; $4dae: $df
    nop                                           ; $4daf: $00
    ld [bc], a                                    ; $4db0: $02
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
    ld [bc], a                                    ; $4dbc: $02
    ld [bc], a                                    ; $4dbd: $02
    ld a, a                                       ; $4dbe: $7f
    ld [bc], a                                    ; $4dbf: $02
    nop                                           ; $4dc0: $00
    nop                                           ; $4dc1: $00
    rst RST_30                                    ; $4dc2: $f7
    nop                                           ; $4dc3: $00
    rst RST_30                                    ; $4dc4: $f7
    nop                                           ; $4dc5: $00
    rst RST_30                                    ; $4dc6: $f7
    nop                                           ; $4dc7: $00
    rst RST_30                                    ; $4dc8: $f7
    nop                                           ; $4dc9: $00
    rst RST_30                                    ; $4dca: $f7
    nop                                           ; $4dcb: $00
    nop                                           ; $4dcc: $00
    nop                                           ; $4dcd: $00
    rst RST_30                                    ; $4dce: $f7
    nop                                           ; $4dcf: $00
    nop                                           ; $4dd0: $00
    nop                                           ; $4dd1: $00
    rst RST_18                                    ; $4dd2: $df
    nop                                           ; $4dd3: $00
    rst RST_18                                    ; $4dd4: $df
    nop                                           ; $4dd5: $00
    rst RST_18                                    ; $4dd6: $df
    nop                                           ; $4dd7: $00
    rst RST_18                                    ; $4dd8: $df
    nop                                           ; $4dd9: $00
    rst RST_18                                    ; $4dda: $df
    nop                                           ; $4ddb: $00
    nop                                           ; $4ddc: $00
    nop                                           ; $4ddd: $00
    rst RST_18                                    ; $4dde: $df
    nop                                           ; $4ddf: $00
    nop                                           ; $4de0: $00
    nop                                           ; $4de1: $00
    ld a, l                                       ; $4de2: $7d
    nop                                           ; $4de3: $00
    ld a, l                                       ; $4de4: $7d
    nop                                           ; $4de5: $00
    ld a, l                                       ; $4de6: $7d
    nop                                           ; $4de7: $00
    ld a, l                                       ; $4de8: $7d
    nop                                           ; $4de9: $00
    ld a, l                                       ; $4dea: $7d
    nop                                           ; $4deb: $00
    nop                                           ; $4dec: $00
    nop                                           ; $4ded: $00
    ld a, l                                       ; $4dee: $7d
    nop                                           ; $4def: $00
    inc c                                         ; $4df0: $0c
    ld [$08fc], sp                                ; $4df1: $08 $fc $08
    db $fc                                        ; $4df4: $fc
    ld [$08fc], sp                                ; $4df5: $08 $fc $08
    db $fc                                        ; $4df8: $fc
    ld [$08fc], sp                                ; $4df9: $08 $fc $08
    inc c                                         ; $4dfc: $0c
    ld [$08fc], sp                                ; $4dfd: $08 $fc $08
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
    jr nz, jr_006_4eaa                            ; $4e48: $20 $60

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

jr_006_4eaa:
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
    ld [bc], a                                    ; $4eb8: $02
    ld [bc], a                                    ; $4eb9: $02
    ld a, a                                       ; $4eba: $7f
    ld [bc], a                                    ; $4ebb: $02
    ld a, a                                       ; $4ebc: $7f
    ld [bc], a                                    ; $4ebd: $02
    ld a, a                                       ; $4ebe: $7f
    ld [bc], a                                    ; $4ebf: $02
    rst RST_30                                    ; $4ec0: $f7
    nop                                           ; $4ec1: $00
    rst RST_30                                    ; $4ec2: $f7
    nop                                           ; $4ec3: $00
    rst RST_30                                    ; $4ec4: $f7
    nop                                           ; $4ec5: $00
    rst RST_30                                    ; $4ec6: $f7
    nop                                           ; $4ec7: $00
    nop                                           ; $4ec8: $00
    nop                                           ; $4ec9: $00
    rst RST_30                                    ; $4eca: $f7
    nop                                           ; $4ecb: $00
    rst RST_30                                    ; $4ecc: $f7
    nop                                           ; $4ecd: $00
    rst RST_30                                    ; $4ece: $f7
    nop                                           ; $4ecf: $00
    rst RST_18                                    ; $4ed0: $df
    nop                                           ; $4ed1: $00
    rst RST_18                                    ; $4ed2: $df
    nop                                           ; $4ed3: $00
    rst RST_18                                    ; $4ed4: $df
    nop                                           ; $4ed5: $00
    rst RST_18                                    ; $4ed6: $df
    nop                                           ; $4ed7: $00
    nop                                           ; $4ed8: $00
    nop                                           ; $4ed9: $00
    rst RST_18                                    ; $4eda: $df
    nop                                           ; $4edb: $00
    rst RST_18                                    ; $4edc: $df
    nop                                           ; $4edd: $00
    rst RST_18                                    ; $4ede: $df
    nop                                           ; $4edf: $00
    ld a, l                                       ; $4ee0: $7d
    nop                                           ; $4ee1: $00
    ld a, l                                       ; $4ee2: $7d
    nop                                           ; $4ee3: $00
    ld a, l                                       ; $4ee4: $7d
    nop                                           ; $4ee5: $00
    ld a, l                                       ; $4ee6: $7d
    nop                                           ; $4ee7: $00
    nop                                           ; $4ee8: $00
    nop                                           ; $4ee9: $00
    ld a, l                                       ; $4eea: $7d
    nop                                           ; $4eeb: $00
    ld a, l                                       ; $4eec: $7d
    nop                                           ; $4eed: $00
    ld a, l                                       ; $4eee: $7d
    nop                                           ; $4eef: $00
    db $fc                                        ; $4ef0: $fc
    ld [$08fc], sp                                ; $4ef1: $08 $fc $08
    db $fc                                        ; $4ef4: $fc
    ld [$08fc], sp                                ; $4ef5: $08 $fc $08
    inc c                                         ; $4ef8: $0c
    ld [$08fc], sp                                ; $4ef9: $08 $fc $08
    db $fc                                        ; $4efc: $fc
    ld [$08fc], sp                                ; $4efd: $08 $fc $08
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
    jr nz, jr_006_4fa6                            ; $4f44: $20 $60

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

jr_006_4fa6:
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
    ld [bc], a                                    ; $4fb4: $02
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
    rst RST_30                                    ; $4fc0: $f7
    nop                                           ; $4fc1: $00
    rst RST_30                                    ; $4fc2: $f7
    nop                                           ; $4fc3: $00
    nop                                           ; $4fc4: $00
    nop                                           ; $4fc5: $00
    rst RST_30                                    ; $4fc6: $f7
    nop                                           ; $4fc7: $00
    rst RST_30                                    ; $4fc8: $f7
    nop                                           ; $4fc9: $00
    rst RST_30                                    ; $4fca: $f7
    nop                                           ; $4fcb: $00
    rst RST_30                                    ; $4fcc: $f7
    nop                                           ; $4fcd: $00
    rst RST_30                                    ; $4fce: $f7
    nop                                           ; $4fcf: $00
    rst RST_18                                    ; $4fd0: $df
    nop                                           ; $4fd1: $00
    rst RST_18                                    ; $4fd2: $df
    nop                                           ; $4fd3: $00
    nop                                           ; $4fd4: $00
    nop                                           ; $4fd5: $00
    rst RST_18                                    ; $4fd6: $df
    nop                                           ; $4fd7: $00
    rst RST_18                                    ; $4fd8: $df
    nop                                           ; $4fd9: $00
    rst RST_18                                    ; $4fda: $df
    nop                                           ; $4fdb: $00
    rst RST_18                                    ; $4fdc: $df
    nop                                           ; $4fdd: $00
    rst RST_18                                    ; $4fde: $df
    nop                                           ; $4fdf: $00
    ld a, l                                       ; $4fe0: $7d
    nop                                           ; $4fe1: $00
    ld a, l                                       ; $4fe2: $7d
    nop                                           ; $4fe3: $00
    nop                                           ; $4fe4: $00
    nop                                           ; $4fe5: $00
    ld a, l                                       ; $4fe6: $7d
    nop                                           ; $4fe7: $00
    ld a, l                                       ; $4fe8: $7d
    nop                                           ; $4fe9: $00
    ld a, l                                       ; $4fea: $7d
    nop                                           ; $4feb: $00
    ld a, l                                       ; $4fec: $7d
    nop                                           ; $4fed: $00
    ld a, l                                       ; $4fee: $7d
    nop                                           ; $4fef: $00
    db $fc                                        ; $4ff0: $fc
    ld [$08fc], sp                                ; $4ff1: $08 $fc $08
    inc c                                         ; $4ff4: $0c
    ld [$08fc], sp                                ; $4ff5: $08 $fc $08
    db $fc                                        ; $4ff8: $fc
    ld [$08fc], sp                                ; $4ff9: $08 $fc $08
    db $fc                                        ; $4ffc: $fc
    ld [$08fc], sp                                ; $4ffd: $08 $fc $08
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
    jr nz, jr_006_50ae                            ; $504c: $20 $60

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

jr_006_50ae:
    rst RST_18                                    ; $50ae: $df
    nop                                           ; $50af: $00
    rst RST_38                                    ; $50b0: $ff
    rst RST_38                                    ; $50b1: $ff
    ld a, a                                       ; $50b2: $7f
    ld [bc], a                                    ; $50b3: $02
    ld a, a                                       ; $50b4: $7f
    ld [bc], a                                    ; $50b5: $02
    ld a, a                                       ; $50b6: $7f
    ld [bc], a                                    ; $50b7: $02
    ld a, a                                       ; $50b8: $7f
    ld [bc], a                                    ; $50b9: $02
    ld a, a                                       ; $50ba: $7f
    ld [bc], a                                    ; $50bb: $02
    ld [bc], a                                    ; $50bc: $02
    ld [bc], a                                    ; $50bd: $02
    ld a, a                                       ; $50be: $7f
    ld [bc], a                                    ; $50bf: $02
    rst RST_38                                    ; $50c0: $ff
    rst RST_38                                    ; $50c1: $ff
    rst RST_30                                    ; $50c2: $f7
    nop                                           ; $50c3: $00
    rst RST_30                                    ; $50c4: $f7
    nop                                           ; $50c5: $00
    rst RST_30                                    ; $50c6: $f7
    nop                                           ; $50c7: $00
    rst RST_30                                    ; $50c8: $f7
    nop                                           ; $50c9: $00
    rst RST_30                                    ; $50ca: $f7
    nop                                           ; $50cb: $00
    nop                                           ; $50cc: $00
    nop                                           ; $50cd: $00
    rst RST_30                                    ; $50ce: $f7
    nop                                           ; $50cf: $00
    rst RST_38                                    ; $50d0: $ff
    rst RST_38                                    ; $50d1: $ff
    rst RST_18                                    ; $50d2: $df
    nop                                           ; $50d3: $00
    rst RST_18                                    ; $50d4: $df
    nop                                           ; $50d5: $00
    rst RST_18                                    ; $50d6: $df
    nop                                           ; $50d7: $00
    rst RST_18                                    ; $50d8: $df
    nop                                           ; $50d9: $00
    rst RST_18                                    ; $50da: $df
    nop                                           ; $50db: $00
    nop                                           ; $50dc: $00
    nop                                           ; $50dd: $00
    rst RST_18                                    ; $50de: $df
    nop                                           ; $50df: $00
    rst RST_38                                    ; $50e0: $ff
    rst RST_38                                    ; $50e1: $ff
    ld a, l                                       ; $50e2: $7d
    nop                                           ; $50e3: $00
    ld a, l                                       ; $50e4: $7d
    nop                                           ; $50e5: $00
    ld a, l                                       ; $50e6: $7d
    nop                                           ; $50e7: $00
    ld a, l                                       ; $50e8: $7d
    nop                                           ; $50e9: $00
    ld a, l                                       ; $50ea: $7d
    nop                                           ; $50eb: $00
    nop                                           ; $50ec: $00
    nop                                           ; $50ed: $00
    ld a, l                                       ; $50ee: $7d
    nop                                           ; $50ef: $00
    db $fc                                        ; $50f0: $fc
    ld hl, sp-$04                                 ; $50f1: $f8 $fc
    ld [$08fc], sp                                ; $50f3: $08 $fc $08
    db $fc                                        ; $50f6: $fc
    ld [$08fc], sp                                ; $50f7: $08 $fc $08
    db $fc                                        ; $50fa: $fc
    ld [$080c], sp                                ; $50fb: $08 $0c $08
    db $fc                                        ; $50fe: $fc
    ld [$00ff], sp                                ; $50ff: $08 $ff $00
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
    jr nz, jr_006_51aa                            ; $5148: $20 $60

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

jr_006_51aa:
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
    ld [bc], a                                    ; $51b8: $02
    ld [bc], a                                    ; $51b9: $02
    ld a, a                                       ; $51ba: $7f
    ld [bc], a                                    ; $51bb: $02
    ld a, a                                       ; $51bc: $7f
    ld [bc], a                                    ; $51bd: $02
    ld a, a                                       ; $51be: $7f
    ld [bc], a                                    ; $51bf: $02
    rst RST_30                                    ; $51c0: $f7
    nop                                           ; $51c1: $00
    rst RST_30                                    ; $51c2: $f7
    nop                                           ; $51c3: $00
    rst RST_30                                    ; $51c4: $f7
    nop                                           ; $51c5: $00
    rst RST_30                                    ; $51c6: $f7
    nop                                           ; $51c7: $00
    nop                                           ; $51c8: $00
    nop                                           ; $51c9: $00
    rst RST_30                                    ; $51ca: $f7
    nop                                           ; $51cb: $00
    rst RST_30                                    ; $51cc: $f7
    nop                                           ; $51cd: $00
    rst RST_30                                    ; $51ce: $f7
    nop                                           ; $51cf: $00
    rst RST_18                                    ; $51d0: $df
    nop                                           ; $51d1: $00
    rst RST_18                                    ; $51d2: $df
    nop                                           ; $51d3: $00
    rst RST_18                                    ; $51d4: $df
    nop                                           ; $51d5: $00
    rst RST_18                                    ; $51d6: $df
    nop                                           ; $51d7: $00
    nop                                           ; $51d8: $00
    nop                                           ; $51d9: $00
    rst RST_18                                    ; $51da: $df
    nop                                           ; $51db: $00
    rst RST_18                                    ; $51dc: $df
    nop                                           ; $51dd: $00
    rst RST_18                                    ; $51de: $df
    nop                                           ; $51df: $00
    ld a, l                                       ; $51e0: $7d
    nop                                           ; $51e1: $00
    ld a, l                                       ; $51e2: $7d
    nop                                           ; $51e3: $00
    ld a, l                                       ; $51e4: $7d
    nop                                           ; $51e5: $00
    ld a, l                                       ; $51e6: $7d
    nop                                           ; $51e7: $00
    nop                                           ; $51e8: $00
    nop                                           ; $51e9: $00
    ld a, l                                       ; $51ea: $7d
    nop                                           ; $51eb: $00
    ld a, l                                       ; $51ec: $7d
    nop                                           ; $51ed: $00
    ld a, l                                       ; $51ee: $7d
    nop                                           ; $51ef: $00
    db $fc                                        ; $51f0: $fc
    ld [$08fc], sp                                ; $51f1: $08 $fc $08
    db $fc                                        ; $51f4: $fc
    ld [$08fc], sp                                ; $51f5: $08 $fc $08
    inc c                                         ; $51f8: $0c
    ld [$08fc], sp                                ; $51f9: $08 $fc $08
    db $fc                                        ; $51fc: $fc
    ld [$08fc], sp                                ; $51fd: $08 $fc $08
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
    jr nz, jr_006_52a6                            ; $5244: $20 $60

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

jr_006_52a6:
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
    ld [bc], a                                    ; $52b4: $02
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
    rst RST_30                                    ; $52c0: $f7
    nop                                           ; $52c1: $00
    rst RST_30                                    ; $52c2: $f7
    nop                                           ; $52c3: $00
    nop                                           ; $52c4: $00
    nop                                           ; $52c5: $00
    rst RST_30                                    ; $52c6: $f7
    nop                                           ; $52c7: $00
    rst RST_30                                    ; $52c8: $f7
    nop                                           ; $52c9: $00
    rst RST_30                                    ; $52ca: $f7
    nop                                           ; $52cb: $00
    rst RST_30                                    ; $52cc: $f7
    nop                                           ; $52cd: $00
    rst RST_30                                    ; $52ce: $f7
    nop                                           ; $52cf: $00
    rst RST_18                                    ; $52d0: $df
    nop                                           ; $52d1: $00
    rst RST_18                                    ; $52d2: $df
    nop                                           ; $52d3: $00
    nop                                           ; $52d4: $00
    nop                                           ; $52d5: $00
    rst RST_18                                    ; $52d6: $df
    nop                                           ; $52d7: $00
    rst RST_18                                    ; $52d8: $df
    nop                                           ; $52d9: $00
    rst RST_18                                    ; $52da: $df
    nop                                           ; $52db: $00
    rst RST_18                                    ; $52dc: $df
    nop                                           ; $52dd: $00
    rst RST_18                                    ; $52de: $df
    nop                                           ; $52df: $00
    ld a, l                                       ; $52e0: $7d
    nop                                           ; $52e1: $00
    ld a, l                                       ; $52e2: $7d
    nop                                           ; $52e3: $00
    nop                                           ; $52e4: $00
    nop                                           ; $52e5: $00
    ld a, l                                       ; $52e6: $7d
    nop                                           ; $52e7: $00
    ld a, l                                       ; $52e8: $7d
    nop                                           ; $52e9: $00
    ld a, l                                       ; $52ea: $7d
    nop                                           ; $52eb: $00
    ld a, l                                       ; $52ec: $7d
    nop                                           ; $52ed: $00
    ld a, l                                       ; $52ee: $7d
    nop                                           ; $52ef: $00
    db $fc                                        ; $52f0: $fc
    ld [$08fc], sp                                ; $52f1: $08 $fc $08
    inc c                                         ; $52f4: $0c
    ld [$08fc], sp                                ; $52f5: $08 $fc $08
    db $fc                                        ; $52f8: $fc
    ld [$08fc], sp                                ; $52f9: $08 $fc $08
    db $fc                                        ; $52fc: $fc
    ld [$08fc], sp                                ; $52fd: $08 $fc $08
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
    rst RST_38                                    ; $530c: $ff
    nop                                           ; $530d: $00
    rst RST_38                                    ; $530e: $ff
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
    rst RST_38                                    ; $531c: $ff
    nop                                           ; $531d: $00
    rst RST_38                                    ; $531e: $ff
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
    rst RST_38                                    ; $532c: $ff
    nop                                           ; $532d: $00
    rst RST_38                                    ; $532e: $ff
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
    db $fc                                        ; $533c: $fc
    nop                                           ; $533d: $00
    cp $00                                        ; $533e: $fe $00
    jr nz, jr_006_53a2                            ; $5340: $20 $60

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
    ccf                                           ; $534e: $3f
    ld h, b                                       ; $534f: $60
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
    ld a, l                                       ; $535e: $7d
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
    rst RST_30                                    ; $536e: $f7
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
    rst RST_18                                    ; $537e: $df
    nop                                           ; $537f: $00
    add b                                         ; $5380: $80
    add b                                         ; $5381: $80
    db $fd                                        ; $5382: $fd
    add b                                         ; $5383: $80
    db $fd                                        ; $5384: $fd
    add b                                         ; $5385: $80
    db $fd                                        ; $5386: $fd
    add b                                         ; $5387: $80
    db $fd                                        ; $5388: $fd
    add b                                         ; $5389: $80
    db $fd                                        ; $538a: $fd
    add b                                         ; $538b: $80
    rst RST_38                                    ; $538c: $ff
    rst RST_38                                    ; $538d: $ff
    db $fd                                        ; $538e: $fd
    add b                                         ; $538f: $80
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
    rst RST_30                                    ; $539e: $f7
    nop                                           ; $539f: $00
    nop                                           ; $53a0: $00
    nop                                           ; $53a1: $00

jr_006_53a2:
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
    rst RST_18                                    ; $53ae: $df
    nop                                           ; $53af: $00
    ld [bc], a                                    ; $53b0: $02
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
    rst RST_38                                    ; $53bd: $ff
    ld a, a                                       ; $53be: $7f
    ld [bc], a                                    ; $53bf: $02
    nop                                           ; $53c0: $00
    nop                                           ; $53c1: $00
    rst RST_30                                    ; $53c2: $f7
    nop                                           ; $53c3: $00
    rst RST_30                                    ; $53c4: $f7
    nop                                           ; $53c5: $00
    rst RST_30                                    ; $53c6: $f7
    nop                                           ; $53c7: $00
    rst RST_30                                    ; $53c8: $f7
    nop                                           ; $53c9: $00
    rst RST_30                                    ; $53ca: $f7
    nop                                           ; $53cb: $00
    rst RST_38                                    ; $53cc: $ff
    rst RST_38                                    ; $53cd: $ff
    rst RST_30                                    ; $53ce: $f7
    nop                                           ; $53cf: $00
    nop                                           ; $53d0: $00
    nop                                           ; $53d1: $00
    rst RST_18                                    ; $53d2: $df
    nop                                           ; $53d3: $00
    rst RST_18                                    ; $53d4: $df
    nop                                           ; $53d5: $00
    rst RST_18                                    ; $53d6: $df
    nop                                           ; $53d7: $00
    rst RST_18                                    ; $53d8: $df
    nop                                           ; $53d9: $00
    rst RST_18                                    ; $53da: $df
    nop                                           ; $53db: $00
    rst RST_38                                    ; $53dc: $ff
    rst RST_38                                    ; $53dd: $ff
    rst RST_18                                    ; $53de: $df
    nop                                           ; $53df: $00
    nop                                           ; $53e0: $00
    nop                                           ; $53e1: $00
    ld a, l                                       ; $53e2: $7d
    nop                                           ; $53e3: $00
    ld a, l                                       ; $53e4: $7d
    nop                                           ; $53e5: $00
    ld a, l                                       ; $53e6: $7d
    nop                                           ; $53e7: $00
    ld a, l                                       ; $53e8: $7d
    nop                                           ; $53e9: $00
    ld a, l                                       ; $53ea: $7d
    nop                                           ; $53eb: $00
    rst RST_38                                    ; $53ec: $ff
    rst RST_38                                    ; $53ed: $ff
    ld a, l                                       ; $53ee: $7d
    nop                                           ; $53ef: $00
    inc c                                         ; $53f0: $0c
    ld [$08fc], sp                                ; $53f1: $08 $fc $08
    db $fc                                        ; $53f4: $fc
    ld [$08fc], sp                                ; $53f5: $08 $fc $08
    db $fc                                        ; $53f8: $fc
    ld [$08fc], sp                                ; $53f9: $08 $fc $08
    db $fc                                        ; $53fc: $fc
    ld hl, sp-$04                                 ; $53fd: $f8 $fc
    ld [$00ff], sp                                ; $53ff: $08 $ff $00
    rst RST_38                                    ; $5402: $ff
    nop                                           ; $5403: $00
    rst RST_38                                    ; $5404: $ff
    nop                                           ; $5405: $00
    rst RST_38                                    ; $5406: $ff
    nop                                           ; $5407: $00
    nop                                           ; $5408: $00
    nop                                           ; $5409: $00
    nop                                           ; $540a: $00
    nop                                           ; $540b: $00
    nop                                           ; $540c: $00
    nop                                           ; $540d: $00
    nop                                           ; $540e: $00
    nop                                           ; $540f: $00
    rst RST_38                                    ; $5410: $ff
    nop                                           ; $5411: $00
    rst RST_38                                    ; $5412: $ff
    nop                                           ; $5413: $00
    rst RST_38                                    ; $5414: $ff
    nop                                           ; $5415: $00
    rst RST_38                                    ; $5416: $ff
    nop                                           ; $5417: $00
    nop                                           ; $5418: $00
    nop                                           ; $5419: $00
    nop                                           ; $541a: $00
    nop                                           ; $541b: $00
    nop                                           ; $541c: $00
    nop                                           ; $541d: $00
    nop                                           ; $541e: $00
    nop                                           ; $541f: $00
    rst RST_38                                    ; $5420: $ff
    nop                                           ; $5421: $00
    rst RST_38                                    ; $5422: $ff
    nop                                           ; $5423: $00
    rst RST_38                                    ; $5424: $ff
    nop                                           ; $5425: $00
    rst RST_38                                    ; $5426: $ff
    nop                                           ; $5427: $00
    nop                                           ; $5428: $00
    nop                                           ; $5429: $00
    nop                                           ; $542a: $00
    nop                                           ; $542b: $00
    nop                                           ; $542c: $00
    nop                                           ; $542d: $00
    nop                                           ; $542e: $00
    nop                                           ; $542f: $00
    rst RST_38                                    ; $5430: $ff
    nop                                           ; $5431: $00
    rst RST_38                                    ; $5432: $ff
    nop                                           ; $5433: $00
    cp $00                                        ; $5434: $fe $00
    db $fc                                        ; $5436: $fc
    nop                                           ; $5437: $00
    nop                                           ; $5438: $00
    nop                                           ; $5439: $00
    ld [bc], a                                    ; $543a: $02
    nop                                           ; $543b: $00
    inc bc                                        ; $543c: $03
    nop                                           ; $543d: $00
    inc bc                                        ; $543e: $03
    nop                                           ; $543f: $00
    ccf                                           ; $5440: $3f
    ld h, b                                       ; $5441: $60
    ccf                                           ; $5442: $3f
    ld h, b                                       ; $5443: $60
    ccf                                           ; $5444: $3f
    ld h, b                                       ; $5445: $60
    ccf                                           ; $5446: $3f
    ld h, b                                       ; $5447: $60
    jr nz, jr_006_54aa                            ; $5448: $20 $60

    ccf                                           ; $544a: $3f
    ld h, b                                       ; $544b: $60
    ccf                                           ; $544c: $3f
    ld h, b                                       ; $544d: $60
    ccf                                           ; $544e: $3f
    ld h, b                                       ; $544f: $60
    ld a, l                                       ; $5450: $7d
    nop                                           ; $5451: $00
    ld a, l                                       ; $5452: $7d
    nop                                           ; $5453: $00
    ld a, l                                       ; $5454: $7d
    nop                                           ; $5455: $00
    ld a, l                                       ; $5456: $7d
    nop                                           ; $5457: $00
    nop                                           ; $5458: $00
    nop                                           ; $5459: $00
    ld a, l                                       ; $545a: $7d
    nop                                           ; $545b: $00
    ld a, l                                       ; $545c: $7d
    nop                                           ; $545d: $00
    ld a, l                                       ; $545e: $7d
    nop                                           ; $545f: $00
    rst RST_30                                    ; $5460: $f7
    nop                                           ; $5461: $00
    rst RST_30                                    ; $5462: $f7
    nop                                           ; $5463: $00
    rst RST_30                                    ; $5464: $f7
    nop                                           ; $5465: $00
    rst RST_30                                    ; $5466: $f7
    nop                                           ; $5467: $00
    nop                                           ; $5468: $00
    nop                                           ; $5469: $00
    rst RST_30                                    ; $546a: $f7
    nop                                           ; $546b: $00
    rst RST_30                                    ; $546c: $f7
    nop                                           ; $546d: $00
    rst RST_30                                    ; $546e: $f7
    nop                                           ; $546f: $00
    rst RST_18                                    ; $5470: $df
    nop                                           ; $5471: $00
    rst RST_18                                    ; $5472: $df
    nop                                           ; $5473: $00
    rst RST_18                                    ; $5474: $df
    nop                                           ; $5475: $00
    rst RST_18                                    ; $5476: $df
    nop                                           ; $5477: $00
    nop                                           ; $5478: $00
    nop                                           ; $5479: $00
    rst RST_18                                    ; $547a: $df
    nop                                           ; $547b: $00
    rst RST_18                                    ; $547c: $df
    nop                                           ; $547d: $00
    rst RST_18                                    ; $547e: $df
    nop                                           ; $547f: $00
    db $fd                                        ; $5480: $fd
    add b                                         ; $5481: $80
    db $fd                                        ; $5482: $fd
    add b                                         ; $5483: $80
    db $fd                                        ; $5484: $fd
    add b                                         ; $5485: $80
    db $fd                                        ; $5486: $fd
    add b                                         ; $5487: $80
    add b                                         ; $5488: $80
    add b                                         ; $5489: $80
    db $fd                                        ; $548a: $fd
    add b                                         ; $548b: $80
    db $fd                                        ; $548c: $fd
    add b                                         ; $548d: $80
    db $fd                                        ; $548e: $fd
    add b                                         ; $548f: $80
    rst RST_30                                    ; $5490: $f7
    nop                                           ; $5491: $00
    rst RST_30                                    ; $5492: $f7
    nop                                           ; $5493: $00
    rst RST_30                                    ; $5494: $f7
    nop                                           ; $5495: $00
    rst RST_30                                    ; $5496: $f7
    nop                                           ; $5497: $00
    nop                                           ; $5498: $00
    nop                                           ; $5499: $00
    rst RST_30                                    ; $549a: $f7
    nop                                           ; $549b: $00
    rst RST_30                                    ; $549c: $f7
    nop                                           ; $549d: $00
    rst RST_30                                    ; $549e: $f7
    nop                                           ; $549f: $00
    rst RST_18                                    ; $54a0: $df
    nop                                           ; $54a1: $00
    rst RST_18                                    ; $54a2: $df
    nop                                           ; $54a3: $00
    rst RST_18                                    ; $54a4: $df
    nop                                           ; $54a5: $00
    rst RST_18                                    ; $54a6: $df
    nop                                           ; $54a7: $00
    nop                                           ; $54a8: $00
    nop                                           ; $54a9: $00

jr_006_54aa:
    rst RST_18                                    ; $54aa: $df
    nop                                           ; $54ab: $00
    rst RST_18                                    ; $54ac: $df
    nop                                           ; $54ad: $00
    rst RST_18                                    ; $54ae: $df
    nop                                           ; $54af: $00
    ld a, a                                       ; $54b0: $7f
    ld [bc], a                                    ; $54b1: $02
    ld a, a                                       ; $54b2: $7f
    ld [bc], a                                    ; $54b3: $02
    ld a, a                                       ; $54b4: $7f
    ld [bc], a                                    ; $54b5: $02
    ld a, a                                       ; $54b6: $7f
    ld [bc], a                                    ; $54b7: $02
    ld [bc], a                                    ; $54b8: $02
    ld [bc], a                                    ; $54b9: $02
    ld a, a                                       ; $54ba: $7f
    ld [bc], a                                    ; $54bb: $02
    ld a, a                                       ; $54bc: $7f
    ld [bc], a                                    ; $54bd: $02
    ld a, a                                       ; $54be: $7f
    ld [bc], a                                    ; $54bf: $02
    rst RST_30                                    ; $54c0: $f7
    nop                                           ; $54c1: $00
    rst RST_30                                    ; $54c2: $f7
    nop                                           ; $54c3: $00
    rst RST_30                                    ; $54c4: $f7
    nop                                           ; $54c5: $00
    rst RST_30                                    ; $54c6: $f7
    nop                                           ; $54c7: $00
    nop                                           ; $54c8: $00
    nop                                           ; $54c9: $00
    rst RST_30                                    ; $54ca: $f7
    nop                                           ; $54cb: $00
    rst RST_30                                    ; $54cc: $f7
    nop                                           ; $54cd: $00
    rst RST_30                                    ; $54ce: $f7
    nop                                           ; $54cf: $00
    rst RST_18                                    ; $54d0: $df
    nop                                           ; $54d1: $00
    rst RST_18                                    ; $54d2: $df
    nop                                           ; $54d3: $00
    rst RST_18                                    ; $54d4: $df
    nop                                           ; $54d5: $00
    rst RST_18                                    ; $54d6: $df
    nop                                           ; $54d7: $00
    nop                                           ; $54d8: $00
    nop                                           ; $54d9: $00
    rst RST_18                                    ; $54da: $df
    nop                                           ; $54db: $00
    rst RST_18                                    ; $54dc: $df
    nop                                           ; $54dd: $00
    rst RST_18                                    ; $54de: $df
    nop                                           ; $54df: $00
    ld a, l                                       ; $54e0: $7d
    nop                                           ; $54e1: $00
    ld a, l                                       ; $54e2: $7d
    nop                                           ; $54e3: $00
    ld a, l                                       ; $54e4: $7d
    nop                                           ; $54e5: $00
    ld a, l                                       ; $54e6: $7d
    nop                                           ; $54e7: $00
    nop                                           ; $54e8: $00
    nop                                           ; $54e9: $00
    ld a, l                                       ; $54ea: $7d
    nop                                           ; $54eb: $00
    ld a, l                                       ; $54ec: $7d
    nop                                           ; $54ed: $00
    ld a, l                                       ; $54ee: $7d
    nop                                           ; $54ef: $00
    db $fc                                        ; $54f0: $fc
    ld [$08fc], sp                                ; $54f1: $08 $fc $08
    db $fc                                        ; $54f4: $fc
    ld [$08fc], sp                                ; $54f5: $08 $fc $08
    inc c                                         ; $54f8: $0c
    ld [$08fc], sp                                ; $54f9: $08 $fc $08
    db $fc                                        ; $54fc: $fc
    ld [$08fc], sp                                ; $54fd: $08 $fc $08
    nop                                           ; $5500: $00
    nop                                           ; $5501: $00
    nop                                           ; $5502: $00
    nop                                           ; $5503: $00
    rst RST_38                                    ; $5504: $ff
    nop                                           ; $5505: $00
    rst RST_38                                    ; $5506: $ff
    nop                                           ; $5507: $00
    rst RST_38                                    ; $5508: $ff
    nop                                           ; $5509: $00
    rst RST_38                                    ; $550a: $ff
    nop                                           ; $550b: $00
    rst RST_38                                    ; $550c: $ff
    nop                                           ; $550d: $00
    rst RST_38                                    ; $550e: $ff
    nop                                           ; $550f: $00
    nop                                           ; $5510: $00
    nop                                           ; $5511: $00
    nop                                           ; $5512: $00
    nop                                           ; $5513: $00
    rst RST_38                                    ; $5514: $ff
    nop                                           ; $5515: $00
    rst RST_38                                    ; $5516: $ff
    nop                                           ; $5517: $00
    rst RST_38                                    ; $5518: $ff
    nop                                           ; $5519: $00
    rst RST_38                                    ; $551a: $ff
    nop                                           ; $551b: $00
    rst RST_38                                    ; $551c: $ff
    nop                                           ; $551d: $00
    rst RST_38                                    ; $551e: $ff
    nop                                           ; $551f: $00
    nop                                           ; $5520: $00
    nop                                           ; $5521: $00
    nop                                           ; $5522: $00
    nop                                           ; $5523: $00
    rst RST_38                                    ; $5524: $ff
    nop                                           ; $5525: $00
    rst RST_38                                    ; $5526: $ff
    nop                                           ; $5527: $00
    rst RST_38                                    ; $5528: $ff
    nop                                           ; $5529: $00
    rst RST_38                                    ; $552a: $ff
    nop                                           ; $552b: $00
    rst RST_38                                    ; $552c: $ff
    nop                                           ; $552d: $00
    rst RST_38                                    ; $552e: $ff
    nop                                           ; $552f: $00
    ld [bc], a                                    ; $5530: $02
    nop                                           ; $5531: $00
    nop                                           ; $5532: $00
    nop                                           ; $5533: $00
    db $fc                                        ; $5534: $fc
    nop                                           ; $5535: $00
    cp $00                                        ; $5536: $fe $00
    rst RST_38                                    ; $5538: $ff
    nop                                           ; $5539: $00
    rst RST_38                                    ; $553a: $ff
    nop                                           ; $553b: $00
    cp $00                                        ; $553c: $fe $00
    db $fc                                        ; $553e: $fc
    nop                                           ; $553f: $00
    ccf                                           ; $5540: $3f
    ld h, b                                       ; $5541: $60
    ccf                                           ; $5542: $3f
    ld h, b                                       ; $5543: $60
    jr nz, jr_006_55a6                            ; $5544: $20 $60

    ccf                                           ; $5546: $3f
    ld h, b                                       ; $5547: $60
    ccf                                           ; $5548: $3f
    ld h, b                                       ; $5549: $60
    ccf                                           ; $554a: $3f
    ld h, b                                       ; $554b: $60
    ccf                                           ; $554c: $3f
    ld h, b                                       ; $554d: $60
    ccf                                           ; $554e: $3f
    ld h, b                                       ; $554f: $60
    ld a, l                                       ; $5550: $7d
    nop                                           ; $5551: $00
    ld a, l                                       ; $5552: $7d
    nop                                           ; $5553: $00
    nop                                           ; $5554: $00
    nop                                           ; $5555: $00
    ld a, l                                       ; $5556: $7d
    nop                                           ; $5557: $00
    ld a, l                                       ; $5558: $7d
    nop                                           ; $5559: $00
    ld a, l                                       ; $555a: $7d
    nop                                           ; $555b: $00
    ld a, l                                       ; $555c: $7d
    nop                                           ; $555d: $00
    ld a, l                                       ; $555e: $7d
    nop                                           ; $555f: $00
    rst RST_30                                    ; $5560: $f7
    nop                                           ; $5561: $00
    rst RST_30                                    ; $5562: $f7
    nop                                           ; $5563: $00
    nop                                           ; $5564: $00
    nop                                           ; $5565: $00
    rst RST_30                                    ; $5566: $f7
    nop                                           ; $5567: $00
    rst RST_30                                    ; $5568: $f7
    nop                                           ; $5569: $00
    rst RST_30                                    ; $556a: $f7
    nop                                           ; $556b: $00
    rst RST_30                                    ; $556c: $f7
    nop                                           ; $556d: $00
    rst RST_30                                    ; $556e: $f7
    nop                                           ; $556f: $00
    rst RST_18                                    ; $5570: $df
    nop                                           ; $5571: $00
    rst RST_18                                    ; $5572: $df
    nop                                           ; $5573: $00
    nop                                           ; $5574: $00
    nop                                           ; $5575: $00
    rst RST_18                                    ; $5576: $df
    nop                                           ; $5577: $00
    rst RST_18                                    ; $5578: $df
    nop                                           ; $5579: $00
    rst RST_18                                    ; $557a: $df
    nop                                           ; $557b: $00
    rst RST_18                                    ; $557c: $df
    nop                                           ; $557d: $00
    rst RST_18                                    ; $557e: $df
    nop                                           ; $557f: $00
    db $fd                                        ; $5580: $fd
    add b                                         ; $5581: $80
    db $fd                                        ; $5582: $fd
    add b                                         ; $5583: $80
    add b                                         ; $5584: $80
    add b                                         ; $5585: $80
    db $fd                                        ; $5586: $fd
    add b                                         ; $5587: $80
    db $fd                                        ; $5588: $fd
    add b                                         ; $5589: $80
    db $fd                                        ; $558a: $fd
    add b                                         ; $558b: $80
    db $fd                                        ; $558c: $fd
    add b                                         ; $558d: $80
    db $fd                                        ; $558e: $fd
    add b                                         ; $558f: $80
    rst RST_30                                    ; $5590: $f7
    nop                                           ; $5591: $00
    rst RST_30                                    ; $5592: $f7
    nop                                           ; $5593: $00
    nop                                           ; $5594: $00
    nop                                           ; $5595: $00
    rst RST_30                                    ; $5596: $f7
    nop                                           ; $5597: $00
    rst RST_30                                    ; $5598: $f7
    nop                                           ; $5599: $00
    rst RST_30                                    ; $559a: $f7
    nop                                           ; $559b: $00
    rst RST_30                                    ; $559c: $f7
    nop                                           ; $559d: $00
    rst RST_30                                    ; $559e: $f7
    nop                                           ; $559f: $00
    rst RST_18                                    ; $55a0: $df
    nop                                           ; $55a1: $00
    rst RST_18                                    ; $55a2: $df
    nop                                           ; $55a3: $00
    nop                                           ; $55a4: $00
    nop                                           ; $55a5: $00

jr_006_55a6:
    rst RST_18                                    ; $55a6: $df
    nop                                           ; $55a7: $00
    rst RST_18                                    ; $55a8: $df
    nop                                           ; $55a9: $00
    rst RST_18                                    ; $55aa: $df
    nop                                           ; $55ab: $00
    rst RST_18                                    ; $55ac: $df
    nop                                           ; $55ad: $00
    rst RST_18                                    ; $55ae: $df
    nop                                           ; $55af: $00
    ld a, a                                       ; $55b0: $7f
    ld [bc], a                                    ; $55b1: $02
    ld a, a                                       ; $55b2: $7f
    ld [bc], a                                    ; $55b3: $02
    ld [bc], a                                    ; $55b4: $02
    ld [bc], a                                    ; $55b5: $02
    ld a, a                                       ; $55b6: $7f
    ld [bc], a                                    ; $55b7: $02
    ld a, a                                       ; $55b8: $7f
    ld [bc], a                                    ; $55b9: $02
    ld a, a                                       ; $55ba: $7f
    ld [bc], a                                    ; $55bb: $02
    ld a, a                                       ; $55bc: $7f
    ld [bc], a                                    ; $55bd: $02
    ld a, a                                       ; $55be: $7f
    ld [bc], a                                    ; $55bf: $02
    rst RST_30                                    ; $55c0: $f7
    nop                                           ; $55c1: $00
    rst RST_30                                    ; $55c2: $f7
    nop                                           ; $55c3: $00
    nop                                           ; $55c4: $00
    nop                                           ; $55c5: $00
    rst RST_30                                    ; $55c6: $f7
    nop                                           ; $55c7: $00
    rst RST_30                                    ; $55c8: $f7
    nop                                           ; $55c9: $00
    rst RST_30                                    ; $55ca: $f7
    nop                                           ; $55cb: $00
    rst RST_30                                    ; $55cc: $f7
    nop                                           ; $55cd: $00
    rst RST_30                                    ; $55ce: $f7
    nop                                           ; $55cf: $00
    rst RST_18                                    ; $55d0: $df
    nop                                           ; $55d1: $00
    rst RST_18                                    ; $55d2: $df
    nop                                           ; $55d3: $00
    nop                                           ; $55d4: $00
    nop                                           ; $55d5: $00
    rst RST_18                                    ; $55d6: $df
    nop                                           ; $55d7: $00
    rst RST_18                                    ; $55d8: $df
    nop                                           ; $55d9: $00
    rst RST_18                                    ; $55da: $df
    nop                                           ; $55db: $00
    rst RST_18                                    ; $55dc: $df
    nop                                           ; $55dd: $00
    rst RST_18                                    ; $55de: $df
    nop                                           ; $55df: $00
    ld a, l                                       ; $55e0: $7d
    nop                                           ; $55e1: $00
    ld a, l                                       ; $55e2: $7d
    nop                                           ; $55e3: $00
    nop                                           ; $55e4: $00
    nop                                           ; $55e5: $00
    ld a, l                                       ; $55e6: $7d
    nop                                           ; $55e7: $00
    ld a, l                                       ; $55e8: $7d
    nop                                           ; $55e9: $00
    ld a, l                                       ; $55ea: $7d
    nop                                           ; $55eb: $00
    ld a, l                                       ; $55ec: $7d
    nop                                           ; $55ed: $00
    ld a, l                                       ; $55ee: $7d
    nop                                           ; $55ef: $00
    db $fc                                        ; $55f0: $fc
    ld [$08fc], sp                                ; $55f1: $08 $fc $08
    inc c                                         ; $55f4: $0c
    ld [$08fc], sp                                ; $55f5: $08 $fc $08
    db $fc                                        ; $55f8: $fc
    ld [$08fc], sp                                ; $55f9: $08 $fc $08
    db $fc                                        ; $55fc: $fc
    ld [$08fc], sp                                ; $55fd: $08 $fc $08
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
    rst RST_38                                    ; $560c: $ff
    nop                                           ; $560d: $00
    rst RST_38                                    ; $560e: $ff
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
    rst RST_38                                    ; $561c: $ff
    nop                                           ; $561d: $00
    rst RST_38                                    ; $561e: $ff
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
    rst RST_38                                    ; $562c: $ff
    nop                                           ; $562d: $00
    rst RST_38                                    ; $562e: $ff
    nop                                           ; $562f: $00
    nop                                           ; $5630: $00
    nop                                           ; $5631: $00
    ld [bc], a                                    ; $5632: $02
    nop                                           ; $5633: $00
    inc bc                                        ; $5634: $03
    nop                                           ; $5635: $00
    inc bc                                        ; $5636: $03
    nop                                           ; $5637: $00
    ld [bc], a                                    ; $5638: $02
    nop                                           ; $5639: $00
    nop                                           ; $563a: $00
    nop                                           ; $563b: $00
    db $fc                                        ; $563c: $fc
    nop                                           ; $563d: $00
    cp $00                                        ; $563e: $fe $00
    jr nz, jr_006_56a2                            ; $5640: $20 $60

    ccf                                           ; $5642: $3f
    ld h, b                                       ; $5643: $60
    ccf                                           ; $5644: $3f
    ld h, b                                       ; $5645: $60
    ccf                                           ; $5646: $3f
    ld h, b                                       ; $5647: $60
    ccf                                           ; $5648: $3f
    ld h, b                                       ; $5649: $60
    ccf                                           ; $564a: $3f
    ld h, b                                       ; $564b: $60
    jr nz, jr_006_56ae                            ; $564c: $20 $60

    ccf                                           ; $564e: $3f
    ld h, b                                       ; $564f: $60
    nop                                           ; $5650: $00
    nop                                           ; $5651: $00
    ld a, l                                       ; $5652: $7d
    nop                                           ; $5653: $00
    ld a, l                                       ; $5654: $7d
    nop                                           ; $5655: $00
    ld a, l                                       ; $5656: $7d
    nop                                           ; $5657: $00
    ld a, l                                       ; $5658: $7d
    nop                                           ; $5659: $00
    ld a, l                                       ; $565a: $7d
    nop                                           ; $565b: $00
    nop                                           ; $565c: $00
    nop                                           ; $565d: $00
    ld a, l                                       ; $565e: $7d
    nop                                           ; $565f: $00
    nop                                           ; $5660: $00
    nop                                           ; $5661: $00
    rst RST_30                                    ; $5662: $f7
    nop                                           ; $5663: $00
    rst RST_30                                    ; $5664: $f7
    nop                                           ; $5665: $00
    rst RST_30                                    ; $5666: $f7
    nop                                           ; $5667: $00
    rst RST_30                                    ; $5668: $f7
    nop                                           ; $5669: $00
    rst RST_30                                    ; $566a: $f7
    nop                                           ; $566b: $00
    nop                                           ; $566c: $00
    nop                                           ; $566d: $00
    rst RST_30                                    ; $566e: $f7
    nop                                           ; $566f: $00
    nop                                           ; $5670: $00
    nop                                           ; $5671: $00
    rst RST_18                                    ; $5672: $df
    nop                                           ; $5673: $00
    rst RST_18                                    ; $5674: $df
    nop                                           ; $5675: $00
    rst RST_18                                    ; $5676: $df
    nop                                           ; $5677: $00
    rst RST_18                                    ; $5678: $df
    nop                                           ; $5679: $00
    rst RST_18                                    ; $567a: $df
    nop                                           ; $567b: $00
    nop                                           ; $567c: $00
    nop                                           ; $567d: $00
    rst RST_18                                    ; $567e: $df
    nop                                           ; $567f: $00
    add b                                         ; $5680: $80
    add b                                         ; $5681: $80
    db $fd                                        ; $5682: $fd
    add b                                         ; $5683: $80
    db $fd                                        ; $5684: $fd
    add b                                         ; $5685: $80
    db $fd                                        ; $5686: $fd
    add b                                         ; $5687: $80
    db $fd                                        ; $5688: $fd
    add b                                         ; $5689: $80
    db $fd                                        ; $568a: $fd
    add b                                         ; $568b: $80
    add b                                         ; $568c: $80
    add b                                         ; $568d: $80
    db $fd                                        ; $568e: $fd
    add b                                         ; $568f: $80
    nop                                           ; $5690: $00
    nop                                           ; $5691: $00
    rst RST_30                                    ; $5692: $f7
    nop                                           ; $5693: $00
    rst RST_30                                    ; $5694: $f7
    nop                                           ; $5695: $00
    rst RST_30                                    ; $5696: $f7
    nop                                           ; $5697: $00
    rst RST_30                                    ; $5698: $f7
    nop                                           ; $5699: $00
    rst RST_30                                    ; $569a: $f7
    nop                                           ; $569b: $00
    nop                                           ; $569c: $00
    nop                                           ; $569d: $00
    rst RST_30                                    ; $569e: $f7
    nop                                           ; $569f: $00
    nop                                           ; $56a0: $00
    nop                                           ; $56a1: $00

jr_006_56a2:
    rst RST_18                                    ; $56a2: $df
    nop                                           ; $56a3: $00
    rst RST_18                                    ; $56a4: $df
    nop                                           ; $56a5: $00
    rst RST_18                                    ; $56a6: $df
    nop                                           ; $56a7: $00
    rst RST_18                                    ; $56a8: $df
    nop                                           ; $56a9: $00
    rst RST_18                                    ; $56aa: $df
    nop                                           ; $56ab: $00
    nop                                           ; $56ac: $00
    nop                                           ; $56ad: $00

jr_006_56ae:
    rst RST_18                                    ; $56ae: $df
    nop                                           ; $56af: $00
    ld [bc], a                                    ; $56b0: $02
    ld [bc], a                                    ; $56b1: $02
    ld a, a                                       ; $56b2: $7f
    ld [bc], a                                    ; $56b3: $02
    ld a, a                                       ; $56b4: $7f
    ld [bc], a                                    ; $56b5: $02
    ld a, a                                       ; $56b6: $7f
    ld [bc], a                                    ; $56b7: $02
    ld a, a                                       ; $56b8: $7f
    ld [bc], a                                    ; $56b9: $02
    ld a, a                                       ; $56ba: $7f
    ld [bc], a                                    ; $56bb: $02
    ld [bc], a                                    ; $56bc: $02
    ld [bc], a                                    ; $56bd: $02
    ld a, a                                       ; $56be: $7f
    ld [bc], a                                    ; $56bf: $02
    nop                                           ; $56c0: $00
    nop                                           ; $56c1: $00
    rst RST_30                                    ; $56c2: $f7
    nop                                           ; $56c3: $00
    rst RST_30                                    ; $56c4: $f7
    nop                                           ; $56c5: $00
    rst RST_30                                    ; $56c6: $f7
    nop                                           ; $56c7: $00
    rst RST_30                                    ; $56c8: $f7
    nop                                           ; $56c9: $00
    rst RST_30                                    ; $56ca: $f7
    nop                                           ; $56cb: $00
    nop                                           ; $56cc: $00
    nop                                           ; $56cd: $00
    rst RST_30                                    ; $56ce: $f7
    nop                                           ; $56cf: $00
    nop                                           ; $56d0: $00
    nop                                           ; $56d1: $00
    rst RST_18                                    ; $56d2: $df
    nop                                           ; $56d3: $00
    rst RST_18                                    ; $56d4: $df
    nop                                           ; $56d5: $00
    rst RST_18                                    ; $56d6: $df
    nop                                           ; $56d7: $00
    rst RST_18                                    ; $56d8: $df
    nop                                           ; $56d9: $00
    rst RST_18                                    ; $56da: $df
    nop                                           ; $56db: $00
    nop                                           ; $56dc: $00
    nop                                           ; $56dd: $00
    rst RST_18                                    ; $56de: $df
    nop                                           ; $56df: $00
    nop                                           ; $56e0: $00
    nop                                           ; $56e1: $00
    ld a, l                                       ; $56e2: $7d
    nop                                           ; $56e3: $00
    ld a, l                                       ; $56e4: $7d
    nop                                           ; $56e5: $00
    ld a, l                                       ; $56e6: $7d
    nop                                           ; $56e7: $00
    ld a, l                                       ; $56e8: $7d
    nop                                           ; $56e9: $00
    ld a, l                                       ; $56ea: $7d
    nop                                           ; $56eb: $00
    nop                                           ; $56ec: $00
    nop                                           ; $56ed: $00
    ld a, l                                       ; $56ee: $7d
    nop                                           ; $56ef: $00
    inc c                                         ; $56f0: $0c
    ld [$08fc], sp                                ; $56f1: $08 $fc $08
    db $fc                                        ; $56f4: $fc
    ld [$08fc], sp                                ; $56f5: $08 $fc $08
    db $fc                                        ; $56f8: $fc
    ld [$08fc], sp                                ; $56f9: $08 $fc $08
    inc c                                         ; $56fc: $0c
    ld [$08fc], sp                                ; $56fd: $08 $fc $08
    rst RST_38                                    ; $5700: $ff
    nop                                           ; $5701: $00
    rst RST_38                                    ; $5702: $ff
    nop                                           ; $5703: $00
    rst RST_38                                    ; $5704: $ff
    nop                                           ; $5705: $00
    rst RST_38                                    ; $5706: $ff
    nop                                           ; $5707: $00
    nop                                           ; $5708: $00
    nop                                           ; $5709: $00
    nop                                           ; $570a: $00
    nop                                           ; $570b: $00
    nop                                           ; $570c: $00
    nop                                           ; $570d: $00
    nop                                           ; $570e: $00
    nop                                           ; $570f: $00
    rst RST_38                                    ; $5710: $ff
    nop                                           ; $5711: $00
    rst RST_38                                    ; $5712: $ff
    nop                                           ; $5713: $00
    rst RST_38                                    ; $5714: $ff
    nop                                           ; $5715: $00
    rst RST_38                                    ; $5716: $ff
    nop                                           ; $5717: $00
    nop                                           ; $5718: $00
    nop                                           ; $5719: $00
    nop                                           ; $571a: $00
    nop                                           ; $571b: $00
    nop                                           ; $571c: $00
    nop                                           ; $571d: $00
    nop                                           ; $571e: $00
    nop                                           ; $571f: $00
    rst RST_38                                    ; $5720: $ff
    nop                                           ; $5721: $00
    rst RST_38                                    ; $5722: $ff
    nop                                           ; $5723: $00
    rst RST_38                                    ; $5724: $ff
    nop                                           ; $5725: $00
    rst RST_38                                    ; $5726: $ff
    nop                                           ; $5727: $00
    nop                                           ; $5728: $00
    nop                                           ; $5729: $00
    nop                                           ; $572a: $00
    nop                                           ; $572b: $00
    nop                                           ; $572c: $00
    nop                                           ; $572d: $00
    nop                                           ; $572e: $00
    nop                                           ; $572f: $00
    rst RST_38                                    ; $5730: $ff
    nop                                           ; $5731: $00
    rst RST_38                                    ; $5732: $ff
    nop                                           ; $5733: $00
    cp $00                                        ; $5734: $fe $00
    db $fc                                        ; $5736: $fc
    nop                                           ; $5737: $00
    nop                                           ; $5738: $00
    nop                                           ; $5739: $00
    nop                                           ; $573a: $00
    nop                                           ; $573b: $00
    nop                                           ; $573c: $00
    nop                                           ; $573d: $00
    nop                                           ; $573e: $00
    nop                                           ; $573f: $00
    ccf                                           ; $5740: $3f
    ld h, b                                       ; $5741: $60
    ccf                                           ; $5742: $3f
    ld h, b                                       ; $5743: $60
    ccf                                           ; $5744: $3f
    ld h, b                                       ; $5745: $60
    ccf                                           ; $5746: $3f
    ld h, b                                       ; $5747: $60
    ccf                                           ; $5748: $3f
    ld a, a                                       ; $5749: $7f
    ld a, a                                       ; $574a: $7f
    nop                                           ; $574b: $00
    nop                                           ; $574c: $00
    nop                                           ; $574d: $00
    nop                                           ; $574e: $00
    nop                                           ; $574f: $00
    ld a, l                                       ; $5750: $7d
    nop                                           ; $5751: $00
    ld a, l                                       ; $5752: $7d
    nop                                           ; $5753: $00
    ld a, l                                       ; $5754: $7d
    nop                                           ; $5755: $00
    ld a, l                                       ; $5756: $7d
    nop                                           ; $5757: $00
    rst RST_38                                    ; $5758: $ff
    rst RST_38                                    ; $5759: $ff
    rst RST_38                                    ; $575a: $ff
    nop                                           ; $575b: $00
    nop                                           ; $575c: $00
    nop                                           ; $575d: $00
    nop                                           ; $575e: $00
    nop                                           ; $575f: $00
    rst RST_30                                    ; $5760: $f7
    nop                                           ; $5761: $00
    rst RST_30                                    ; $5762: $f7
    nop                                           ; $5763: $00
    rst RST_30                                    ; $5764: $f7
    nop                                           ; $5765: $00
    rst RST_30                                    ; $5766: $f7
    nop                                           ; $5767: $00
    rst RST_38                                    ; $5768: $ff
    rst RST_38                                    ; $5769: $ff
    rst RST_38                                    ; $576a: $ff
    nop                                           ; $576b: $00
    nop                                           ; $576c: $00
    nop                                           ; $576d: $00
    nop                                           ; $576e: $00
    nop                                           ; $576f: $00
    rst RST_18                                    ; $5770: $df
    nop                                           ; $5771: $00
    rst RST_18                                    ; $5772: $df
    nop                                           ; $5773: $00
    rst RST_18                                    ; $5774: $df
    nop                                           ; $5775: $00
    rst RST_18                                    ; $5776: $df
    nop                                           ; $5777: $00
    rst RST_38                                    ; $5778: $ff
    rst RST_38                                    ; $5779: $ff
    rst RST_38                                    ; $577a: $ff
    nop                                           ; $577b: $00
    nop                                           ; $577c: $00
    nop                                           ; $577d: $00
    nop                                           ; $577e: $00
    nop                                           ; $577f: $00
    db $fd                                        ; $5780: $fd
    add b                                         ; $5781: $80
    db $fd                                        ; $5782: $fd
    add b                                         ; $5783: $80
    db $fd                                        ; $5784: $fd
    add b                                         ; $5785: $80
    db $fd                                        ; $5786: $fd
    add b                                         ; $5787: $80
    rst RST_38                                    ; $5788: $ff
    rst RST_38                                    ; $5789: $ff
    rst RST_38                                    ; $578a: $ff
    nop                                           ; $578b: $00
    nop                                           ; $578c: $00
    nop                                           ; $578d: $00
    nop                                           ; $578e: $00
    nop                                           ; $578f: $00
    rst RST_30                                    ; $5790: $f7
    nop                                           ; $5791: $00
    rst RST_30                                    ; $5792: $f7
    nop                                           ; $5793: $00
    rst RST_30                                    ; $5794: $f7
    nop                                           ; $5795: $00
    rst RST_30                                    ; $5796: $f7
    nop                                           ; $5797: $00
    rst RST_38                                    ; $5798: $ff
    rst RST_38                                    ; $5799: $ff
    rst RST_38                                    ; $579a: $ff
    nop                                           ; $579b: $00
    nop                                           ; $579c: $00
    nop                                           ; $579d: $00
    nop                                           ; $579e: $00
    nop                                           ; $579f: $00
    rst RST_18                                    ; $57a0: $df
    nop                                           ; $57a1: $00
    rst RST_18                                    ; $57a2: $df
    nop                                           ; $57a3: $00
    rst RST_18                                    ; $57a4: $df
    nop                                           ; $57a5: $00
    rst RST_18                                    ; $57a6: $df
    nop                                           ; $57a7: $00
    rst RST_38                                    ; $57a8: $ff
    rst RST_38                                    ; $57a9: $ff
    rst RST_38                                    ; $57aa: $ff
    nop                                           ; $57ab: $00
    nop                                           ; $57ac: $00
    nop                                           ; $57ad: $00
    nop                                           ; $57ae: $00
    nop                                           ; $57af: $00
    ld a, a                                       ; $57b0: $7f
    ld [bc], a                                    ; $57b1: $02
    ld a, a                                       ; $57b2: $7f
    ld [bc], a                                    ; $57b3: $02
    ld a, a                                       ; $57b4: $7f
    ld [bc], a                                    ; $57b5: $02
    ld a, a                                       ; $57b6: $7f
    ld [bc], a                                    ; $57b7: $02
    rst RST_38                                    ; $57b8: $ff
    rst RST_38                                    ; $57b9: $ff
    rst RST_38                                    ; $57ba: $ff
    nop                                           ; $57bb: $00
    nop                                           ; $57bc: $00
    nop                                           ; $57bd: $00
    nop                                           ; $57be: $00
    nop                                           ; $57bf: $00
    rst RST_30                                    ; $57c0: $f7
    nop                                           ; $57c1: $00
    rst RST_30                                    ; $57c2: $f7
    nop                                           ; $57c3: $00
    rst RST_30                                    ; $57c4: $f7
    nop                                           ; $57c5: $00
    rst RST_30                                    ; $57c6: $f7
    nop                                           ; $57c7: $00
    rst RST_38                                    ; $57c8: $ff
    rst RST_38                                    ; $57c9: $ff
    rst RST_38                                    ; $57ca: $ff
    nop                                           ; $57cb: $00
    nop                                           ; $57cc: $00
    nop                                           ; $57cd: $00
    nop                                           ; $57ce: $00
    nop                                           ; $57cf: $00
    rst RST_18                                    ; $57d0: $df
    nop                                           ; $57d1: $00
    rst RST_18                                    ; $57d2: $df
    nop                                           ; $57d3: $00
    rst RST_18                                    ; $57d4: $df
    nop                                           ; $57d5: $00

jr_006_57d6:
    rst RST_18                                    ; $57d6: $df
    nop                                           ; $57d7: $00
    rst RST_38                                    ; $57d8: $ff
    rst RST_38                                    ; $57d9: $ff
    rst RST_38                                    ; $57da: $ff
    nop                                           ; $57db: $00
    nop                                           ; $57dc: $00
    nop                                           ; $57dd: $00
    nop                                           ; $57de: $00
    nop                                           ; $57df: $00
    ld a, l                                       ; $57e0: $7d
    nop                                           ; $57e1: $00
    ld a, l                                       ; $57e2: $7d
    nop                                           ; $57e3: $00
    ld a, l                                       ; $57e4: $7d
    nop                                           ; $57e5: $00
    ld a, l                                       ; $57e6: $7d
    nop                                           ; $57e7: $00
    rst RST_38                                    ; $57e8: $ff
    rst RST_38                                    ; $57e9: $ff
    rst RST_38                                    ; $57ea: $ff
    nop                                           ; $57eb: $00
    nop                                           ; $57ec: $00
    nop                                           ; $57ed: $00
    nop                                           ; $57ee: $00
    nop                                           ; $57ef: $00
    db $fc                                        ; $57f0: $fc
    ld [$08fc], sp                                ; $57f1: $08 $fc $08
    db $fc                                        ; $57f4: $fc
    ld [$08fc], sp                                ; $57f5: $08 $fc $08
    db $fc                                        ; $57f8: $fc
    ld hl, sp-$04                                 ; $57f9: $f8 $fc
    nop                                           ; $57fb: $00
    nop                                           ; $57fc: $00
    nop                                           ; $57fd: $00
    nop                                           ; $57fe: $00
    nop                                           ; $57ff: $00
    rst RST_38                                    ; $5800: $ff
    nop                                           ; $5801: $00
    rst RST_38                                    ; $5802: $ff
    nop                                           ; $5803: $00
    rst RST_38                                    ; $5804: $ff
    nop                                           ; $5805: $00
    rst RST_38                                    ; $5806: $ff
    nop                                           ; $5807: $00
    rst RST_38                                    ; $5808: $ff
    nop                                           ; $5809: $00
    rst RST_38                                    ; $580a: $ff
    nop                                           ; $580b: $00
    rst RST_38                                    ; $580c: $ff
    nop                                           ; $580d: $00
    rst RST_38                                    ; $580e: $ff
    nop                                           ; $580f: $00
    ld hl, sp-$01                                 ; $5810: $f8 $ff
    add b                                         ; $5812: $80
    rst RST_38                                    ; $5813: $ff
    add b                                         ; $5814: $80
    rst RST_38                                    ; $5815: $ff
    add b                                         ; $5816: $80
    rst RST_38                                    ; $5817: $ff
    add b                                         ; $5818: $80
    rst RST_38                                    ; $5819: $ff
    nop                                           ; $581a: $00
    rst RST_38                                    ; $581b: $ff
    nop                                           ; $581c: $00
    rst RST_38                                    ; $581d: $ff
    nop                                           ; $581e: $00
    rst RST_38                                    ; $581f: $ff
    rst RST_38                                    ; $5820: $ff
    nop                                           ; $5821: $00
    xor a                                         ; $5822: $af
    ld d, b                                       ; $5823: $50
    rst RST_18                                    ; $5824: $df
    jr nz, jr_006_57d6                            ; $5825: $20 $af

    ld d, b                                       ; $5827: $50
    rst RST_38                                    ; $5828: $ff
    nop                                           ; $5829: $00
    rst RST_38                                    ; $582a: $ff
    nop                                           ; $582b: $00
    rst RST_38                                    ; $582c: $ff
    nop                                           ; $582d: $00
    rst RST_38                                    ; $582e: $ff
    nop                                           ; $582f: $00
    nop                                           ; $5830: $00
    rst RST_38                                    ; $5831: $ff
    nop                                           ; $5832: $00
    rst RST_38                                    ; $5833: $ff
    nop                                           ; $5834: $00
    rst RST_38                                    ; $5835: $ff
    nop                                           ; $5836: $00
    rst RST_38                                    ; $5837: $ff
    nop                                           ; $5838: $00
    rst RST_38                                    ; $5839: $ff
    nop                                           ; $583a: $00
    rst RST_38                                    ; $583b: $ff
    nop                                           ; $583c: $00
    rst RST_38                                    ; $583d: $ff
    nop                                           ; $583e: $00
    rst RST_38                                    ; $583f: $ff
    inc a                                         ; $5840: $3c
    rst RST_38                                    ; $5841: $ff
    ld a, [hl]                                    ; $5842: $7e
    ld b, d                                       ; $5843: $42
    rst RST_38                                    ; $5844: $ff
    sbc c                                         ; $5845: $99
    rst RST_38                                    ; $5846: $ff
    sbc c                                         ; $5847: $99
    rst RST_38                                    ; $5848: $ff
    sbc c                                         ; $5849: $99
    rst RST_38                                    ; $584a: $ff
    sbc c                                         ; $584b: $99
    ld a, [hl]                                    ; $584c: $7e
    jp $ff3c                                      ; $584d: $c3 $3c $ff


    jr @+$01                                      ; $5850: $18 $ff

    inc a                                         ; $5852: $3c
    inc h                                         ; $5853: $24
    rst RST_38                                    ; $5854: $ff
    ld b, h                                       ; $5855: $44
    rst RST_38                                    ; $5856: $ff
    inc h                                         ; $5857: $24
    inc a                                         ; $5858: $3c
    inc h                                         ; $5859: $24
    inc a                                         ; $585a: $3c
    inc h                                         ; $585b: $24
    inc a                                         ; $585c: $3c
    rst RST_20                                    ; $585d: $e7
    jr @+$01                                      ; $585e: $18 $ff

    inc a                                         ; $5860: $3c
    rst RST_38                                    ; $5861: $ff
    ld a, [hl]                                    ; $5862: $7e
    ld b, d                                       ; $5863: $42
    rst RST_38                                    ; $5864: $ff
    sbc c                                         ; $5865: $99
    rst RST_38                                    ; $5866: $ff
    ld a, c                                       ; $5867: $79
    ld a, [hl]                                    ; $5868: $7e
    ld b, d                                       ; $5869: $42
    cp $9e                                        ; $586a: $fe $9e
    rst RST_38                                    ; $586c: $ff
    add c                                         ; $586d: $81
    ld a, [hl]                                    ; $586e: $7e
    rst RST_38                                    ; $586f: $ff
    inc a                                         ; $5870: $3c
    rst RST_38                                    ; $5871: $ff
    ld a, [hl]                                    ; $5872: $7e
    ld b, d                                       ; $5873: $42
    rst RST_38                                    ; $5874: $ff
    sbc c                                         ; $5875: $99
    rst RST_38                                    ; $5876: $ff
    ld [hl], d                                    ; $5877: $72
    ld a, a                                       ; $5878: $7f
    ld a, c                                       ; $5879: $79
    rst RST_38                                    ; $587a: $ff
    sbc c                                         ; $587b: $99
    ld a, [hl]                                    ; $587c: $7e
    jp $ff3c                                      ; $587d: $c3 $3c $ff


    inc e                                         ; $5880: $1c
    rst RST_38                                    ; $5881: $ff
    ld a, $22                                     ; $5882: $3e $22
    rst RST_38                                    ; $5884: $ff
    ld b, d                                       ; $5885: $42
    rst RST_38                                    ; $5886: $ff
    sub d                                         ; $5887: $92
    cp $92                                        ; $5888: $fe $92
    rst RST_38                                    ; $588a: $ff
    add c                                         ; $588b: $81
    ld a, [hl]                                    ; $588c: $7e
    di                                            ; $588d: $f3
    inc c                                         ; $588e: $0c
    rst RST_38                                    ; $588f: $ff
    ld a, [hl]                                    ; $5890: $7e
    rst RST_38                                    ; $5891: $ff
    rst RST_38                                    ; $5892: $ff
    add c                                         ; $5893: $81
    rst RST_38                                    ; $5894: $ff
    sbc [hl]                                      ; $5895: $9e
    rst RST_38                                    ; $5896: $ff
    add d                                         ; $5897: $82
    ld a, a                                       ; $5898: $7f
    ld a, c                                       ; $5899: $79
    rst RST_38                                    ; $589a: $ff
    sbc c                                         ; $589b: $99
    ld a, [hl]                                    ; $589c: $7e
    jp $ff3c                                      ; $589d: $c3 $3c $ff


    inc a                                         ; $58a0: $3c
    rst RST_38                                    ; $58a1: $ff
    ld a, [hl]                                    ; $58a2: $7e
    ld b, d                                       ; $58a3: $42
    rst RST_38                                    ; $58a4: $ff
    sbc h                                         ; $58a5: $9c
    rst RST_38                                    ; $58a6: $ff
    add d                                         ; $58a7: $82
    rst RST_38                                    ; $58a8: $ff
    sbc c                                         ; $58a9: $99
    rst RST_38                                    ; $58aa: $ff
    sbc c                                         ; $58ab: $99
    ld a, [hl]                                    ; $58ac: $7e
    jp $ff3c                                      ; $58ad: $c3 $3c $ff


    ld a, [hl]                                    ; $58b0: $7e
    rst RST_38                                    ; $58b1: $ff
    rst RST_38                                    ; $58b2: $ff
    add c                                         ; $58b3: $81
    rst RST_38                                    ; $58b4: $ff
    sbc c                                         ; $58b5: $99
    rst RST_38                                    ; $58b6: $ff
    ld l, c                                       ; $58b7: $69
    ld e, $12                                     ; $58b8: $1e $12
    inc a                                         ; $58ba: $3c
    inc h                                         ; $58bb: $24
    inc a                                         ; $58bc: $3c
    rst RST_20                                    ; $58bd: $e7
    jr @+$01                                      ; $58be: $18 $ff

    inc a                                         ; $58c0: $3c
    rst RST_38                                    ; $58c1: $ff
    ld a, [hl]                                    ; $58c2: $7e
    ld b, d                                       ; $58c3: $42
    rst RST_38                                    ; $58c4: $ff
    sbc c                                         ; $58c5: $99
    rst RST_38                                    ; $58c6: $ff
    ld b, d                                       ; $58c7: $42
    rst RST_38                                    ; $58c8: $ff
    sbc c                                         ; $58c9: $99
    rst RST_38                                    ; $58ca: $ff
    sbc c                                         ; $58cb: $99
    ld a, [hl]                                    ; $58cc: $7e
    jp $ff3c                                      ; $58cd: $c3 $3c $ff


    inc a                                         ; $58d0: $3c
    rst RST_38                                    ; $58d1: $ff
    ld a, [hl]                                    ; $58d2: $7e
    ld b, d                                       ; $58d3: $42
    rst RST_38                                    ; $58d4: $ff
    sbc c                                         ; $58d5: $99
    rst RST_38                                    ; $58d6: $ff
    sbc c                                         ; $58d7: $99
    ld a, a                                       ; $58d8: $7f
    ld b, c                                       ; $58d9: $41
    ccf                                           ; $58da: $3f
    add hl, sp                                    ; $58db: $39
    ld a, [hl]                                    ; $58dc: $7e
    jp $ff3c                                      ; $58dd: $c3 $3c $ff


    rst RST_38                                    ; $58e0: $ff
    nop                                           ; $58e1: $00
    rst RST_38                                    ; $58e2: $ff
    nop                                           ; $58e3: $00
    rst RST_38                                    ; $58e4: $ff
    nop                                           ; $58e5: $00
    rst RST_38                                    ; $58e6: $ff
    nop                                           ; $58e7: $00
    rst RST_38                                    ; $58e8: $ff
    nop                                           ; $58e9: $00
    rst RST_38                                    ; $58ea: $ff
    nop                                           ; $58eb: $00
    rst RST_38                                    ; $58ec: $ff
    nop                                           ; $58ed: $00
    rst RST_38                                    ; $58ee: $ff
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
    rst RST_38                                    ; $5900: $ff
    nop                                           ; $5901: $00
    rst RST_18                                    ; $5902: $df
    jr nc, @+$01                                  ; $5903: $30 $ff

    db $10                                        ; $5905: $10
    rst RST_38                                    ; $5906: $ff
    db $10                                        ; $5907: $10
    rst RST_38                                    ; $5908: $ff
    db $10                                        ; $5909: $10
    rst RST_38                                    ; $590a: $ff
    db $10                                        ; $590b: $10
    rst RST_38                                    ; $590c: $ff
    nop                                           ; $590d: $00
    rst RST_38                                    ; $590e: $ff
    nop                                           ; $590f: $00
    rst RST_38                                    ; $5910: $ff
    nop                                           ; $5911: $00
    rst RST_28                                    ; $5912: $ef
    ld [hl], b                                    ; $5913: $70
    rst RST_38                                    ; $5914: $ff
    db $10                                        ; $5915: $10
    xor a                                         ; $5916: $af
    ld [hl], b                                    ; $5917: $70
    rst RST_38                                    ; $5918: $ff
    ld b, b                                       ; $5919: $40
    rst RST_38                                    ; $591a: $ff
    ld a, b                                       ; $591b: $78
    rst RST_38                                    ; $591c: $ff
    nop                                           ; $591d: $00
    rst RST_38                                    ; $591e: $ff
    nop                                           ; $591f: $00
    rst RST_38                                    ; $5920: $ff
    nop                                           ; $5921: $00
    rst RST_38                                    ; $5922: $ff
    ld [hl], b                                    ; $5923: $70
    rst RST_38                                    ; $5924: $ff
    db $10                                        ; $5925: $10
    cp a                                          ; $5926: $bf
    ld a, b                                       ; $5927: $78
    rst RST_38                                    ; $5928: $ff
    ld [$78ff], sp                                ; $5929: $08 $ff $78
    rst RST_38                                    ; $592c: $ff
    nop                                           ; $592d: $00
    rst RST_38                                    ; $592e: $ff
    nop                                           ; $592f: $00
    rst RST_38                                    ; $5930: $ff
    nop                                           ; $5931: $00
    rst RST_38                                    ; $5932: $ff
    ld d, b                                       ; $5933: $50
    rst RST_38                                    ; $5934: $ff
    ld d, b                                       ; $5935: $50
    rst RST_38                                    ; $5936: $ff
    ld d, b                                       ; $5937: $50
    rst RST_38                                    ; $5938: $ff
    ld a, b                                       ; $5939: $78
    rst RST_38                                    ; $593a: $ff
    db $10                                        ; $593b: $10
    rst RST_38                                    ; $593c: $ff
    nop                                           ; $593d: $00
    rst RST_38                                    ; $593e: $ff
    nop                                           ; $593f: $00
    rst RST_38                                    ; $5940: $ff
    nop                                           ; $5941: $00
    rst RST_38                                    ; $5942: $ff
    ld [hl], b                                    ; $5943: $70
    rst RST_38                                    ; $5944: $ff
    ld b, b                                       ; $5945: $40
    rst RST_38                                    ; $5946: $ff
    ld a, b                                       ; $5947: $78
    rst RST_38                                    ; $5948: $ff
    ld [$78ff], sp                                ; $5949: $08 $ff $78
    rst RST_38                                    ; $594c: $ff
    nop                                           ; $594d: $00
    rst RST_38                                    ; $594e: $ff
    nop                                           ; $594f: $00
    rst RST_38                                    ; $5950: $ff
    nop                                           ; $5951: $00
    rst RST_38                                    ; $5952: $ff
    ld b, b                                       ; $5953: $40
    rst RST_38                                    ; $5954: $ff
    ld b, b                                       ; $5955: $40
    rst RST_38                                    ; $5956: $ff
    ld a, b                                       ; $5957: $78
    rst RST_38                                    ; $5958: $ff
    ld c, b                                       ; $5959: $48
    rst RST_38                                    ; $595a: $ff
    ld a, b                                       ; $595b: $78
    rst RST_38                                    ; $595c: $ff
    nop                                           ; $595d: $00
    rst RST_38                                    ; $595e: $ff
    nop                                           ; $595f: $00
    rst RST_38                                    ; $5960: $ff
    nop                                           ; $5961: $00
    rst RST_38                                    ; $5962: $ff
    ld a, b                                       ; $5963: $78
    rst RST_38                                    ; $5964: $ff
    ld [$10ff], sp                                ; $5965: $08 $ff $10
    rst RST_38                                    ; $5968: $ff
    db $10                                        ; $5969: $10
    rst RST_38                                    ; $596a: $ff
    db $10                                        ; $596b: $10
    rst RST_38                                    ; $596c: $ff
    nop                                           ; $596d: $00
    rst RST_38                                    ; $596e: $ff
    nop                                           ; $596f: $00
    rst RST_38                                    ; $5970: $ff
    nop                                           ; $5971: $00
    rst RST_38                                    ; $5972: $ff
    jr c, @+$01                                   ; $5973: $38 $ff

    jr z, @+$01                                   ; $5975: $28 $ff

    ld a, b                                       ; $5977: $78
    rst RST_38                                    ; $5978: $ff
    ld c, b                                       ; $5979: $48
    rst RST_38                                    ; $597a: $ff
    ld a, b                                       ; $597b: $78
    rst RST_38                                    ; $597c: $ff
    nop                                           ; $597d: $00
    rst RST_38                                    ; $597e: $ff
    nop                                           ; $597f: $00
    rst RST_38                                    ; $5980: $ff
    nop                                           ; $5981: $00
    rst RST_38                                    ; $5982: $ff
    ld a, b                                       ; $5983: $78
    rst RST_38                                    ; $5984: $ff
    ld c, b                                       ; $5985: $48
    rst RST_38                                    ; $5986: $ff
    ld a, b                                       ; $5987: $78
    rst RST_38                                    ; $5988: $ff
    ld [$08ff], sp                                ; $5989: $08 $ff $08
    rst RST_38                                    ; $598c: $ff
    nop                                           ; $598d: $00
    rst RST_38                                    ; $598e: $ff
    nop                                           ; $598f: $00
    rst RST_38                                    ; $5990: $ff
    nop                                           ; $5991: $00
    rst RST_38                                    ; $5992: $ff
    ld e, h                                       ; $5993: $5c
    rst RST_38                                    ; $5994: $ff
    ld d, h                                       ; $5995: $54
    rst RST_38                                    ; $5996: $ff
    ld d, h                                       ; $5997: $54
    rst RST_38                                    ; $5998: $ff
    ld d, h                                       ; $5999: $54
    rst RST_38                                    ; $599a: $ff
    ld e, h                                       ; $599b: $5c
    rst RST_38                                    ; $599c: $ff
    nop                                           ; $599d: $00
    rst RST_38                                    ; $599e: $ff
    nop                                           ; $599f: $00
    rst RST_38                                    ; $59a0: $ff
    nop                                           ; $59a1: $00
    rst RST_38                                    ; $59a2: $ff
    ld c, b                                       ; $59a3: $48
    rst RST_38                                    ; $59a4: $ff
    ld c, b                                       ; $59a5: $48
    rst RST_38                                    ; $59a6: $ff
    ld c, b                                       ; $59a7: $48
    rst RST_38                                    ; $59a8: $ff
    ld c, b                                       ; $59a9: $48
    rst RST_38                                    ; $59aa: $ff
    ld c, b                                       ; $59ab: $48
    rst RST_38                                    ; $59ac: $ff
    nop                                           ; $59ad: $00
    rst RST_38                                    ; $59ae: $ff
    nop                                           ; $59af: $00
    rst RST_38                                    ; $59b0: $ff
    nop                                           ; $59b1: $00
    rst RST_38                                    ; $59b2: $ff
    ld e, h                                       ; $59b3: $5c
    rst RST_38                                    ; $59b4: $ff
    ld b, h                                       ; $59b5: $44
    rst RST_38                                    ; $59b6: $ff
    ld e, h                                       ; $59b7: $5c
    rst RST_38                                    ; $59b8: $ff
    ld d, b                                       ; $59b9: $50
    rst RST_38                                    ; $59ba: $ff
    ld e, h                                       ; $59bb: $5c
    rst RST_38                                    ; $59bc: $ff
    nop                                           ; $59bd: $00
    rst RST_38                                    ; $59be: $ff
    nop                                           ; $59bf: $00
    rst RST_38                                    ; $59c0: $ff
    nop                                           ; $59c1: $00
    rst RST_38                                    ; $59c2: $ff
    ld e, h                                       ; $59c3: $5c
    rst RST_38                                    ; $59c4: $ff
    ld b, h                                       ; $59c5: $44
    rst RST_38                                    ; $59c6: $ff
    ld e, h                                       ; $59c7: $5c
    rst RST_38                                    ; $59c8: $ff
    ld b, h                                       ; $59c9: $44
    rst RST_38                                    ; $59ca: $ff
    ld e, h                                       ; $59cb: $5c
    rst RST_38                                    ; $59cc: $ff
    nop                                           ; $59cd: $00
    rst RST_38                                    ; $59ce: $ff
    nop                                           ; $59cf: $00
    rst RST_38                                    ; $59d0: $ff
    nop                                           ; $59d1: $00
    rst RST_38                                    ; $59d2: $ff
    ld d, h                                       ; $59d3: $54
    rst RST_38                                    ; $59d4: $ff
    ld d, h                                       ; $59d5: $54
    rst RST_38                                    ; $59d6: $ff
    ld d, h                                       ; $59d7: $54
    rst RST_38                                    ; $59d8: $ff
    ld e, h                                       ; $59d9: $5c
    rst RST_38                                    ; $59da: $ff
    ld b, h                                       ; $59db: $44
    rst RST_38                                    ; $59dc: $ff
    nop                                           ; $59dd: $00
    rst RST_38                                    ; $59de: $ff
    nop                                           ; $59df: $00
    rst RST_38                                    ; $59e0: $ff
    nop                                           ; $59e1: $00
    rst RST_38                                    ; $59e2: $ff
    ld e, h                                       ; $59e3: $5c
    rst RST_38                                    ; $59e4: $ff
    ld d, b                                       ; $59e5: $50
    rst RST_38                                    ; $59e6: $ff
    ld e, h                                       ; $59e7: $5c
    rst RST_38                                    ; $59e8: $ff
    ld b, h                                       ; $59e9: $44
    rst RST_38                                    ; $59ea: $ff
    ld e, h                                       ; $59eb: $5c
    rst RST_38                                    ; $59ec: $ff
    nop                                           ; $59ed: $00
    rst RST_38                                    ; $59ee: $ff
    nop                                           ; $59ef: $00
    rst RST_38                                    ; $59f0: $ff
    nop                                           ; $59f1: $00
    or a                                          ; $59f2: $b7
    ld a, b                                       ; $59f3: $78
    rst RST_38                                    ; $59f4: $ff
    ld c, b                                       ; $59f5: $48
    rst RST_38                                    ; $59f6: $ff
    ld c, b                                       ; $59f7: $48
    rst RST_38                                    ; $59f8: $ff
    ld c, b                                       ; $59f9: $48
    or a                                          ; $59fa: $b7
    ld a, b                                       ; $59fb: $78
    rst RST_38                                    ; $59fc: $ff
    nop                                           ; $59fd: $00
    rst RST_38                                    ; $59fe: $ff
    nop                                           ; $59ff: $00
    nop                                           ; $5a00: $00
    nop                                           ; $5a01: $00
    db $10                                        ; $5a02: $10
    jr nc, jr_006_5a15                            ; $5a03: $30 $10

    db $10                                        ; $5a05: $10
    db $10                                        ; $5a06: $10
    db $10                                        ; $5a07: $10
    db $10                                        ; $5a08: $10
    db $10                                        ; $5a09: $10
    db $10                                        ; $5a0a: $10
    stop                                          ; $5a0b: $10 $00
    nop                                           ; $5a0d: $00
    nop                                           ; $5a0e: $00
    nop                                           ; $5a0f: $00
    nop                                           ; $5a10: $00
    nop                                           ; $5a11: $00
    ld h, b                                       ; $5a12: $60
    ld [hl], b                                    ; $5a13: $70
    db $10                                        ; $5a14: $10

jr_006_5a15:
    db $10                                        ; $5a15: $10
    jr nz, jr_006_5a88                            ; $5a16: $20 $70

    ld b, b                                       ; $5a18: $40
    ld b, b                                       ; $5a19: $40
    ld a, b                                       ; $5a1a: $78
    ld a, b                                       ; $5a1b: $78
    nop                                           ; $5a1c: $00
    nop                                           ; $5a1d: $00
    nop                                           ; $5a1e: $00
    nop                                           ; $5a1f: $00
    nop                                           ; $5a20: $00
    nop                                           ; $5a21: $00
    ld [hl], b                                    ; $5a22: $70
    ld [hl], b                                    ; $5a23: $70
    db $10                                        ; $5a24: $10
    db $10                                        ; $5a25: $10
    jr c, jr_006_5aa0                             ; $5a26: $38 $78

    ld [$7808], sp                                ; $5a28: $08 $08 $78
    ld a, b                                       ; $5a2b: $78
    nop                                           ; $5a2c: $00
    nop                                           ; $5a2d: $00
    nop                                           ; $5a2e: $00
    nop                                           ; $5a2f: $00
    nop                                           ; $5a30: $00
    nop                                           ; $5a31: $00
    ld d, b                                       ; $5a32: $50
    ld d, b                                       ; $5a33: $50
    ld d, b                                       ; $5a34: $50
    ld d, b                                       ; $5a35: $50
    ld d, b                                       ; $5a36: $50
    ld d, b                                       ; $5a37: $50
    ld a, b                                       ; $5a38: $78
    ld a, b                                       ; $5a39: $78
    db $10                                        ; $5a3a: $10
    stop                                          ; $5a3b: $10 $00
    nop                                           ; $5a3d: $00
    nop                                           ; $5a3e: $00
    nop                                           ; $5a3f: $00
    nop                                           ; $5a40: $00
    nop                                           ; $5a41: $00
    ld [hl], b                                    ; $5a42: $70
    ld [hl], b                                    ; $5a43: $70
    ld b, b                                       ; $5a44: $40
    ld b, b                                       ; $5a45: $40
    ld a, b                                       ; $5a46: $78
    ld a, b                                       ; $5a47: $78
    ld [$7808], sp                                ; $5a48: $08 $08 $78
    ld a, b                                       ; $5a4b: $78
    nop                                           ; $5a4c: $00
    nop                                           ; $5a4d: $00
    nop                                           ; $5a4e: $00
    nop                                           ; $5a4f: $00
    nop                                           ; $5a50: $00
    nop                                           ; $5a51: $00
    ld b, b                                       ; $5a52: $40
    ld b, b                                       ; $5a53: $40
    ld b, b                                       ; $5a54: $40
    ld b, b                                       ; $5a55: $40
    ld a, b                                       ; $5a56: $78
    ld a, b                                       ; $5a57: $78
    ld c, b                                       ; $5a58: $48
    ld c, b                                       ; $5a59: $48
    ld a, b                                       ; $5a5a: $78
    ld a, b                                       ; $5a5b: $78
    nop                                           ; $5a5c: $00
    nop                                           ; $5a5d: $00
    nop                                           ; $5a5e: $00
    nop                                           ; $5a5f: $00
    nop                                           ; $5a60: $00
    nop                                           ; $5a61: $00
    ld a, b                                       ; $5a62: $78
    ld a, b                                       ; $5a63: $78
    ld [$1008], sp                                ; $5a64: $08 $08 $10
    db $10                                        ; $5a67: $10
    db $10                                        ; $5a68: $10
    db $10                                        ; $5a69: $10
    db $10                                        ; $5a6a: $10
    stop                                          ; $5a6b: $10 $00
    nop                                           ; $5a6d: $00
    nop                                           ; $5a6e: $00
    nop                                           ; $5a6f: $00
    nop                                           ; $5a70: $00
    nop                                           ; $5a71: $00
    jr c, jr_006_5aac                             ; $5a72: $38 $38

    jr z, jr_006_5a9e                             ; $5a74: $28 $28

    ld a, b                                       ; $5a76: $78
    ld a, b                                       ; $5a77: $78
    ld c, b                                       ; $5a78: $48
    ld c, b                                       ; $5a79: $48
    ld a, b                                       ; $5a7a: $78
    ld a, b                                       ; $5a7b: $78
    nop                                           ; $5a7c: $00
    nop                                           ; $5a7d: $00
    nop                                           ; $5a7e: $00

Jump_006_5a7f:
    nop                                           ; $5a7f: $00
    nop                                           ; $5a80: $00
    nop                                           ; $5a81: $00
    ld a, b                                       ; $5a82: $78
    ld a, b                                       ; $5a83: $78
    ld c, b                                       ; $5a84: $48
    ld c, b                                       ; $5a85: $48
    ld a, b                                       ; $5a86: $78
    ld a, b                                       ; $5a87: $78

jr_006_5a88:
    ld [$0808], sp                                ; $5a88: $08 $08 $08
    ld [$0000], sp                                ; $5a8b: $08 $00 $00
    nop                                           ; $5a8e: $00
    nop                                           ; $5a8f: $00
    nop                                           ; $5a90: $00
    nop                                           ; $5a91: $00
    ld e, h                                       ; $5a92: $5c
    ld e, h                                       ; $5a93: $5c
    ld d, h                                       ; $5a94: $54
    ld d, h                                       ; $5a95: $54
    ld d, h                                       ; $5a96: $54
    ld d, h                                       ; $5a97: $54
    ld d, h                                       ; $5a98: $54
    ld d, h                                       ; $5a99: $54
    ld e, h                                       ; $5a9a: $5c
    ld e, h                                       ; $5a9b: $5c
    nop                                           ; $5a9c: $00
    nop                                           ; $5a9d: $00

jr_006_5a9e:
    nop                                           ; $5a9e: $00
    nop                                           ; $5a9f: $00

jr_006_5aa0:
    nop                                           ; $5aa0: $00
    nop                                           ; $5aa1: $00
    ld c, b                                       ; $5aa2: $48
    ld c, b                                       ; $5aa3: $48
    ld c, b                                       ; $5aa4: $48
    ld c, b                                       ; $5aa5: $48
    ld c, b                                       ; $5aa6: $48
    ld c, b                                       ; $5aa7: $48
    ld c, b                                       ; $5aa8: $48
    ld c, b                                       ; $5aa9: $48
    ld c, b                                       ; $5aaa: $48
    ld c, b                                       ; $5aab: $48

jr_006_5aac:
    nop                                           ; $5aac: $00
    nop                                           ; $5aad: $00
    nop                                           ; $5aae: $00
    nop                                           ; $5aaf: $00
    nop                                           ; $5ab0: $00
    nop                                           ; $5ab1: $00
    ld e, h                                       ; $5ab2: $5c
    ld e, h                                       ; $5ab3: $5c
    ld b, h                                       ; $5ab4: $44
    ld b, h                                       ; $5ab5: $44
    ld e, h                                       ; $5ab6: $5c
    ld e, h                                       ; $5ab7: $5c
    ld d, b                                       ; $5ab8: $50
    ld d, b                                       ; $5ab9: $50
    ld e, h                                       ; $5aba: $5c
    ld e, h                                       ; $5abb: $5c
    nop                                           ; $5abc: $00
    nop                                           ; $5abd: $00
    nop                                           ; $5abe: $00
    nop                                           ; $5abf: $00
    nop                                           ; $5ac0: $00
    nop                                           ; $5ac1: $00
    ld e, h                                       ; $5ac2: $5c
    ld e, h                                       ; $5ac3: $5c
    ld b, h                                       ; $5ac4: $44
    ld b, h                                       ; $5ac5: $44
    ld e, h                                       ; $5ac6: $5c
    ld e, h                                       ; $5ac7: $5c
    ld b, h                                       ; $5ac8: $44
    ld b, h                                       ; $5ac9: $44
    ld e, h                                       ; $5aca: $5c
    ld e, h                                       ; $5acb: $5c
    nop                                           ; $5acc: $00
    nop                                           ; $5acd: $00
    nop                                           ; $5ace: $00
    nop                                           ; $5acf: $00
    nop                                           ; $5ad0: $00
    nop                                           ; $5ad1: $00
    ld d, h                                       ; $5ad2: $54
    ld d, h                                       ; $5ad3: $54
    ld d, h                                       ; $5ad4: $54
    ld d, h                                       ; $5ad5: $54
    ld d, h                                       ; $5ad6: $54
    ld d, h                                       ; $5ad7: $54
    ld e, h                                       ; $5ad8: $5c
    ld e, h                                       ; $5ad9: $5c
    ld b, h                                       ; $5ada: $44
    ld b, h                                       ; $5adb: $44
    nop                                           ; $5adc: $00
    nop                                           ; $5add: $00
    nop                                           ; $5ade: $00
    nop                                           ; $5adf: $00
    nop                                           ; $5ae0: $00
    nop                                           ; $5ae1: $00
    ld e, h                                       ; $5ae2: $5c
    ld e, h                                       ; $5ae3: $5c
    ld d, b                                       ; $5ae4: $50
    ld d, b                                       ; $5ae5: $50
    ld e, h                                       ; $5ae6: $5c
    ld e, h                                       ; $5ae7: $5c
    ld b, h                                       ; $5ae8: $44
    ld b, h                                       ; $5ae9: $44
    ld e, h                                       ; $5aea: $5c
    ld e, h                                       ; $5aeb: $5c
    nop                                           ; $5aec: $00
    nop                                           ; $5aed: $00
    nop                                           ; $5aee: $00
    nop                                           ; $5aef: $00
    nop                                           ; $5af0: $00
    nop                                           ; $5af1: $00
    jr nc, jr_006_5b6c                            ; $5af2: $30 $78

    ld c, b                                       ; $5af4: $48
    ld c, b                                       ; $5af5: $48
    ld c, b                                       ; $5af6: $48
    ld c, b                                       ; $5af7: $48
    ld c, b                                       ; $5af8: $48
    ld c, b                                       ; $5af9: $48
    jr nc, @+$7a                                  ; $5afa: $30 $78

    nop                                           ; $5afc: $00
    nop                                           ; $5afd: $00
    nop                                           ; $5afe: $00
    nop                                           ; $5aff: $00
    rst RST_38                                    ; $5b00: $ff
    rst RST_38                                    ; $5b01: $ff
    add b                                         ; $5b02: $80
    add b                                         ; $5b03: $80
    add b                                         ; $5b04: $80
    rst RST_38                                    ; $5b05: $ff
    add b                                         ; $5b06: $80
    rst RST_38                                    ; $5b07: $ff
    adc a                                         ; $5b08: $8f
    rst RST_38                                    ; $5b09: $ff
    sbc a                                         ; $5b0a: $9f
    ldh a, [$ffbf]                                ; $5b0b: $f0 $bf
    and $bf                                       ; $5b0d: $e6 $bf
    rst RST_20                                    ; $5b0f: $e7
    rst RST_38                                    ; $5b10: $ff
    rst RST_38                                    ; $5b11: $ff
    nop                                           ; $5b12: $00
    nop                                           ; $5b13: $00
    nop                                           ; $5b14: $00
    rst RST_38                                    ; $5b15: $ff
    nop                                           ; $5b16: $00
    rst RST_38                                    ; $5b17: $ff
    ld e, $ff                                     ; $5b18: $1e $ff
    cp a                                          ; $5b1a: $bf
    pop hl                                        ; $5b1b: $e1
    rst RST_38                                    ; $5b1c: $ff
    ld c, h                                       ; $5b1d: $4c
    rst RST_38                                    ; $5b1e: $ff
    call z, rIE                                   ; $5b1f: $cc $ff $ff
    nop                                           ; $5b22: $00
    nop                                           ; $5b23: $00
    nop                                           ; $5b24: $00
    rst RST_38                                    ; $5b25: $ff
    nop                                           ; $5b26: $00
    rst RST_38                                    ; $5b27: $ff
    ld h, d                                       ; $5b28: $62
    rst RST_38                                    ; $5b29: $ff
    rst RST_30                                    ; $5b2a: $f7
    sbc l                                         ; $5b2b: $9d
    rst RST_38                                    ; $5b2c: $ff
    adc c                                         ; $5b2d: $89
    rst RST_38                                    ; $5b2e: $ff
    add c                                         ; $5b2f: $81
    rst RST_38                                    ; $5b30: $ff
    rst RST_38                                    ; $5b31: $ff
    nop                                           ; $5b32: $00
    nop                                           ; $5b33: $00
    nop                                           ; $5b34: $00
    rst RST_38                                    ; $5b35: $ff
    nop                                           ; $5b36: $00
    rst RST_38                                    ; $5b37: $ff
    db $fc                                        ; $5b38: $fc
    rst RST_38                                    ; $5b39: $ff
    cp $03                                        ; $5b3a: $fe $03
    db $fc                                        ; $5b3c: $fc
    ccf                                           ; $5b3d: $3f
    ld hl, sp+$0f                                 ; $5b3e: $f8 $0f
    rst RST_38                                    ; $5b40: $ff
    rst RST_38                                    ; $5b41: $ff
    nop                                           ; $5b42: $00
    nop                                           ; $5b43: $00
    nop                                           ; $5b44: $00
    rst RST_38                                    ; $5b45: $ff
    nop                                           ; $5b46: $00
    rst RST_38                                    ; $5b47: $ff
    ld e, $ff                                     ; $5b48: $1e $ff
    ccf                                           ; $5b4a: $3f
    pop hl                                        ; $5b4b: $e1
    ld a, a                                       ; $5b4c: $7f
    call z, $cc7f                                 ; $5b4d: $cc $7f $cc
    rst RST_38                                    ; $5b50: $ff
    rst RST_38                                    ; $5b51: $ff
    nop                                           ; $5b52: $00
    nop                                           ; $5b53: $00
    nop                                           ; $5b54: $00
    rst RST_38                                    ; $5b55: $ff
    nop                                           ; $5b56: $00
    rst RST_38                                    ; $5b57: $ff
    ld h, d                                       ; $5b58: $62
    rst RST_38                                    ; $5b59: $ff
    rst RST_30                                    ; $5b5a: $f7
    sbc l                                         ; $5b5b: $9d
    rst RST_30                                    ; $5b5c: $f7
    sbc l                                         ; $5b5d: $9d
    rst RST_30                                    ; $5b5e: $f7
    sbc l                                         ; $5b5f: $9d
    rst RST_38                                    ; $5b60: $ff
    rst RST_38                                    ; $5b61: $ff
    nop                                           ; $5b62: $00
    nop                                           ; $5b63: $00
    nop                                           ; $5b64: $00
    rst RST_38                                    ; $5b65: $ff
    nop                                           ; $5b66: $00
    rst RST_38                                    ; $5b67: $ff
    db $fd                                        ; $5b68: $fd
    rst RST_38                                    ; $5b69: $ff
    rst RST_38                                    ; $5b6a: $ff
    ld [bc], a                                    ; $5b6b: $02

jr_006_5b6c:
    rst RST_38                                    ; $5b6c: $ff
    ld a, $fb                                     ; $5b6d: $3e $fb
    ld c, $ff                                     ; $5b6f: $0e $ff
    rst RST_38                                    ; $5b71: $ff
    ld bc, $0101                                  ; $5b72: $01 $01 $01
    rst RST_38                                    ; $5b75: $ff
    ld bc, $f1ff                                  ; $5b76: $01 $ff $f1
    rst RST_38                                    ; $5b79: $ff
    ld sp, hl                                     ; $5b7a: $f9
    rrca                                          ; $5b7b: $0f
    db $fd                                        ; $5b7c: $fd
    ld h, a                                       ; $5b7d: $67
    db $fd                                        ; $5b7e: $fd
    ld h, a                                       ; $5b7f: $67
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
    ld a, a                                       ; $5ba0: $7f
    ld a, a                                       ; $5ba1: $7f
    and b                                         ; $5ba2: $a0
    rst RST_38                                    ; $5ba3: $ff
    and b                                         ; $5ba4: $a0
    and b                                         ; $5ba5: $a0
    cp a                                          ; $5ba6: $bf
    and b                                         ; $5ba7: $a0
    rst RST_38                                    ; $5ba8: $ff
    and b                                         ; $5ba9: $a0
    ldh [$ffa0], a                                ; $5baa: $e0 $a0
    and b                                         ; $5bac: $a0
    and b                                         ; $5bad: $a0
    and b                                         ; $5bae: $a0
    rst RST_38                                    ; $5baf: $ff
    rst RST_38                                    ; $5bb0: $ff
    rst RST_38                                    ; $5bb1: $ff
    nop                                           ; $5bb2: $00
    rst RST_38                                    ; $5bb3: $ff
    nop                                           ; $5bb4: $00
    nop                                           ; $5bb5: $00
    rst RST_38                                    ; $5bb6: $ff
    nop                                           ; $5bb7: $00
    rst RST_38                                    ; $5bb8: $ff
    nop                                           ; $5bb9: $00
    nop                                           ; $5bba: $00
    nop                                           ; $5bbb: $00
    nop                                           ; $5bbc: $00
    nop                                           ; $5bbd: $00
    nop                                           ; $5bbe: $00
    rst RST_38                                    ; $5bbf: $ff
    rst RST_38                                    ; $5bc0: $ff
    rst RST_38                                    ; $5bc1: $ff
    ld bc, $03ff                                  ; $5bc2: $01 $ff $03
    ld [bc], a                                    ; $5bc5: $02
    rst RST_38                                    ; $5bc6: $ff
    ld [bc], a                                    ; $5bc7: $02
    rst RST_38                                    ; $5bc8: $ff
    ld bc, $0101                                  ; $5bc9: $01 $01 $01
    inc bc                                        ; $5bcc: $03
    ld [bc], a                                    ; $5bcd: $02
    inc bc                                        ; $5bce: $03
    cp $ff                                        ; $5bcf: $fe $ff
    rst RST_38                                    ; $5bd1: $ff
    add b                                         ; $5bd2: $80
    rst RST_38                                    ; $5bd3: $ff
    ret nz                                        ; $5bd4: $c0

    ld b, b                                       ; $5bd5: $40
    rst RST_38                                    ; $5bd6: $ff
    ld b, b                                       ; $5bd7: $40
    rst RST_38                                    ; $5bd8: $ff
    add b                                         ; $5bd9: $80
    add b                                         ; $5bda: $80
    add b                                         ; $5bdb: $80
    ret nz                                        ; $5bdc: $c0

    ld b, b                                       ; $5bdd: $40
    ret nz                                        ; $5bde: $c0

    ld a, a                                       ; $5bdf: $7f
    rst RST_38                                    ; $5be0: $ff
    rst RST_38                                    ; $5be1: $ff
    nop                                           ; $5be2: $00
    rst RST_38                                    ; $5be3: $ff
    nop                                           ; $5be4: $00
    nop                                           ; $5be5: $00
    rst RST_38                                    ; $5be6: $ff
    nop                                           ; $5be7: $00
    rst RST_38                                    ; $5be8: $ff
    nop                                           ; $5be9: $00
    nop                                           ; $5bea: $00
    nop                                           ; $5beb: $00
    nop                                           ; $5bec: $00
    nop                                           ; $5bed: $00
    nop                                           ; $5bee: $00
    rst RST_38                                    ; $5bef: $ff
    cp $fe                                        ; $5bf0: $fe $fe
    inc bc                                        ; $5bf2: $03
    rst RST_38                                    ; $5bf3: $ff
    dec b                                         ; $5bf4: $05
    dec b                                         ; $5bf5: $05
    db $fd                                        ; $5bf6: $fd
    dec b                                         ; $5bf7: $05
    rst RST_38                                    ; $5bf8: $ff
    dec b                                         ; $5bf9: $05
    rlca                                          ; $5bfa: $07
    dec b                                         ; $5bfb: $05
    dec b                                         ; $5bfc: $05
    dec b                                         ; $5bfd: $05
    dec b                                         ; $5bfe: $05
    rst RST_38                                    ; $5bff: $ff
    cp a                                          ; $5c00: $bf
    db $e4                                        ; $5c01: $e4
    cp a                                          ; $5c02: $bf
    and $9f                                       ; $5c03: $e6 $9f
    ldh a, [$ff8f]                                ; $5c05: $f0 $8f
    rst RST_38                                    ; $5c07: $ff
    add b                                         ; $5c08: $80
    rst RST_38                                    ; $5c09: $ff
    add b                                         ; $5c0a: $80
    rst RST_38                                    ; $5c0b: $ff
    add b                                         ; $5c0c: $80
    add b                                         ; $5c0d: $80
    rst RST_38                                    ; $5c0e: $ff
    rst RST_38                                    ; $5c0f: $ff
    rst RST_38                                    ; $5c10: $ff
    ld b, b                                       ; $5c11: $40
    rst RST_38                                    ; $5c12: $ff
    ld c, h                                       ; $5c13: $4c
    rst RST_38                                    ; $5c14: $ff
    call z, $ff33                                 ; $5c15: $cc $33 $ff
    nop                                           ; $5c18: $00
    rst RST_38                                    ; $5c19: $ff
    nop                                           ; $5c1a: $00
    rst RST_38                                    ; $5c1b: $ff
    nop                                           ; $5c1c: $00
    nop                                           ; $5c1d: $00
    rst RST_38                                    ; $5c1e: $ff
    rst RST_38                                    ; $5c1f: $ff
    rst RST_38                                    ; $5c20: $ff
    sub l                                         ; $5c21: $95
    rst RST_38                                    ; $5c22: $ff
    sbc l                                         ; $5c23: $9d
    rst RST_30                                    ; $5c24: $f7
    sbc l                                         ; $5c25: $9d
    ld h, d                                       ; $5c26: $62
    rst RST_38                                    ; $5c27: $ff
    nop                                           ; $5c28: $00
    rst RST_38                                    ; $5c29: $ff
    nop                                           ; $5c2a: $00
    rst RST_38                                    ; $5c2b: $ff
    nop                                           ; $5c2c: $00
    nop                                           ; $5c2d: $00
    rst RST_38                                    ; $5c2e: $ff
    rst RST_38                                    ; $5c2f: $ff
    ldh a, [$ff3f]                                ; $5c30: $f0 $3f
    db $fc                                        ; $5c32: $fc
    ccf                                           ; $5c33: $3f
    cp $03                                        ; $5c34: $fe $03
    db $fc                                        ; $5c36: $fc
    rst RST_38                                    ; $5c37: $ff
    nop                                           ; $5c38: $00
    rst RST_38                                    ; $5c39: $ff
    nop                                           ; $5c3a: $00
    rst RST_38                                    ; $5c3b: $ff
    nop                                           ; $5c3c: $00
    nop                                           ; $5c3d: $00
    rst RST_38                                    ; $5c3e: $ff
    rst RST_38                                    ; $5c3f: $ff
    ld a, a                                       ; $5c40: $7f
    call z, $cc7f                                 ; $5c41: $cc $7f $cc
    ccf                                           ; $5c44: $3f
    pop hl                                        ; $5c45: $e1
    ld e, $ff                                     ; $5c46: $1e $ff
    nop                                           ; $5c48: $00
    rst RST_38                                    ; $5c49: $ff
    nop                                           ; $5c4a: $00
    rst RST_38                                    ; $5c4b: $ff
    nop                                           ; $5c4c: $00
    nop                                           ; $5c4d: $00
    rst RST_38                                    ; $5c4e: $ff
    rst RST_38                                    ; $5c4f: $ff
    rst RST_30                                    ; $5c50: $f7
    sbc l                                         ; $5c51: $9d
    rst RST_38                                    ; $5c52: $ff
    srl l                                         ; $5c53: $cb $3d
    rst RST_20                                    ; $5c55: $e7
    jr @+$01                                      ; $5c56: $18 $ff

    nop                                           ; $5c58: $00
    rst RST_38                                    ; $5c59: $ff
    nop                                           ; $5c5a: $00
    rst RST_38                                    ; $5c5b: $ff
    nop                                           ; $5c5c: $00
    nop                                           ; $5c5d: $00
    rst RST_38                                    ; $5c5e: $ff
    rst RST_38                                    ; $5c5f: $ff
    di                                            ; $5c60: $f3
    ld a, $ff                                     ; $5c61: $3e $ff
    ld a, $ff                                     ; $5c63: $3e $ff
    ld [bc], a                                    ; $5c65: $02
    db $fd                                        ; $5c66: $fd
    rst RST_38                                    ; $5c67: $ff
    nop                                           ; $5c68: $00
    rst RST_38                                    ; $5c69: $ff
    nop                                           ; $5c6a: $00
    rst RST_38                                    ; $5c6b: $ff
    nop                                           ; $5c6c: $00
    nop                                           ; $5c6d: $00
    rst RST_38                                    ; $5c6e: $ff
    rst RST_38                                    ; $5c6f: $ff
    ld sp, hl                                     ; $5c70: $f9
    rrca                                          ; $5c71: $0f
    db $fd                                        ; $5c72: $fd
    ld h, a                                       ; $5c73: $67
    db $fd                                        ; $5c74: $fd
    ld h, a                                       ; $5c75: $67
    sbc c                                         ; $5c76: $99
    rst RST_38                                    ; $5c77: $ff
    ld bc, $01ff                                  ; $5c78: $01 $ff $01
    rst RST_38                                    ; $5c7b: $ff
    ld bc, rSB                                    ; $5c7c: $01 $01 $ff
    rst RST_38                                    ; $5c7f: $ff
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
    and b                                         ; $5ca0: $a0
    rst RST_38                                    ; $5ca1: $ff
    ld a, a                                       ; $5ca2: $7f
    ld a, a                                       ; $5ca3: $7f
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
    rst RST_38                                    ; $5cb1: $ff
    rst RST_38                                    ; $5cb2: $ff
    rst RST_38                                    ; $5cb3: $ff
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
    ld bc, rIE                                    ; $5cc0: $01 $ff $ff
    rst RST_38                                    ; $5cc3: $ff
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
    add b                                         ; $5cd0: $80
    rst RST_38                                    ; $5cd1: $ff
    rst RST_38                                    ; $5cd2: $ff
    rst RST_38                                    ; $5cd3: $ff
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
    rst RST_38                                    ; $5ce1: $ff
    rst RST_38                                    ; $5ce2: $ff
    rst RST_38                                    ; $5ce3: $ff
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
    dec b                                         ; $5cf0: $05
    rst RST_38                                    ; $5cf1: $ff
    cp $fe                                        ; $5cf2: $fe $fe
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
    ld bc, $0301                                  ; $5e02: $01 $01 $03
    ld [bc], a                                    ; $5e05: $02
    rlca                                          ; $5e06: $07
    dec b                                         ; $5e07: $05
    rlca                                          ; $5e08: $07
    dec b                                         ; $5e09: $05
    rlca                                          ; $5e0a: $07
    dec b                                         ; $5e0b: $05
    rlca                                          ; $5e0c: $07
    dec b                                         ; $5e0d: $05
    inc bc                                        ; $5e0e: $03
    ld [bc], a                                    ; $5e0f: $02
    nop                                           ; $5e10: $00
    nop                                           ; $5e11: $00
    adc h                                         ; $5e12: $8c
    adc h                                         ; $5e13: $8c
    rst RST_18                                    ; $5e14: $df
    ld d, e                                       ; $5e15: $53
    rst RST_38                                    ; $5e16: $ff
    xor l                                         ; $5e17: $ad
    rst RST_38                                    ; $5e18: $ff
    db $ed                                        ; $5e19: $ed
    rst RST_38                                    ; $5e1a: $ff
    db $ed                                        ; $5e1b: $ed
    rst RST_38                                    ; $5e1c: $ff
    xor l                                         ; $5e1d: $ad
    rst RST_18                                    ; $5e1e: $df
    ld d, e                                       ; $5e1f: $53
    nop                                           ; $5e20: $00
    nop                                           ; $5e21: $00
    sub e                                         ; $5e22: $93
    sub e                                         ; $5e23: $93
    rst RST_38                                    ; $5e24: $ff
    ld l, h                                       ; $5e25: $6c
    rst RST_38                                    ; $5e26: $ff
    dec hl                                        ; $5e27: $2b
    rst RST_38                                    ; $5e28: $ff
    ld c, e                                       ; $5e29: $4b
    rst RST_38                                    ; $5e2a: $ff
    ld l, d                                       ; $5e2b: $6a
    rst RST_38                                    ; $5e2c: $ff
    ld l, e                                       ; $5e2d: $6b
    rst RST_38                                    ; $5e2e: $ff
    ld l, h                                       ; $5e2f: $6c
    nop                                           ; $5e30: $00
    nop                                           ; $5e31: $00
    jr c, jr_006_5e6c                             ; $5e32: $38 $38

    db $fd                                        ; $5e34: $fd
    push bc                                       ; $5e35: $c5
    rst RST_38                                    ; $5e36: $ff
    ld e, d                                       ; $5e37: $5a
    rst RST_38                                    ; $5e38: $ff
    jp c, Jump_006_46ff                           ; $5e39: $da $ff $46

    rst RST_38                                    ; $5e3c: $ff
    ld e, d                                       ; $5e3d: $5a
    rst RST_38                                    ; $5e3e: $ff
    jp c, RST_00                                  ; $5e3f: $da $00 $00

    rst RST_08                                    ; $5e42: $cf
    rst RST_08                                    ; $5e43: $cf
    rst RST_38                                    ; $5e44: $ff
    jr nc, @+$01                                  ; $5e45: $30 $ff

    db $dd                                        ; $5e47: $dd
    rst RST_30                                    ; $5e48: $f7
    push de                                       ; $5e49: $d5
    rst RST_30                                    ; $5e4a: $f7
    dec d                                         ; $5e4b: $15
    rst RST_30                                    ; $5e4c: $f7
    push de                                       ; $5e4d: $d5
    rst RST_30                                    ; $5e4e: $f7
    push de                                       ; $5e4f: $d5
    nop                                           ; $5e50: $00
    nop                                           ; $5e51: $00
    and l                                         ; $5e52: $a5
    and l                                         ; $5e53: $a5
    rst RST_38                                    ; $5e54: $ff
    ld e, d                                       ; $5e55: $5a
    rst RST_38                                    ; $5e56: $ff
    jp c, Jump_006_5a7f                           ; $5e57: $da $7f $5a

    ld a, a                                       ; $5e5a: $7f
    ld e, d                                       ; $5e5b: $5a
    ld a, a                                       ; $5e5c: $7f
    ld e, d                                       ; $5e5d: $5a
    ccf                                           ; $5e5e: $3f
    ld h, $00                                     ; $5e5f: $26 $00
    nop                                           ; $5e61: $00
    ld b, $06                                     ; $5e62: $06 $06
    adc a                                         ; $5e64: $8f
    adc c                                         ; $5e65: $89
    sbc a                                         ; $5e66: $9f
    sub [hl]                                      ; $5e67: $96
    sbc a                                         ; $5e68: $9f
    sub [hl]                                      ; $5e69: $96
    sbc a                                         ; $5e6a: $9f
    sub b                                         ; $5e6b: $90

jr_006_5e6c:
    rst RST_38                                    ; $5e6c: $ff
    or $ff                                        ; $5e6d: $f6 $ff
    ld d, $00                                     ; $5e6f: $16 $00
    nop                                           ; $5e71: $00
    ld a, l                                       ; $5e72: $7d
    ld a, l                                       ; $5e73: $7d
    rst RST_38                                    ; $5e74: $ff
    add d                                         ; $5e75: $82
    rst RST_38                                    ; $5e76: $ff
    xor $bb                                       ; $5e77: $ee $bb
    xor d                                         ; $5e79: $aa
    cp e                                          ; $5e7a: $bb
    xor d                                         ; $5e7b: $aa
    cp e                                          ; $5e7c: $bb
    xor d                                         ; $5e7d: $aa
    cp e                                          ; $5e7e: $bb
    xor d                                         ; $5e7f: $aa
    nop                                           ; $5e80: $00
    nop                                           ; $5e81: $00
    ld [hl-], a                                   ; $5e82: $32
    ld [hl-], a                                   ; $5e83: $32
    rst RST_38                                    ; $5e84: $ff
    call $b4ff                                    ; $5e85: $cd $ff $b4
    rst RST_38                                    ; $5e88: $ff
    or l                                          ; $5e89: $b5
    rst RST_38                                    ; $5e8a: $ff
    or l                                          ; $5e8b: $b5
    rst RST_38                                    ; $5e8c: $ff
    or l                                          ; $5e8d: $b5
    rst RST_38                                    ; $5e8e: $ff
    call RST_00                                   ; $5e8f: $cd $00 $00
    ld c, [hl]                                    ; $5e92: $4e
    ld c, [hl]                                    ; $5e93: $4e
    rst RST_38                                    ; $5e94: $ff
    or c                                          ; $5e95: $b1
    cp $ae                                        ; $5e96: $fe $ae
    cp $32                                        ; $5e98: $fe $32
    rst RST_38                                    ; $5e9a: $ff
    cp l                                          ; $5e9b: $bd
    rst RST_38                                    ; $5e9c: $ff
    xor l                                         ; $5e9d: $ad
    cp $b2                                        ; $5e9e: $fe $b2
    nop                                           ; $5ea0: $00
    nop                                           ; $5ea1: $00
    ld d, b                                       ; $5ea2: $50
    ld d, b                                       ; $5ea3: $50
    ld hl, sp-$58                                 ; $5ea4: $f8 $a8
    ld hl, sp-$58                                 ; $5ea6: $f8 $a8
    ld hl, sp-$58                                 ; $5ea8: $f8 $a8
    ld hl, sp-$58                                 ; $5eaa: $f8 $a8
    ld d, b                                       ; $5eac: $50
    ld d, b                                       ; $5ead: $50
    ld hl, sp-$58                                 ; $5eae: $f8 $a8
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
    ld bc, $0001                                  ; $5f00: $01 $01 $00
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
    adc h                                         ; $5f10: $8c
    adc h                                         ; $5f11: $8c
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
    sub e                                         ; $5f20: $93
    sub e                                         ; $5f21: $93
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
    dec h                                         ; $5f30: $25
    dec h                                         ; $5f31: $25
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
    rrca                                          ; $5f3f: $0f
    ld [hl+], a                                   ; $5f40: $22
    ld [hl+], a                                   ; $5f41: $22
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
    rst RST_38                                    ; $5f4f: $ff
    add hl, de                                    ; $5f50: $19
    add hl, de                                    ; $5f51: $19
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
    rst RST_38                                    ; $5f5f: $ff
    jp hl                                         ; $5f60: $e9


    jp hl                                         ; $5f61: $e9


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
    rst RST_38                                    ; $5f6f: $ff
    ld de, $0011                                  ; $5f70: $11 $11 $00
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
    db $fc                                        ; $5f7f: $fc
    ld [hl-], a                                   ; $5f80: $32
    ld [hl-], a                                   ; $5f81: $32
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
    ld c, h                                       ; $5f90: $4c
    ld c, h                                       ; $5f91: $4c
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
    ld d, b                                       ; $5fa0: $50
    ld d, b                                       ; $5fa1: $50
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
    nop                                           ; $6020: $00
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
    nop                                           ; $6030: $00
    db $10                                        ; $6031: $10
    rlca                                          ; $6032: $07
    db $10                                        ; $6033: $10
    rlca                                          ; $6034: $07
    db $10                                        ; $6035: $10
    rlca                                          ; $6036: $07
    db $10                                        ; $6037: $10
    rlca                                          ; $6038: $07
    db $10                                        ; $6039: $10
    rlca                                          ; $603a: $07
    db $10                                        ; $603b: $10
    rlca                                          ; $603c: $07
    db $10                                        ; $603d: $10
    rlca                                          ; $603e: $07
    stop                                          ; $603f: $10 $00
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
    nop                                           ; $604b: $00
    rst RST_38                                    ; $604c: $ff
    nop                                           ; $604d: $00
    rst RST_38                                    ; $604e: $ff
    nop                                           ; $604f: $00
    nop                                           ; $6050: $00
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
    nop                                           ; $605b: $00
    rst RST_38                                    ; $605c: $ff
    nop                                           ; $605d: $00
    rst RST_38                                    ; $605e: $ff
    nop                                           ; $605f: $00
    nop                                           ; $6060: $00
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
    nop                                           ; $606b: $00
    rst RST_38                                    ; $606c: $ff
    nop                                           ; $606d: $00
    rst RST_38                                    ; $606e: $ff
    nop                                           ; $606f: $00
    nop                                           ; $6070: $00
    ld [bc], a                                    ; $6071: $02
    ld hl, sp+$02                                 ; $6072: $f8 $02
    ld hl, sp+$02                                 ; $6074: $f8 $02
    ld hl, sp+$02                                 ; $6076: $f8 $02
    ld hl, sp+$02                                 ; $6078: $f8 $02
    ld hl, sp+$02                                 ; $607a: $f8 $02
    ld hl, sp+$02                                 ; $607c: $f8 $02
    ld hl, sp+$02                                 ; $607e: $f8 $02
    nop                                           ; $6080: $00
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
    nop                                           ; $6110: $00
    nop                                           ; $6111: $00
    nop                                           ; $6112: $00
    nop                                           ; $6113: $00
    nop                                           ; $6114: $00
    nop                                           ; $6115: $00
    nop                                           ; $6116: $00
    nop                                           ; $6117: $00
    nop                                           ; $6118: $00
    nop                                           ; $6119: $00
    nop                                           ; $611a: $00
    nop                                           ; $611b: $00
    nop                                           ; $611c: $00
    nop                                           ; $611d: $00
    nop                                           ; $611e: $00
    nop                                           ; $611f: $00
    nop                                           ; $6120: $00
    nop                                           ; $6121: $00
    nop                                           ; $6122: $00
    nop                                           ; $6123: $00
    nop                                           ; $6124: $00
    nop                                           ; $6125: $00
    nop                                           ; $6126: $00
    nop                                           ; $6127: $00
    nop                                           ; $6128: $00
    nop                                           ; $6129: $00
    nop                                           ; $612a: $00
    nop                                           ; $612b: $00
    nop                                           ; $612c: $00
    nop                                           ; $612d: $00
    nop                                           ; $612e: $00
    nop                                           ; $612f: $00
    rlca                                          ; $6130: $07
    db $10                                        ; $6131: $10
    rlca                                          ; $6132: $07
    db $10                                        ; $6133: $10
    rlca                                          ; $6134: $07
    db $10                                        ; $6135: $10
    rlca                                          ; $6136: $07
    db $10                                        ; $6137: $10
    rlca                                          ; $6138: $07
    db $10                                        ; $6139: $10
    rlca                                          ; $613a: $07
    db $10                                        ; $613b: $10
    rlca                                          ; $613c: $07
    db $10                                        ; $613d: $10
    rlca                                          ; $613e: $07
    db $10                                        ; $613f: $10
    rst RST_38                                    ; $6140: $ff
    nop                                           ; $6141: $00
    rst RST_38                                    ; $6142: $ff
    nop                                           ; $6143: $00
    rst RST_38                                    ; $6144: $ff
    nop                                           ; $6145: $00
    rst RST_38                                    ; $6146: $ff
    nop                                           ; $6147: $00
    rst RST_38                                    ; $6148: $ff
    nop                                           ; $6149: $00
    rst RST_38                                    ; $614a: $ff
    nop                                           ; $614b: $00
    rst RST_38                                    ; $614c: $ff
    nop                                           ; $614d: $00
    rst RST_38                                    ; $614e: $ff
    nop                                           ; $614f: $00
    rst RST_38                                    ; $6150: $ff
    nop                                           ; $6151: $00
    rst RST_38                                    ; $6152: $ff
    nop                                           ; $6153: $00
    rst RST_38                                    ; $6154: $ff
    nop                                           ; $6155: $00
    rst RST_38                                    ; $6156: $ff
    nop                                           ; $6157: $00
    rst RST_38                                    ; $6158: $ff
    nop                                           ; $6159: $00
    rst RST_38                                    ; $615a: $ff
    nop                                           ; $615b: $00
    rst RST_38                                    ; $615c: $ff
    nop                                           ; $615d: $00
    rst RST_38                                    ; $615e: $ff
    nop                                           ; $615f: $00
    rst RST_38                                    ; $6160: $ff
    nop                                           ; $6161: $00
    rst RST_38                                    ; $6162: $ff
    nop                                           ; $6163: $00
    rst RST_38                                    ; $6164: $ff
    nop                                           ; $6165: $00
    rst RST_38                                    ; $6166: $ff
    nop                                           ; $6167: $00
    rst RST_38                                    ; $6168: $ff
    nop                                           ; $6169: $00
    rst RST_38                                    ; $616a: $ff
    nop                                           ; $616b: $00
    rst RST_38                                    ; $616c: $ff
    nop                                           ; $616d: $00
    rst RST_38                                    ; $616e: $ff
    nop                                           ; $616f: $00
    ld hl, sp+$02                                 ; $6170: $f8 $02
    ld hl, sp+$02                                 ; $6172: $f8 $02
    ld hl, sp+$02                                 ; $6174: $f8 $02
    ld hl, sp+$02                                 ; $6176: $f8 $02
    ld hl, sp+$02                                 ; $6178: $f8 $02
    ld hl, sp+$02                                 ; $617a: $f8 $02
    ld hl, sp+$02                                 ; $617c: $f8 $02
    ld hl, sp+$02                                 ; $617e: $f8 $02
    nop                                           ; $6180: $00
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
    nop                                           ; $6220: $00
    nop                                           ; $6221: $00
    nop                                           ; $6222: $00
    nop                                           ; $6223: $00
    nop                                           ; $6224: $00
    nop                                           ; $6225: $00
    nop                                           ; $6226: $00
    nop                                           ; $6227: $00
    nop                                           ; $6228: $00
    nop                                           ; $6229: $00
    nop                                           ; $622a: $00
    nop                                           ; $622b: $00
    nop                                           ; $622c: $00
    nop                                           ; $622d: $00
    nop                                           ; $622e: $00
    nop                                           ; $622f: $00
    rlca                                          ; $6230: $07
    db $10                                        ; $6231: $10
    rlca                                          ; $6232: $07
    db $10                                        ; $6233: $10
    rlca                                          ; $6234: $07
    db $10                                        ; $6235: $10
    rlca                                          ; $6236: $07
    db $10                                        ; $6237: $10
    rlca                                          ; $6238: $07
    db $10                                        ; $6239: $10
    rlca                                          ; $623a: $07
    db $10                                        ; $623b: $10
    rlca                                          ; $623c: $07
    db $10                                        ; $623d: $10
    rlca                                          ; $623e: $07
    db $10                                        ; $623f: $10
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
    rst RST_38                                    ; $6250: $ff
    nop                                           ; $6251: $00
    rst RST_38                                    ; $6252: $ff
    nop                                           ; $6253: $00
    rst RST_38                                    ; $6254: $ff
    nop                                           ; $6255: $00
    rst RST_38                                    ; $6256: $ff
    nop                                           ; $6257: $00
    rst RST_38                                    ; $6258: $ff
    nop                                           ; $6259: $00
    rst RST_38                                    ; $625a: $ff
    nop                                           ; $625b: $00
    rst RST_38                                    ; $625c: $ff
    nop                                           ; $625d: $00
    rst RST_38                                    ; $625e: $ff
    nop                                           ; $625f: $00
    rst RST_38                                    ; $6260: $ff
    nop                                           ; $6261: $00
    rst RST_38                                    ; $6262: $ff
    nop                                           ; $6263: $00
    rst RST_38                                    ; $6264: $ff
    nop                                           ; $6265: $00
    rst RST_38                                    ; $6266: $ff
    nop                                           ; $6267: $00
    rst RST_38                                    ; $6268: $ff
    nop                                           ; $6269: $00
    rst RST_38                                    ; $626a: $ff
    nop                                           ; $626b: $00
    rst RST_38                                    ; $626c: $ff
    nop                                           ; $626d: $00
    rst RST_38                                    ; $626e: $ff
    nop                                           ; $626f: $00
    ld hl, sp+$02                                 ; $6270: $f8 $02
    ld hl, sp+$02                                 ; $6272: $f8 $02
    ld hl, sp+$02                                 ; $6274: $f8 $02
    ld hl, sp+$02                                 ; $6276: $f8 $02
    ld hl, sp+$02                                 ; $6278: $f8 $02
    ld hl, sp+$02                                 ; $627a: $f8 $02
    ld hl, sp+$02                                 ; $627c: $f8 $02
    ld hl, sp+$02                                 ; $627e: $f8 $02
    nop                                           ; $6280: $00
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
    nop                                           ; $6320: $00
    nop                                           ; $6321: $00
    nop                                           ; $6322: $00
    nop                                           ; $6323: $00
    nop                                           ; $6324: $00
    nop                                           ; $6325: $00
    nop                                           ; $6326: $00
    nop                                           ; $6327: $00
    nop                                           ; $6328: $00
    nop                                           ; $6329: $00
    nop                                           ; $632a: $00
    nop                                           ; $632b: $00
    nop                                           ; $632c: $00
    nop                                           ; $632d: $00
    nop                                           ; $632e: $00
    nop                                           ; $632f: $00
    rlca                                          ; $6330: $07
    db $10                                        ; $6331: $10
    rlca                                          ; $6332: $07
    db $10                                        ; $6333: $10
    rlca                                          ; $6334: $07
    db $10                                        ; $6335: $10
    rlca                                          ; $6336: $07
    db $10                                        ; $6337: $10
    rlca                                          ; $6338: $07
    db $10                                        ; $6339: $10
    rlca                                          ; $633a: $07
    db $10                                        ; $633b: $10
    rlca                                          ; $633c: $07
    db $10                                        ; $633d: $10
    rlca                                          ; $633e: $07
    db $10                                        ; $633f: $10
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
    rst RST_38                                    ; $6350: $ff
    nop                                           ; $6351: $00
    rst RST_38                                    ; $6352: $ff
    nop                                           ; $6353: $00
    rst RST_38                                    ; $6354: $ff
    nop                                           ; $6355: $00
    rst RST_38                                    ; $6356: $ff
    nop                                           ; $6357: $00
    rst RST_38                                    ; $6358: $ff
    nop                                           ; $6359: $00
    rst RST_38                                    ; $635a: $ff
    nop                                           ; $635b: $00
    rst RST_38                                    ; $635c: $ff
    nop                                           ; $635d: $00
    rst RST_38                                    ; $635e: $ff
    nop                                           ; $635f: $00
    rst RST_38                                    ; $6360: $ff
    nop                                           ; $6361: $00
    rst RST_38                                    ; $6362: $ff
    nop                                           ; $6363: $00
    rst RST_38                                    ; $6364: $ff
    nop                                           ; $6365: $00
    rst RST_38                                    ; $6366: $ff
    nop                                           ; $6367: $00
    rst RST_38                                    ; $6368: $ff
    nop                                           ; $6369: $00
    rst RST_38                                    ; $636a: $ff
    nop                                           ; $636b: $00
    rst RST_38                                    ; $636c: $ff
    nop                                           ; $636d: $00
    rst RST_38                                    ; $636e: $ff
    nop                                           ; $636f: $00
    ld hl, sp+$02                                 ; $6370: $f8 $02
    ld hl, sp+$02                                 ; $6372: $f8 $02
    ld hl, sp+$02                                 ; $6374: $f8 $02
    ld hl, sp+$02                                 ; $6376: $f8 $02
    ld hl, sp+$02                                 ; $6378: $f8 $02
    ld hl, sp+$02                                 ; $637a: $f8 $02
    ld hl, sp+$02                                 ; $637c: $f8 $02
    ld hl, sp+$02                                 ; $637e: $f8 $02
    nop                                           ; $6380: $00
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
    nop                                           ; $6420: $00
    nop                                           ; $6421: $00
    nop                                           ; $6422: $00
    nop                                           ; $6423: $00
    nop                                           ; $6424: $00
    nop                                           ; $6425: $00
    nop                                           ; $6426: $00
    nop                                           ; $6427: $00
    nop                                           ; $6428: $00
    nop                                           ; $6429: $00
    nop                                           ; $642a: $00
    nop                                           ; $642b: $00
    nop                                           ; $642c: $00
    nop                                           ; $642d: $00
    nop                                           ; $642e: $00
    nop                                           ; $642f: $00
    rlca                                          ; $6430: $07
    stop                                          ; $6431: $10 $00
    stop                                          ; $6433: $10 $00
    rrca                                          ; $6435: $0f
    nop                                           ; $6436: $00
    nop                                           ; $6437: $00
    nop                                           ; $6438: $00
    nop                                           ; $6439: $00
    nop                                           ; $643a: $00
    nop                                           ; $643b: $00
    nop                                           ; $643c: $00
    nop                                           ; $643d: $00
    nop                                           ; $643e: $00
    nop                                           ; $643f: $00
    rst RST_38                                    ; $6440: $ff
    nop                                           ; $6441: $00
    nop                                           ; $6442: $00
    nop                                           ; $6443: $00
    nop                                           ; $6444: $00
    rst RST_38                                    ; $6445: $ff
    nop                                           ; $6446: $00
    nop                                           ; $6447: $00
    nop                                           ; $6448: $00
    nop                                           ; $6449: $00
    nop                                           ; $644a: $00
    nop                                           ; $644b: $00
    nop                                           ; $644c: $00
    nop                                           ; $644d: $00
    nop                                           ; $644e: $00
    nop                                           ; $644f: $00
    rst RST_38                                    ; $6450: $ff
    nop                                           ; $6451: $00
    nop                                           ; $6452: $00
    nop                                           ; $6453: $00
    nop                                           ; $6454: $00
    rst RST_38                                    ; $6455: $ff
    nop                                           ; $6456: $00
    nop                                           ; $6457: $00
    nop                                           ; $6458: $00
    nop                                           ; $6459: $00
    nop                                           ; $645a: $00
    nop                                           ; $645b: $00
    nop                                           ; $645c: $00
    nop                                           ; $645d: $00
    nop                                           ; $645e: $00
    nop                                           ; $645f: $00
    rst RST_38                                    ; $6460: $ff
    nop                                           ; $6461: $00
    nop                                           ; $6462: $00
    nop                                           ; $6463: $00
    nop                                           ; $6464: $00
    rst RST_38                                    ; $6465: $ff
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
    ld hl, sp+$02                                 ; $6470: $f8 $02
    nop                                           ; $6472: $00
    ld [bc], a                                    ; $6473: $02
    nop                                           ; $6474: $00
    db $fc                                        ; $6475: $fc
    nop                                           ; $6476: $00
    nop                                           ; $6477: $00
    nop                                           ; $6478: $00
    nop                                           ; $6479: $00
    nop                                           ; $647a: $00
    nop                                           ; $647b: $00
    nop                                           ; $647c: $00
    nop                                           ; $647d: $00
    nop                                           ; $647e: $00
    nop                                           ; $647f: $00
    nop                                           ; $6480: $00
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
    nop                                           ; $6570: $00
    nop                                           ; $6571: $00
    nop                                           ; $6572: $00
    nop                                           ; $6573: $00
    nop                                           ; $6574: $00
    nop                                           ; $6575: $00
    nop                                           ; $6576: $00
    nop                                           ; $6577: $00
    nop                                           ; $6578: $00
    nop                                           ; $6579: $00
    nop                                           ; $657a: $00
    nop                                           ; $657b: $00
    nop                                           ; $657c: $00
    nop                                           ; $657d: $00
    nop                                           ; $657e: $00
    nop                                           ; $657f: $00
    nop                                           ; $6580: $00
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
    nop                                           ; $6670: $00
    nop                                           ; $6671: $00
    nop                                           ; $6672: $00
    nop                                           ; $6673: $00
    nop                                           ; $6674: $00
    nop                                           ; $6675: $00
    nop                                           ; $6676: $00
    nop                                           ; $6677: $00
    nop                                           ; $6678: $00
    nop                                           ; $6679: $00
    nop                                           ; $667a: $00
    nop                                           ; $667b: $00
    nop                                           ; $667c: $00
    nop                                           ; $667d: $00
    nop                                           ; $667e: $00
    nop                                           ; $667f: $00
    nop                                           ; $6680: $00
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
    nop                                           ; $6706: $00
    nop                                           ; $6707: $00
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
    nop                                           ; $6716: $00
    nop                                           ; $6717: $00
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
    nop                                           ; $6726: $00
    nop                                           ; $6727: $00
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
    nop                                           ; $6736: $00
    nop                                           ; $6737: $00
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
    nop                                           ; $6746: $00
    nop                                           ; $6747: $00
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
    nop                                           ; $6756: $00
    nop                                           ; $6757: $00
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
    nop                                           ; $6766: $00
    nop                                           ; $6767: $00
    nop                                           ; $6768: $00
    nop                                           ; $6769: $00
    nop                                           ; $676a: $00
    nop                                           ; $676b: $00
    nop                                           ; $676c: $00
    nop                                           ; $676d: $00
    nop                                           ; $676e: $00
    nop                                           ; $676f: $00
    nop                                           ; $6770: $00
    nop                                           ; $6771: $00
    nop                                           ; $6772: $00
    nop                                           ; $6773: $00
    nop                                           ; $6774: $00
    nop                                           ; $6775: $00
    nop                                           ; $6776: $00
    nop                                           ; $6777: $00
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
    nop                                           ; $6802: $00
    nop                                           ; $6803: $00
    nop                                           ; $6804: $00
    nop                                           ; $6805: $00
    nop                                           ; $6806: $00
    nop                                           ; $6807: $00
    nop                                           ; $6808: $00
    nop                                           ; $6809: $00
    nop                                           ; $680a: $00
    nop                                           ; $680b: $00
    nop                                           ; $680c: $00
    nop                                           ; $680d: $00
    nop                                           ; $680e: $00
    nop                                           ; $680f: $00
    nop                                           ; $6810: $00
    nop                                           ; $6811: $00
    nop                                           ; $6812: $00
    nop                                           ; $6813: $00
    nop                                           ; $6814: $00
    nop                                           ; $6815: $00
    nop                                           ; $6816: $00
    nop                                           ; $6817: $00
    nop                                           ; $6818: $00
    nop                                           ; $6819: $00
    nop                                           ; $681a: $00
    nop                                           ; $681b: $00
    nop                                           ; $681c: $00
    nop                                           ; $681d: $00
    nop                                           ; $681e: $00
    nop                                           ; $681f: $00
    nop                                           ; $6820: $00
    nop                                           ; $6821: $00
    nop                                           ; $6822: $00
    nop                                           ; $6823: $00
    nop                                           ; $6824: $00
    nop                                           ; $6825: $00
    nop                                           ; $6826: $00
    nop                                           ; $6827: $00
    nop                                           ; $6828: $00
    nop                                           ; $6829: $00
    nop                                           ; $682a: $00
    nop                                           ; $682b: $00
    nop                                           ; $682c: $00
    nop                                           ; $682d: $00
    nop                                           ; $682e: $00
    nop                                           ; $682f: $00
    nop                                           ; $6830: $00
    nop                                           ; $6831: $00
    nop                                           ; $6832: $00
    nop                                           ; $6833: $00
    nop                                           ; $6834: $00
    nop                                           ; $6835: $00
    nop                                           ; $6836: $00
    nop                                           ; $6837: $00
    nop                                           ; $6838: $00
    nop                                           ; $6839: $00
    nop                                           ; $683a: $00
    nop                                           ; $683b: $00
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
    nop                                           ; $684c: $00
    nop                                           ; $684d: $00
    nop                                           ; $684e: $00
    nop                                           ; $684f: $00
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

jr_006_6aff:
    nop                                           ; $6aff: $00
    ld hl, sp+$00                                 ; $6b00: $f8 $00
    ld hl, sp+$00                                 ; $6b02: $f8 $00
    ld hl, sp+$00                                 ; $6b04: $f8 $00
    ld hl, sp+$00                                 ; $6b06: $f8 $00
    ld hl, sp+$00                                 ; $6b08: $f8 $00
    nop                                           ; $6b0a: $00

jr_006_6b0b:
    nop                                           ; $6b0b: $00
    nop                                           ; $6b0c: $00
    nop                                           ; $6b0d: $00
    nop                                           ; $6b0e: $00
    nop                                           ; $6b0f: $00
    nop                                           ; $6b10: $00
    ld hl, sp+$00                                 ; $6b11: $f8 $00
    ld hl, sp+$00                                 ; $6b13: $f8 $00
    ld hl, sp+$00                                 ; $6b15: $f8 $00
    ld hl, sp+$00                                 ; $6b17: $f8 $00
    ld hl, sp+$00                                 ; $6b19: $f8 $00
    nop                                           ; $6b1b: $00
    nop                                           ; $6b1c: $00
    nop                                           ; $6b1d: $00
    nop                                           ; $6b1e: $00
    nop                                           ; $6b1f: $00
    ld hl, sp+$00                                 ; $6b20: $f8 $00
    ldh a, [rP1]                                  ; $6b22: $f0 $00
    xor b                                         ; $6b24: $a8
    ld d, b                                       ; $6b25: $50
    ret c                                         ; $6b26: $d8

    jr nz, @-$06                                  ; $6b27: $20 $f8

    nop                                           ; $6b29: $00
    nop                                           ; $6b2a: $00
    nop                                           ; $6b2b: $00
    nop                                           ; $6b2c: $00
    nop                                           ; $6b2d: $00
    nop                                           ; $6b2e: $00
    nop                                           ; $6b2f: $00
    ld hl, sp+$00                                 ; $6b30: $f8 $00
    ld hl, sp+$00                                 ; $6b32: $f8 $00
    ld hl, sp+$00                                 ; $6b34: $f8 $00
    ld hl, sp+$00                                 ; $6b36: $f8 $00
    ld hl, sp+$00                                 ; $6b38: $f8 $00
    nop                                           ; $6b3a: $00
    nop                                           ; $6b3b: $00
    nop                                           ; $6b3c: $00
    nop                                           ; $6b3d: $00
    nop                                           ; $6b3e: $00
    nop                                           ; $6b3f: $00
    nop                                           ; $6b40: $00
    ld hl, sp+$00                                 ; $6b41: $f8 $00
    ld hl, sp+$00                                 ; $6b43: $f8 $00
    ld hl, sp+$00                                 ; $6b45: $f8 $00
    ld hl, sp+$00                                 ; $6b47: $f8 $00
    ld hl, sp+$00                                 ; $6b49: $f8 $00
    nop                                           ; $6b4b: $00
    nop                                           ; $6b4c: $00
    nop                                           ; $6b4d: $00
    nop                                           ; $6b4e: $00
    nop                                           ; $6b4f: $00
    ld [hl], b                                    ; $6b50: $70
    adc b                                         ; $6b51: $88
    xor b                                         ; $6b52: $a8
    ld d, b                                       ; $6b53: $50
    ret c                                         ; $6b54: $d8

    jr nz, jr_006_6aff                            ; $6b55: $20 $a8

    ld d, b                                       ; $6b57: $50
    ld [hl], b                                    ; $6b58: $70
    adc b                                         ; $6b59: $88
    nop                                           ; $6b5a: $00
    nop                                           ; $6b5b: $00
    nop                                           ; $6b5c: $00
    nop                                           ; $6b5d: $00
    nop                                           ; $6b5e: $00
    nop                                           ; $6b5f: $00
    adc b                                         ; $6b60: $88
    jr nz, jr_006_6b0b                            ; $6b61: $20 $a8

    ld d, b                                       ; $6b63: $50
    ret z                                         ; $6b64: $c8

    db $10                                        ; $6b65: $10
    ret c                                         ; $6b66: $d8

    nop                                           ; $6b67: $00
    ret c                                         ; $6b68: $d8

    jr nz, jr_006_6b6b                            ; $6b69: $20 $00

jr_006_6b6b:
    nop                                           ; $6b6b: $00
    nop                                           ; $6b6c: $00
    nop                                           ; $6b6d: $00
    nop                                           ; $6b6e: $00
    nop                                           ; $6b6f: $00
    nop                                           ; $6b70: $00
    ld hl, sp+$00                                 ; $6b71: $f8 $00
    ld hl, sp+$00                                 ; $6b73: $f8 $00
    ld hl, sp+$00                                 ; $6b75: $f8 $00
    ld hl, sp+$00                                 ; $6b77: $f8 $00
    ld hl, sp+$00                                 ; $6b79: $f8 $00
    nop                                           ; $6b7b: $00
    nop                                           ; $6b7c: $00
    nop                                           ; $6b7d: $00
    nop                                           ; $6b7e: $00
    nop                                           ; $6b7f: $00
    ld hl, sp+$00                                 ; $6b80: $f8 $00
    ld hl, sp+$00                                 ; $6b82: $f8 $00
    ld hl, sp+$00                                 ; $6b84: $f8 $00
    ld hl, sp+$00                                 ; $6b86: $f8 $00
    ld hl, sp+$00                                 ; $6b88: $f8 $00
    nop                                           ; $6b8a: $00
    nop                                           ; $6b8b: $00
    nop                                           ; $6b8c: $00
    nop                                           ; $6b8d: $00
    nop                                           ; $6b8e: $00
    nop                                           ; $6b8f: $00
    sub b                                         ; $6b90: $90
    nop                                           ; $6b91: $00
    ld c, b                                       ; $6b92: $48
    nop                                           ; $6b93: $00
    jr nz, jr_006_6b96                            ; $6b94: $20 $00

jr_006_6b96:
    sub b                                         ; $6b96: $90

jr_006_6b97:
    nop                                           ; $6b97: $00
    ld c, b                                       ; $6b98: $48
    nop                                           ; $6b99: $00
    nop                                           ; $6b9a: $00
    nop                                           ; $6b9b: $00
    nop                                           ; $6b9c: $00
    nop                                           ; $6b9d: $00
    nop                                           ; $6b9e: $00
    nop                                           ; $6b9f: $00
    sub b                                         ; $6ba0: $90
    ld hl, sp+$48                                 ; $6ba1: $f8 $48
    ld hl, sp+$20                                 ; $6ba3: $f8 $20
    ld hl, sp-$70                                 ; $6ba5: $f8 $90
    ld hl, sp+$48                                 ; $6ba7: $f8 $48
    ld hl, sp+$00                                 ; $6ba9: $f8 $00
    nop                                           ; $6bab: $00
    nop                                           ; $6bac: $00
    nop                                           ; $6bad: $00
    nop                                           ; $6bae: $00
    nop                                           ; $6baf: $00
    ld l, b                                       ; $6bb0: $68
    sub b                                         ; $6bb1: $90
    or b                                          ; $6bb2: $b0
    ld c, b                                       ; $6bb3: $48
    ret c                                         ; $6bb4: $d8

    jr nz, jr_006_6c1f                            ; $6bb5: $20 $68

    sub b                                         ; $6bb7: $90
    or b                                          ; $6bb8: $b0
    ld c, b                                       ; $6bb9: $48
    nop                                           ; $6bba: $00
    nop                                           ; $6bbb: $00
    nop                                           ; $6bbc: $00
    nop                                           ; $6bbd: $00
    nop                                           ; $6bbe: $00
    nop                                           ; $6bbf: $00
    ret c                                         ; $6bc0: $d8

jr_006_6bc1:
    nop                                           ; $6bc1: $00
    xor b                                         ; $6bc2: $a8
    nop                                           ; $6bc3: $00
    ld [hl], b                                    ; $6bc4: $70
    nop                                           ; $6bc5: $00
    xor b                                         ; $6bc6: $a8
    nop                                           ; $6bc7: $00
    ret c                                         ; $6bc8: $d8

    nop                                           ; $6bc9: $00
    nop                                           ; $6bca: $00
    nop                                           ; $6bcb: $00
    nop                                           ; $6bcc: $00
    nop                                           ; $6bcd: $00
    nop                                           ; $6bce: $00
    nop                                           ; $6bcf: $00
    nop                                           ; $6bd0: $00
    ret c                                         ; $6bd1: $d8

    nop                                           ; $6bd2: $00
    xor b                                         ; $6bd3: $a8
    nop                                           ; $6bd4: $00
    ld [hl], b                                    ; $6bd5: $70
    nop                                           ; $6bd6: $00
    xor b                                         ; $6bd7: $a8
    nop                                           ; $6bd8: $00
    ret c                                         ; $6bd9: $d8

    nop                                           ; $6bda: $00
    nop                                           ; $6bdb: $00
    nop                                           ; $6bdc: $00
    nop                                           ; $6bdd: $00
    nop                                           ; $6bde: $00
    nop                                           ; $6bdf: $00
    ret c                                         ; $6be0: $d8

    nop                                           ; $6be1: $00
    adc b                                         ; $6be2: $88
    jr nz, jr_006_6be5                            ; $6be3: $20 $00

jr_006_6be5:
    ld [hl], b                                    ; $6be5: $70
    adc b                                         ; $6be6: $88
    jr nz, jr_006_6bc1                            ; $6be7: $20 $d8

    nop                                           ; $6be9: $00
    nop                                           ; $6bea: $00
    nop                                           ; $6beb: $00
    nop                                           ; $6bec: $00
    nop                                           ; $6bed: $00
    nop                                           ; $6bee: $00
    nop                                           ; $6bef: $00
    add sp, $00                                   ; $6bf0: $e8 $00
    ld [$a800], sp                                ; $6bf2: $08 $00 $a8
    nop                                           ; $6bf5: $00
    add b                                         ; $6bf6: $80
    nop                                           ; $6bf7: $00
    cp b                                          ; $6bf8: $b8
    nop                                           ; $6bf9: $00
    nop                                           ; $6bfa: $00
    nop                                           ; $6bfb: $00
    nop                                           ; $6bfc: $00
    nop                                           ; $6bfd: $00
    nop                                           ; $6bfe: $00
    nop                                           ; $6bff: $00
    nop                                           ; $6c00: $00
    add sp, $00                                   ; $6c01: $e8 $00
    ld [$a800], sp                                ; $6c03: $08 $00 $a8
    nop                                           ; $6c06: $00
    add b                                         ; $6c07: $80
    nop                                           ; $6c08: $00
    cp b                                          ; $6c09: $b8
    nop                                           ; $6c0a: $00
    nop                                           ; $6c0b: $00
    nop                                           ; $6c0c: $00
    nop                                           ; $6c0d: $00
    nop                                           ; $6c0e: $00
    nop                                           ; $6c0f: $00
    add sp, $00                                   ; $6c10: $e8 $00
    ld [$a800], sp                                ; $6c12: $08 $00 $a8
    jr nz, jr_006_6b97                            ; $6c15: $20 $80

    nop                                           ; $6c17: $00
    cp b                                          ; $6c18: $b8
    nop                                           ; $6c19: $00
    nop                                           ; $6c1a: $00
    nop                                           ; $6c1b: $00
    nop                                           ; $6c1c: $00
    nop                                           ; $6c1d: $00
    nop                                           ; $6c1e: $00

jr_006_6c1f:
    nop                                           ; $6c1f: $00
    ld hl, sp+$00                                 ; $6c20: $f8 $00
    ld hl, sp+$00                                 ; $6c22: $f8 $00
    ld hl, sp+$00                                 ; $6c24: $f8 $00
    ld hl, sp+$00                                 ; $6c26: $f8 $00
    ld hl, sp+$00                                 ; $6c28: $f8 $00
    nop                                           ; $6c2a: $00
    nop                                           ; $6c2b: $00
    nop                                           ; $6c2c: $00
    nop                                           ; $6c2d: $00
    nop                                           ; $6c2e: $00
    nop                                           ; $6c2f: $00
    nop                                           ; $6c30: $00
    ld hl, sp+$00                                 ; $6c31: $f8 $00
    ld hl, sp+$00                                 ; $6c33: $f8 $00
    ld hl, sp+$00                                 ; $6c35: $f8 $00
    ld hl, sp+$00                                 ; $6c37: $f8 $00
    ld hl, sp+$00                                 ; $6c39: $f8 $00
    nop                                           ; $6c3b: $00
    nop                                           ; $6c3c: $00
    nop                                           ; $6c3d: $00
    nop                                           ; $6c3e: $00
    nop                                           ; $6c3f: $00
    adc b                                         ; $6c40: $88
    nop                                           ; $6c41: $00
    ld d, b                                       ; $6c42: $50
    nop                                           ; $6c43: $00
    jr nz, jr_006_6c46                            ; $6c44: $20 $00

jr_006_6c46:
    ld d, b                                       ; $6c46: $50
    nop                                           ; $6c47: $00
    adc b                                         ; $6c48: $88
    nop                                           ; $6c49: $00
    nop                                           ; $6c4a: $00
    nop                                           ; $6c4b: $00
    nop                                           ; $6c4c: $00
    nop                                           ; $6c4d: $00
    nop                                           ; $6c4e: $00
    nop                                           ; $6c4f: $00
    ld hl, sp+$00                                 ; $6c50: $f8 $00
    ret c                                         ; $6c52: $d8

    nop                                           ; $6c53: $00
    nop                                           ; $6c54: $00
    nop                                           ; $6c55: $00
    ret c                                         ; $6c56: $d8

    nop                                           ; $6c57: $00
    ld hl, sp+$00                                 ; $6c58: $f8 $00
    nop                                           ; $6c5a: $00
    nop                                           ; $6c5b: $00
    nop                                           ; $6c5c: $00
    nop                                           ; $6c5d: $00
    nop                                           ; $6c5e: $00
    nop                                           ; $6c5f: $00
    ld hl, sp-$08                                 ; $6c60: $f8 $f8
    ret c                                         ; $6c62: $d8

    ld hl, sp+$00                                 ; $6c63: $f8 $00
    ld hl, sp-$28                                 ; $6c65: $f8 $d8
    ld hl, sp-$08                                 ; $6c67: $f8 $f8
    ld hl, sp+$00                                 ; $6c69: $f8 $00
    nop                                           ; $6c6b: $00
    nop                                           ; $6c6c: $00
    nop                                           ; $6c6d: $00
    nop                                           ; $6c6e: $00
    nop                                           ; $6c6f: $00
    ld hl, sp+$00                                 ; $6c70: $f8 $00
    ld hl, sp+$20                                 ; $6c72: $f8 $20
    ld [hl], b                                    ; $6c74: $70
    ld [hl], b                                    ; $6c75: $70
    ld hl, sp+$20                                 ; $6c76: $f8 $20
    ld hl, sp+$00                                 ; $6c78: $f8 $00
    nop                                           ; $6c7a: $00
    nop                                           ; $6c7b: $00
    nop                                           ; $6c7c: $00
    nop                                           ; $6c7d: $00
    nop                                           ; $6c7e: $00
    nop                                           ; $6c7f: $00
    ld hl, sp+$00                                 ; $6c80: $f8 $00
    jr jr_006_6c84                                ; $6c82: $18 $00

jr_006_6c84:
    ret c                                         ; $6c84: $d8

    nop                                           ; $6c85: $00
    ret nz                                        ; $6c86: $c0

    nop                                           ; $6c87: $00
    ld hl, sp+$00                                 ; $6c88: $f8 $00
    nop                                           ; $6c8a: $00
    nop                                           ; $6c8b: $00

jr_006_6c8c:
    nop                                           ; $6c8c: $00
    nop                                           ; $6c8d: $00
    nop                                           ; $6c8e: $00
    nop                                           ; $6c8f: $00
    ld hl, sp-$08                                 ; $6c90: $f8 $f8
    jr jr_006_6c8c                                ; $6c92: $18 $f8

    ret c                                         ; $6c94: $d8

    ld hl, sp-$40                                 ; $6c95: $f8 $c0
    ld hl, sp-$08                                 ; $6c97: $f8 $f8
    ld hl, sp+$00                                 ; $6c99: $f8 $00
    nop                                           ; $6c9b: $00
    nop                                           ; $6c9c: $00
    nop                                           ; $6c9d: $00
    nop                                           ; $6c9e: $00
    nop                                           ; $6c9f: $00
    ld hl, sp+$00                                 ; $6ca0: $f8 $00
    ld hl, sp-$20                                 ; $6ca2: $f8 $e0
    ld hl, sp+$20                                 ; $6ca4: $f8 $20
    ld hl, sp+$38                                 ; $6ca6: $f8 $38
    ld hl, sp+$00                                 ; $6ca8: $f8 $00
    nop                                           ; $6caa: $00
    nop                                           ; $6cab: $00
    nop                                           ; $6cac: $00
    nop                                           ; $6cad: $00
    nop                                           ; $6cae: $00
    nop                                           ; $6caf: $00
    ld hl, sp+$00                                 ; $6cb0: $f8 $00
    ld [$a800], sp                                ; $6cb2: $08 $00 $a8
    nop                                           ; $6cb5: $00
    add b                                         ; $6cb6: $80
    nop                                           ; $6cb7: $00
    ld hl, sp+$00                                 ; $6cb8: $f8 $00
    nop                                           ; $6cba: $00
    nop                                           ; $6cbb: $00
    nop                                           ; $6cbc: $00
    nop                                           ; $6cbd: $00
    nop                                           ; $6cbe: $00
    nop                                           ; $6cbf: $00
    nop                                           ; $6cc0: $00
    ld hl, sp-$10                                 ; $6cc1: $f8 $f0
    ld hl, sp+$50                                 ; $6cc3: $f8 $50
    ld hl, sp+$78                                 ; $6cc5: $f8 $78
    ld hl, sp+$00                                 ; $6cc7: $f8 $00
    ld hl, sp+$00                                 ; $6cc9: $f8 $00
    nop                                           ; $6ccb: $00
    nop                                           ; $6ccc: $00
    nop                                           ; $6ccd: $00
    nop                                           ; $6cce: $00
    nop                                           ; $6ccf: $00
    ld hl, sp+$00                                 ; $6cd0: $f8 $00
    ld [$a8f0], sp                                ; $6cd2: $08 $f0 $a8
    ld d, b                                       ; $6cd5: $50
    add b                                         ; $6cd6: $80
    ld a, b                                       ; $6cd7: $78
    ld hl, sp+$00                                 ; $6cd8: $f8 $00
    nop                                           ; $6cda: $00
    nop                                           ; $6cdb: $00
    nop                                           ; $6cdc: $00
    nop                                           ; $6cdd: $00
    nop                                           ; $6cde: $00
    nop                                           ; $6cdf: $00
    ld hl, sp+$00                                 ; $6ce0: $f8 $00
    ld hl, sp+$00                                 ; $6ce2: $f8 $00
    ld hl, sp+$00                                 ; $6ce4: $f8 $00
    ld hl, sp+$00                                 ; $6ce6: $f8 $00
    ld hl, sp+$00                                 ; $6ce8: $f8 $00
    nop                                           ; $6cea: $00
    nop                                           ; $6ceb: $00
    nop                                           ; $6cec: $00
    nop                                           ; $6ced: $00
    nop                                           ; $6cee: $00
    nop                                           ; $6cef: $00
    ret nz                                        ; $6cf0: $c0

    ld hl, sp+$18                                 ; $6cf1: $f8 $18
    ld hl, sp-$40                                 ; $6cf3: $f8 $c0
    ld hl, sp+$18                                 ; $6cf5: $f8 $18
    ld hl, sp-$40                                 ; $6cf7: $f8 $c0
    ld hl, sp+$00                                 ; $6cf9: $f8 $00
    nop                                           ; $6cfb: $00
    nop                                           ; $6cfc: $00
    nop                                           ; $6cfd: $00
    nop                                           ; $6cfe: $00
    nop                                           ; $6cff: $00
    jr c, @-$3e                                   ; $6d00: $38 $c0

    ldh [rNR23], a                                ; $6d02: $e0 $18
    jr c, @-$3e                                   ; $6d04: $38 $c0

    ldh [rNR23], a                                ; $6d06: $e0 $18
    jr c, @-$3e                                   ; $6d08: $38 $c0

    nop                                           ; $6d0a: $00
    nop                                           ; $6d0b: $00
    nop                                           ; $6d0c: $00
    nop                                           ; $6d0d: $00
    nop                                           ; $6d0e: $00
    nop                                           ; $6d0f: $00
    ld hl, sp+$00                                 ; $6d10: $f8 $00
    ld hl, sp+$00                                 ; $6d12: $f8 $00
    ld hl, sp+$00                                 ; $6d14: $f8 $00
    ld hl, sp+$00                                 ; $6d16: $f8 $00
    ld hl, sp+$00                                 ; $6d18: $f8 $00
    nop                                           ; $6d1a: $00
    nop                                           ; $6d1b: $00
    nop                                           ; $6d1c: $00
    nop                                           ; $6d1d: $00
    nop                                           ; $6d1e: $00
    nop                                           ; $6d1f: $00
    nop                                           ; $6d20: $00
    ld hl, sp+$50                                 ; $6d21: $f8 $50
    ld hl, sp+$00                                 ; $6d23: $f8 $00
    ld hl, sp+$70                                 ; $6d25: $f8 $70
    ld hl, sp+$00                                 ; $6d27: $f8 $00
    ld hl, sp+$00                                 ; $6d29: $f8 $00
    nop                                           ; $6d2b: $00
    nop                                           ; $6d2c: $00
    nop                                           ; $6d2d: $00
    nop                                           ; $6d2e: $00
    nop                                           ; $6d2f: $00
    ld hl, sp+$00                                 ; $6d30: $f8 $00
    xor b                                         ; $6d32: $a8
    ld d, b                                       ; $6d33: $50
    ld hl, sp+$00                                 ; $6d34: $f8 $00
    adc b                                         ; $6d36: $88
    ld [hl], b                                    ; $6d37: $70
    ld hl, sp+$00                                 ; $6d38: $f8 $00
    nop                                           ; $6d3a: $00
    nop                                           ; $6d3b: $00
    nop                                           ; $6d3c: $00
    nop                                           ; $6d3d: $00
    nop                                           ; $6d3e: $00
    nop                                           ; $6d3f: $00
    ld hl, sp+$00                                 ; $6d40: $f8 $00
    adc b                                         ; $6d42: $88
    nop                                           ; $6d43: $00
    ld hl, sp+$00                                 ; $6d44: $f8 $00
    adc b                                         ; $6d46: $88
    nop                                           ; $6d47: $00
    ld hl, sp+$00                                 ; $6d48: $f8 $00
    nop                                           ; $6d4a: $00
    nop                                           ; $6d4b: $00
    nop                                           ; $6d4c: $00

jr_006_6d4d:
    nop                                           ; $6d4d: $00
    nop                                           ; $6d4e: $00
    nop                                           ; $6d4f: $00
    nop                                           ; $6d50: $00
    ld hl, sp+$70                                 ; $6d51: $f8 $70
    ld hl, sp+$00                                 ; $6d53: $f8 $00
    ld hl, sp+$70                                 ; $6d55: $f8 $70
    ld hl, sp+$00                                 ; $6d57: $f8 $00
    ld hl, sp+$00                                 ; $6d59: $f8 $00
    nop                                           ; $6d5b: $00
    nop                                           ; $6d5c: $00
    nop                                           ; $6d5d: $00
    nop                                           ; $6d5e: $00
    nop                                           ; $6d5f: $00
    ld hl, sp+$00                                 ; $6d60: $f8 $00
    adc b                                         ; $6d62: $88
    ld [hl], b                                    ; $6d63: $70
    ld hl, sp+$00                                 ; $6d64: $f8 $00
    adc b                                         ; $6d66: $88
    ld [hl], b                                    ; $6d67: $70
    ld hl, sp+$00                                 ; $6d68: $f8 $00
    nop                                           ; $6d6a: $00
    nop                                           ; $6d6b: $00
    nop                                           ; $6d6c: $00
    nop                                           ; $6d6d: $00
    nop                                           ; $6d6e: $00
    nop                                           ; $6d6f: $00
    ld hl, sp+$00                                 ; $6d70: $f8 $00
    ld hl, sp+$00                                 ; $6d72: $f8 $00
    ld hl, sp+$00                                 ; $6d74: $f8 $00
    ld hl, sp+$00                                 ; $6d76: $f8 $00
    ld hl, sp+$00                                 ; $6d78: $f8 $00
    nop                                           ; $6d7a: $00
    nop                                           ; $6d7b: $00
    nop                                           ; $6d7c: $00
    nop                                           ; $6d7d: $00
    nop                                           ; $6d7e: $00
    nop                                           ; $6d7f: $00
    nop                                           ; $6d80: $00
    ld hl, sp-$18                                 ; $6d81: $f8 $e8
    ld hl, sp+$00                                 ; $6d83: $f8 $00
    ld hl, sp-$48                                 ; $6d85: $f8 $b8
    ld hl, sp+$00                                 ; $6d87: $f8 $00
    ld hl, sp+$00                                 ; $6d89: $f8 $00
    nop                                           ; $6d8b: $00
    nop                                           ; $6d8c: $00
    nop                                           ; $6d8d: $00
    nop                                           ; $6d8e: $00
    nop                                           ; $6d8f: $00
    ld hl, sp+$00                                 ; $6d90: $f8 $00
    db $10                                        ; $6d92: $10
    add sp, -$08                                  ; $6d93: $e8 $f8
    nop                                           ; $6d95: $00
    ld b, b                                       ; $6d96: $40
    cp b                                          ; $6d97: $b8
    ld hl, sp+$00                                 ; $6d98: $f8 $00
    nop                                           ; $6d9a: $00
    nop                                           ; $6d9b: $00
    nop                                           ; $6d9c: $00
    nop                                           ; $6d9d: $00
    nop                                           ; $6d9e: $00
    nop                                           ; $6d9f: $00
    ld hl, sp+$00                                 ; $6da0: $f8 $00
    ld hl, sp+$00                                 ; $6da2: $f8 $00
    ld hl, sp+$00                                 ; $6da4: $f8 $00
    ld hl, sp+$00                                 ; $6da6: $f8 $00
    ld hl, sp+$00                                 ; $6da8: $f8 $00
    nop                                           ; $6daa: $00

jr_006_6dab:
    nop                                           ; $6dab: $00
    nop                                           ; $6dac: $00
    nop                                           ; $6dad: $00
    nop                                           ; $6dae: $00
    nop                                           ; $6daf: $00
    nop                                           ; $6db0: $00
    ld hl, sp+$00                                 ; $6db1: $f8 $00
    ret c                                         ; $6db3: $d8

    nop                                           ; $6db4: $00
    adc b                                         ; $6db5: $88
    nop                                           ; $6db6: $00
    ret c                                         ; $6db7: $d8

    nop                                           ; $6db8: $00
    ld hl, sp+$00                                 ; $6db9: $f8 $00
    nop                                           ; $6dbb: $00
    nop                                           ; $6dbc: $00
    nop                                           ; $6dbd: $00
    nop                                           ; $6dbe: $00
    nop                                           ; $6dbf: $00
    ld hl, sp+$00                                 ; $6dc0: $f8 $00
    ret c                                         ; $6dc2: $d8

    jr nz, jr_006_6d4d                            ; $6dc3: $20 $88

    ld [hl], b                                    ; $6dc5: $70
    ret c                                         ; $6dc6: $d8

    jr nz, @-$06                                  ; $6dc7: $20 $f8

    nop                                           ; $6dc9: $00
    nop                                           ; $6dca: $00
    nop                                           ; $6dcb: $00
    nop                                           ; $6dcc: $00
    nop                                           ; $6dcd: $00
    nop                                           ; $6dce: $00
    nop                                           ; $6dcf: $00
    ld hl, sp+$00                                 ; $6dd0: $f8 $00
    ld hl, sp+$00                                 ; $6dd2: $f8 $00
    ld hl, sp+$00                                 ; $6dd4: $f8 $00
    ld hl, sp+$00                                 ; $6dd6: $f8 $00
    ld hl, sp+$00                                 ; $6dd8: $f8 $00

jr_006_6dda:
    nop                                           ; $6dda: $00
    nop                                           ; $6ddb: $00
    nop                                           ; $6ddc: $00
    nop                                           ; $6ddd: $00
    nop                                           ; $6dde: $00
    nop                                           ; $6ddf: $00
    jr nz, jr_006_6dda                            ; $6de0: $20 $f8

    ld hl, sp-$08                                 ; $6de2: $f8 $f8
    ld [hl], b                                    ; $6de4: $70
    ld hl, sp+$70                                 ; $6de5: $f8 $70
    ld hl, sp-$78                                 ; $6de7: $f8 $88
    ld hl, sp+$00                                 ; $6de9: $f8 $00
    nop                                           ; $6deb: $00
    nop                                           ; $6dec: $00
    nop                                           ; $6ded: $00
    nop                                           ; $6dee: $00
    nop                                           ; $6def: $00
    jr nz, jr_006_6df2                            ; $6df0: $20 $00

jr_006_6df2:
    ld hl, sp+$00                                 ; $6df2: $f8 $00
    ld d, b                                       ; $6df4: $50
    jr nz, @+$72                                  ; $6df5: $20 $70

    nop                                           ; $6df7: $00
    adc b                                         ; $6df8: $88
    nop                                           ; $6df9: $00
    nop                                           ; $6dfa: $00
    nop                                           ; $6dfb: $00
    nop                                           ; $6dfc: $00
    nop                                           ; $6dfd: $00

jr_006_6dfe:
    nop                                           ; $6dfe: $00
    nop                                           ; $6dff: $00
    ld hl, sp+$00                                 ; $6e00: $f8 $00
    add b                                         ; $6e02: $80
    nop                                           ; $6e03: $00
    cp b                                          ; $6e04: $b8
    nop                                           ; $6e05: $00
    and b                                         ; $6e06: $a0
    nop                                           ; $6e07: $00
    xor b                                         ; $6e08: $a8
    nop                                           ; $6e09: $00
    nop                                           ; $6e0a: $00
    nop                                           ; $6e0b: $00
    nop                                           ; $6e0c: $00
    nop                                           ; $6e0d: $00
    nop                                           ; $6e0e: $00
    nop                                           ; $6e0f: $00
    nop                                           ; $6e10: $00
    ld hl, sp+$78                                 ; $6e11: $f8 $78
    ld hl, sp+$40                                 ; $6e13: $f8 $40
    ld hl, sp+$58                                 ; $6e15: $f8 $58
    ld hl, sp+$50                                 ; $6e17: $f8 $50
    ld hl, sp+$00                                 ; $6e19: $f8 $00
    nop                                           ; $6e1b: $00
    nop                                           ; $6e1c: $00
    nop                                           ; $6e1d: $00
    nop                                           ; $6e1e: $00
    nop                                           ; $6e1f: $00
    ret c                                         ; $6e20: $d8

    jr nz, jr_006_6dab                            ; $6e21: $20 $88

    ld [hl], b                                    ; $6e23: $70
    jr nz, jr_006_6dfe                            ; $6e24: $20 $d8

    adc b                                         ; $6e26: $88
    ld [hl], b                                    ; $6e27: $70
    ret c                                         ; $6e28: $d8

    jr nz, jr_006_6e2b                            ; $6e29: $20 $00

jr_006_6e2b:
    nop                                           ; $6e2b: $00
    nop                                           ; $6e2c: $00
    nop                                           ; $6e2d: $00
    nop                                           ; $6e2e: $00
    nop                                           ; $6e2f: $00
    ld hl, sp+$00                                 ; $6e30: $f8 $00
    ld hl, sp+$00                                 ; $6e32: $f8 $00
    ld hl, sp+$00                                 ; $6e34: $f8 $00
    ld hl, sp+$00                                 ; $6e36: $f8 $00
    ld hl, sp+$00                                 ; $6e38: $f8 $00

jr_006_6e3a:
    nop                                           ; $6e3a: $00
    nop                                           ; $6e3b: $00
    nop                                           ; $6e3c: $00
    nop                                           ; $6e3d: $00
    nop                                           ; $6e3e: $00
    nop                                           ; $6e3f: $00
    jr nz, jr_006_6e3a                            ; $6e40: $20 $f8

    ld [hl], b                                    ; $6e42: $70
    ld hl, sp-$28                                 ; $6e43: $f8 $d8
    ld hl, sp+$70                                 ; $6e45: $f8 $70
    ld hl, sp+$20                                 ; $6e47: $f8 $20
    ld hl, sp+$00                                 ; $6e49: $f8 $00
    nop                                           ; $6e4b: $00
    nop                                           ; $6e4c: $00
    nop                                           ; $6e4d: $00
    nop                                           ; $6e4e: $00
    nop                                           ; $6e4f: $00
    ret c                                         ; $6e50: $d8

    nop                                           ; $6e51: $00
    adc b                                         ; $6e52: $88
    nop                                           ; $6e53: $00
    jr nz, jr_006_6e56                            ; $6e54: $20 $00

jr_006_6e56:
    adc b                                         ; $6e56: $88
    nop                                           ; $6e57: $00
    ret c                                         ; $6e58: $d8

    nop                                           ; $6e59: $00
    nop                                           ; $6e5a: $00
    nop                                           ; $6e5b: $00
    nop                                           ; $6e5c: $00
    nop                                           ; $6e5d: $00
    nop                                           ; $6e5e: $00
    nop                                           ; $6e5f: $00
    ld hl, sp+$00                                 ; $6e60: $f8 $00
    ld hl, sp+$00                                 ; $6e62: $f8 $00
    ld hl, sp+$00                                 ; $6e64: $f8 $00
    ld hl, sp+$00                                 ; $6e66: $f8 $00
    ld hl, sp+$00                                 ; $6e68: $f8 $00
    nop                                           ; $6e6a: $00
    nop                                           ; $6e6b: $00
    nop                                           ; $6e6c: $00
    nop                                           ; $6e6d: $00
    nop                                           ; $6e6e: $00
    nop                                           ; $6e6f: $00
    nop                                           ; $6e70: $00
    add sp, $00                                   ; $6e71: $e8 $00
    xor b                                         ; $6e73: $a8
    nop                                           ; $6e74: $00
    adc b                                         ; $6e75: $88
    nop                                           ; $6e76: $00
    xor b                                         ; $6e77: $a8
    nop                                           ; $6e78: $00
    cp b                                          ; $6e79: $b8
    nop                                           ; $6e7a: $00
    nop                                           ; $6e7b: $00
    nop                                           ; $6e7c: $00
    nop                                           ; $6e7d: $00
    nop                                           ; $6e7e: $00
    nop                                           ; $6e7f: $00
    add sp, $00                                   ; $6e80: $e8 $00
    xor b                                         ; $6e82: $a8
    nop                                           ; $6e83: $00
    adc b                                         ; $6e84: $88
    nop                                           ; $6e85: $00
    xor b                                         ; $6e86: $a8
    nop                                           ; $6e87: $00
    cp b                                          ; $6e88: $b8
    nop                                           ; $6e89: $00
    nop                                           ; $6e8a: $00
    nop                                           ; $6e8b: $00
    nop                                           ; $6e8c: $00
    nop                                           ; $6e8d: $00
    nop                                           ; $6e8e: $00
    nop                                           ; $6e8f: $00
    ld hl, sp+$00                                 ; $6e90: $f8 $00
    ld hl, sp+$00                                 ; $6e92: $f8 $00
    ld hl, sp+$00                                 ; $6e94: $f8 $00
    ld hl, sp+$00                                 ; $6e96: $f8 $00
    ld hl, sp+$00                                 ; $6e98: $f8 $00
    nop                                           ; $6e9a: $00
    nop                                           ; $6e9b: $00
    nop                                           ; $6e9c: $00
    nop                                           ; $6e9d: $00
    nop                                           ; $6e9e: $00
    nop                                           ; $6e9f: $00
    cp b                                          ; $6ea0: $b8
    ld hl, sp-$58                                 ; $6ea1: $f8 $a8
    ld hl, sp-$58                                 ; $6ea3: $f8 $a8
    ld hl, sp-$78                                 ; $6ea5: $f8 $88
    ld hl, sp-$08                                 ; $6ea7: $f8 $f8
    ld hl, sp+$00                                 ; $6ea9: $f8 $00
    nop                                           ; $6eab: $00
    nop                                           ; $6eac: $00
    nop                                           ; $6ead: $00
    nop                                           ; $6eae: $00
    nop                                           ; $6eaf: $00
    cp b                                          ; $6eb0: $b8
    ld b, b                                       ; $6eb1: $40
    xor b                                         ; $6eb2: $a8
    ld d, b                                       ; $6eb3: $50
    xor b                                         ; $6eb4: $a8
    ld d, b                                       ; $6eb5: $50
    adc b                                         ; $6eb6: $88
    ld [hl], b                                    ; $6eb7: $70
    ld hl, sp+$00                                 ; $6eb8: $f8 $00
    nop                                           ; $6eba: $00
    nop                                           ; $6ebb: $00
    nop                                           ; $6ebc: $00
    nop                                           ; $6ebd: $00

jr_006_6ebe:
    nop                                           ; $6ebe: $00

jr_006_6ebf:
    nop                                           ; $6ebf: $00
    ld [hl], b                                    ; $6ec0: $70
    nop                                           ; $6ec1: $00
    ld hl, sp+$00                                 ; $6ec2: $f8 $00
    ld hl, sp+$00                                 ; $6ec4: $f8 $00
    ld hl, sp+$00                                 ; $6ec6: $f8 $00
    ld [hl], b                                    ; $6ec8: $70
    nop                                           ; $6ec9: $00
    nop                                           ; $6eca: $00
    nop                                           ; $6ecb: $00
    nop                                           ; $6ecc: $00
    nop                                           ; $6ecd: $00
    nop                                           ; $6ece: $00

jr_006_6ecf:
    nop                                           ; $6ecf: $00
    nop                                           ; $6ed0: $00
    ld [hl], b                                    ; $6ed1: $70
    nop                                           ; $6ed2: $00
    ld hl, sp+$00                                 ; $6ed3: $f8 $00
    ret c                                         ; $6ed5: $d8

    nop                                           ; $6ed6: $00
    ld hl, sp+$00                                 ; $6ed7: $f8 $00
    ld [hl], b                                    ; $6ed9: $70
    nop                                           ; $6eda: $00
    nop                                           ; $6edb: $00
    nop                                           ; $6edc: $00
    nop                                           ; $6edd: $00
    nop                                           ; $6ede: $00
    nop                                           ; $6edf: $00
    ld [hl], b                                    ; $6ee0: $70
    nop                                           ; $6ee1: $00
    ret c                                         ; $6ee2: $d8

    nop                                           ; $6ee3: $00
    adc b                                         ; $6ee4: $88
    jr nz, jr_006_6ebf                            ; $6ee5: $20 $d8

    nop                                           ; $6ee7: $00
    ld [hl], b                                    ; $6ee8: $70
    nop                                           ; $6ee9: $00
    nop                                           ; $6eea: $00
    nop                                           ; $6eeb: $00
    nop                                           ; $6eec: $00
    nop                                           ; $6eed: $00
    nop                                           ; $6eee: $00
    nop                                           ; $6eef: $00
    ld hl, sp+$00                                 ; $6ef0: $f8 $00
    ld hl, sp+$00                                 ; $6ef2: $f8 $00
    ld hl, sp+$00                                 ; $6ef4: $f8 $00
    ld hl, sp+$00                                 ; $6ef6: $f8 $00
    ld hl, sp+$00                                 ; $6ef8: $f8 $00
    nop                                           ; $6efa: $00
    nop                                           ; $6efb: $00
    nop                                           ; $6efc: $00
    nop                                           ; $6efd: $00
    nop                                           ; $6efe: $00
    nop                                           ; $6eff: $00
    nop                                           ; $6f00: $00
    ld hl, sp+$70                                 ; $6f01: $f8 $70
    ld hl, sp+$50                                 ; $6f03: $f8 $50
    ld hl, sp+$70                                 ; $6f05: $f8 $70
    ld hl, sp+$00                                 ; $6f07: $f8 $00
    ld hl, sp+$00                                 ; $6f09: $f8 $00
    nop                                           ; $6f0b: $00
    nop                                           ; $6f0c: $00
    nop                                           ; $6f0d: $00
    nop                                           ; $6f0e: $00
    nop                                           ; $6f0f: $00
    ld hl, sp+$00                                 ; $6f10: $f8 $00
    adc b                                         ; $6f12: $88
    ld [hl], b                                    ; $6f13: $70
    xor b                                         ; $6f14: $a8
    ld d, b                                       ; $6f15: $50
    adc b                                         ; $6f16: $88
    ld [hl], b                                    ; $6f17: $70
    ld hl, sp+$00                                 ; $6f18: $f8 $00
    nop                                           ; $6f1a: $00
    nop                                           ; $6f1b: $00
    nop                                           ; $6f1c: $00
    nop                                           ; $6f1d: $00
    nop                                           ; $6f1e: $00

jr_006_6f1f:
    nop                                           ; $6f1f: $00
    ld hl, sp+$00                                 ; $6f20: $f8 $00
    ld hl, sp+$00                                 ; $6f22: $f8 $00
    ld hl, sp+$00                                 ; $6f24: $f8 $00
    ld hl, sp+$00                                 ; $6f26: $f8 $00
    ld hl, sp+$00                                 ; $6f28: $f8 $00
    nop                                           ; $6f2a: $00
    nop                                           ; $6f2b: $00
    nop                                           ; $6f2c: $00
    nop                                           ; $6f2d: $00
    nop                                           ; $6f2e: $00
    nop                                           ; $6f2f: $00
    nop                                           ; $6f30: $00
    ld hl, sp+$00                                 ; $6f31: $f8 $00
    adc b                                         ; $6f33: $88
    jr nz, jr_006_6ebe                            ; $6f34: $20 $88

    nop                                           ; $6f36: $00
    adc b                                         ; $6f37: $88
    nop                                           ; $6f38: $00
    ld hl, sp+$00                                 ; $6f39: $f8 $00
    nop                                           ; $6f3b: $00
    nop                                           ; $6f3c: $00
    nop                                           ; $6f3d: $00
    nop                                           ; $6f3e: $00
    nop                                           ; $6f3f: $00
    ld hl, sp+$00                                 ; $6f40: $f8 $00
    adc b                                         ; $6f42: $88
    nop                                           ; $6f43: $00
    adc b                                         ; $6f44: $88
    jr nz, jr_006_6ecf                            ; $6f45: $20 $88

    nop                                           ; $6f47: $00
    ld hl, sp+$00                                 ; $6f48: $f8 $00
    nop                                           ; $6f4a: $00
    nop                                           ; $6f4b: $00
    nop                                           ; $6f4c: $00

jr_006_6f4d:
    nop                                           ; $6f4d: $00
    nop                                           ; $6f4e: $00
    nop                                           ; $6f4f: $00
    ld hl, sp+$00                                 ; $6f50: $f8 $00
    ld hl, sp+$00                                 ; $6f52: $f8 $00
    ld hl, sp+$00                                 ; $6f54: $f8 $00
    ld hl, sp+$00                                 ; $6f56: $f8 $00
    ld hl, sp+$00                                 ; $6f58: $f8 $00
    nop                                           ; $6f5a: $00
    nop                                           ; $6f5b: $00
    nop                                           ; $6f5c: $00
    nop                                           ; $6f5d: $00
    nop                                           ; $6f5e: $00
    nop                                           ; $6f5f: $00
    ld [$08f8], sp                                ; $6f60: $08 $f8 $08
    ld hl, sp+$08                                 ; $6f63: $f8 $08
    ld hl, sp+$08                                 ; $6f65: $f8 $08
    ld hl, sp-$08                                 ; $6f67: $f8 $f8
    ld hl, sp+$00                                 ; $6f69: $f8 $00

jr_006_6f6b:
    nop                                           ; $6f6b: $00
    nop                                           ; $6f6c: $00
    nop                                           ; $6f6d: $00
    nop                                           ; $6f6e: $00
    nop                                           ; $6f6f: $00
    ld hl, sp+$00                                 ; $6f70: $f8 $00
    xor b                                         ; $6f72: $a8
    ld d, b                                       ; $6f73: $50
    ret c                                         ; $6f74: $d8

    jr nz, jr_006_6f1f                            ; $6f75: $20 $a8

    ld d, b                                       ; $6f77: $50
    ld hl, sp+$00                                 ; $6f78: $f8 $00
    nop                                           ; $6f7a: $00
    nop                                           ; $6f7b: $00
    nop                                           ; $6f7c: $00
    nop                                           ; $6f7d: $00
    nop                                           ; $6f7e: $00
    nop                                           ; $6f7f: $00
    ld hl, sp+$00                                 ; $6f80: $f8 $00
    ld hl, sp+$00                                 ; $6f82: $f8 $00
    ld hl, sp+$00                                 ; $6f84: $f8 $00
    ld hl, sp+$00                                 ; $6f86: $f8 $00
    ld hl, sp+$00                                 ; $6f88: $f8 $00
    nop                                           ; $6f8a: $00
    nop                                           ; $6f8b: $00
    nop                                           ; $6f8c: $00
    nop                                           ; $6f8d: $00
    nop                                           ; $6f8e: $00
    nop                                           ; $6f8f: $00
    adc b                                         ; $6f90: $88
    jr jr_006_6f6b                                ; $6f91: $18 $d8

    jr c, jr_006_6f4d                             ; $6f93: $38 $b8

    jr c, jr_006_6faf                             ; $6f95: $38 $18

    ld a, b                                       ; $6f97: $78
    ld [$00f8], sp                                ; $6f98: $08 $f8 $00
    nop                                           ; $6f9b: $00
    nop                                           ; $6f9c: $00
    nop                                           ; $6f9d: $00
    nop                                           ; $6f9e: $00
    nop                                           ; $6f9f: $00
    ld hl, sp+$00                                 ; $6fa0: $f8 $00
    adc b                                         ; $6fa2: $88
    db $10                                        ; $6fa3: $10
    xor b                                         ; $6fa4: $a8
    db $10                                        ; $6fa5: $10
    adc b                                         ; $6fa6: $88
    ld [hl], b                                    ; $6fa7: $70
    ld hl, sp+$00                                 ; $6fa8: $f8 $00
    nop                                           ; $6faa: $00
    nop                                           ; $6fab: $00
    nop                                           ; $6fac: $00
    nop                                           ; $6fad: $00
    nop                                           ; $6fae: $00

jr_006_6faf:
    nop                                           ; $6faf: $00
    nop                                           ; $6fb0: $00
    ld hl, sp+$78                                 ; $6fb1: $f8 $78
    add b                                         ; $6fb3: $80
    ld a, b                                       ; $6fb4: $78
    add b                                         ; $6fb5: $80
    ld a, b                                       ; $6fb6: $78
    add b                                         ; $6fb7: $80
    ld a, b                                       ; $6fb8: $78
    add b                                         ; $6fb9: $80
    nop                                           ; $6fba: $00
    nop                                           ; $6fbb: $00
    nop                                           ; $6fbc: $00
    nop                                           ; $6fbd: $00
    nop                                           ; $6fbe: $00
    nop                                           ; $6fbf: $00
    nop                                           ; $6fc0: $00
    ld hl, sp+$00                                 ; $6fc1: $f8 $00
    ld hl, sp+$00                                 ; $6fc3: $f8 $00
    ld hl, sp+$00                                 ; $6fc5: $f8 $00
    ld hl, sp+$00                                 ; $6fc7: $f8 $00
    ld hl, sp+$00                                 ; $6fc9: $f8 $00
    nop                                           ; $6fcb: $00
    nop                                           ; $6fcc: $00
    nop                                           ; $6fcd: $00
    nop                                           ; $6fce: $00
    nop                                           ; $6fcf: $00
    nop                                           ; $6fd0: $00
    ld hl, sp+$78                                 ; $6fd1: $f8 $78
    add b                                         ; $6fd3: $80
    ld e, b                                       ; $6fd4: $58
    and b                                         ; $6fd5: $a0
    ld l, b                                       ; $6fd6: $68
    sub b                                         ; $6fd7: $90
    ld a, b                                       ; $6fd8: $78
    add b                                         ; $6fd9: $80
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
    inc e                                         ; $7001: $1c
    inc e                                         ; $7002: $1c
    inc hl                                        ; $7003: $23
    ld a, $41                                     ; $7004: $3e $41
    ld a, $41                                     ; $7006: $3e $41
    ccf                                           ; $7008: $3f
    ld b, a                                       ; $7009: $47
    ld a, b                                       ; $700a: $78
    ld a, b                                       ; $700b: $78
    nop                                           ; $700c: $00
    nop                                           ; $700d: $00
    nop                                           ; $700e: $00
    nop                                           ; $700f: $00
    nop                                           ; $7010: $00
    jr nc, jr_006_7043                            ; $7011: $30 $30

    ld c, b                                       ; $7013: $48
    jr nc, jr_006_705e                            ; $7014: $30 $48

    ld a, b                                       ; $7016: $78
    ld a, b                                       ; $7017: $78
    nop                                           ; $7018: $00
    nop                                           ; $7019: $00
    nop                                           ; $701a: $00
    nop                                           ; $701b: $00
    nop                                           ; $701c: $00
    nop                                           ; $701d: $00
    nop                                           ; $701e: $00
    nop                                           ; $701f: $00
    nop                                           ; $7020: $00
    inc e                                         ; $7021: $1c
    inc e                                         ; $7022: $1c
    inc hl                                        ; $7023: $23
    ld a, $41                                     ; $7024: $3e $41
    ld a, $41                                     ; $7026: $3e $41
    ld a, $41                                     ; $7028: $3e $41
    ld a, $41                                     ; $702a: $3e $41
    ld a, $41                                     ; $702c: $3e $41
    ld e, l                                       ; $702e: $5d
    ld h, e                                       ; $702f: $63
    inc hl                                        ; $7030: $23
    ccf                                           ; $7031: $3f
    ld e, $1e                                     ; $7032: $1e $1e
    nop                                           ; $7034: $00
    nop                                           ; $7035: $00
    nop                                           ; $7036: $00
    nop                                           ; $7037: $00
    nop                                           ; $7038: $00
    nop                                           ; $7039: $00
    nop                                           ; $703a: $00
    nop                                           ; $703b: $00
    nop                                           ; $703c: $00
    nop                                           ; $703d: $00
    nop                                           ; $703e: $00
    nop                                           ; $703f: $00
    nop                                           ; $7040: $00
    jr nc, jr_006_7073                            ; $7041: $30 $30

jr_006_7043:
    ld c, b                                       ; $7043: $48
    jr nc, jr_006_708e                            ; $7044: $30 $48

jr_006_7046:
    jr nc, jr_006_7090                            ; $7046: $30 $48

    jr z, jr_006_70a2                             ; $7048: $28 $58

    ld a, b                                       ; $704a: $78
    ld a, b                                       ; $704b: $78
    nop                                           ; $704c: $00
    nop                                           ; $704d: $00
    nop                                           ; $704e: $00
    nop                                           ; $704f: $00
    db $10                                        ; $7050: $10
    jr jr_006_7063                                ; $7051: $18 $10

    jr jr_006_7065                                ; $7053: $18 $10

    jr @-$43                                      ; $7055: $18 $bb

    rst RST_38                                    ; $7057: $ff
    inc bc                                        ; $7058: $03
    add e                                         ; $7059: $83
    ld b, $84                                     ; $705a: $06 $84
    add hl, bc                                    ; $705c: $09
    adc c                                         ; $705d: $89

jr_006_705e:
    ld a, [$10ff]                                 ; $705e: $fa $ff $10
    jr jr_006_7073                                ; $7061: $18 $10

jr_006_7063:
    jr jr_006_7076                                ; $7063: $18 $11

jr_006_7065:
    add hl, de                                    ; $7065: $19
    cp [hl]                                       ; $7066: $be
    rst RST_38                                    ; $7067: $ff
    or c                                          ; $7068: $b1
    cp b                                          ; $7069: $b8
    rst RST_00                                    ; $706a: $c7
    ldh [$ff1f], a                                ; $706b: $e0 $1f
    add b                                         ; $706d: $80
    ld a, a                                       ; $706e: $7f
    nop                                           ; $706f: $00
    db $10                                        ; $7070: $10
    jr jr_006_7083                                ; $7071: $18 $10

jr_006_7073:
    jr @+$01                                      ; $7073: $18 $ff

    rst RST_38                                    ; $7075: $ff

jr_006_7076:
    nop                                           ; $7076: $00
    add e                                         ; $7077: $83
    rst RST_38                                    ; $7078: $ff
    nop                                           ; $7079: $00
    rst RST_38                                    ; $707a: $ff
    nop                                           ; $707b: $00
    rst RST_38                                    ; $707c: $ff
    nop                                           ; $707d: $00
    rst RST_38                                    ; $707e: $ff
    nop                                           ; $707f: $00
    db $10                                        ; $7080: $10
    jr jr_006_7093                                ; $7081: $18 $10

jr_006_7083:
    jr jr_006_7095                                ; $7083: $18 $10

    jr @-$03                                      ; $7085: $18 $fb

    rst RST_38                                    ; $7087: $ff
    ld sp, $8971                                  ; $7088: $31 $71 $89
    add hl, de                                    ; $708b: $19
    sub l                                         ; $708c: $95
    dec h                                         ; $708d: $25

jr_006_708e:
    inc a                                         ; $708e: $3c
    ld a, a                                       ; $708f: $7f

jr_006_7090:
    inc c                                         ; $7090: $0c
    ld c, $09                                     ; $7091: $0e $09

jr_006_7093:
    inc c                                         ; $7093: $0c
    inc de                                        ; $7094: $13

jr_006_7095:
    jr @+$29                                      ; $7095: $18 $27

    jr nc, jr_006_70bd                            ; $7097: $30 $24

    ld h, b                                       ; $7099: $60
    ld b, b                                       ; $709a: $40
    ld h, e                                       ; $709b: $63
    ld c, c                                       ; $709c: $49
    db $fc                                        ; $709d: $fc
    ld d, e                                       ; $709e: $53
    ld hl, sp-$08                                 ; $709f: $f8 $f8
    nop                                           ; $70a1: $00

jr_006_70a2:
    ldh [rIF], a                                  ; $70a2: $e0 $0f
    rst RST_00                                    ; $70a4: $c7
    jr nc, jr_006_7046                            ; $70a5: $30 $9f

    ld h, b                                       ; $70a7: $60
    dec a                                         ; $70a8: $3d
    add e                                         ; $70a9: $83
    ld d, $ee                                     ; $70aa: $16 $ee
    ret z                                         ; $70ac: $c8

    dec e                                         ; $70ad: $1d
    db $e3                                        ; $70ae: $e3
    add hl, bc                                    ; $70af: $09
    dec a                                         ; $70b0: $3d
    ld bc, $cf06                                  ; $70b1: $01 $06 $cf
    reti                                          ; $70b4: $d9


    inc a                                         ; $70b5: $3c
    ld l, a                                       ; $70b6: $6f
    ldh [$ffba], a                                ; $70b7: $e0 $ba
    ld hl, sp+$7d                                 ; $70b9: $f8 $7d
    rst RST_38                                    ; $70bb: $ff
    rst RST_10                                    ; $70bc: $d7

jr_006_70bd:
    xor $bd                                       ; $70bd: $ee $bd

jr_006_70bf:
    add d                                         ; $70bf: $82
    call nz, Call_006_7fe0                        ; $70c0: $c4 $e0 $7f
    nop                                           ; $70c3: $00
    db $fc                                        ; $70c4: $fc
    nop                                           ; $70c5: $00
    rst RST_08                                    ; $70c6: $cf
    rra                                           ; $70c7: $1f
    ld a, h                                       ; $70c8: $7c
    rst RST_38                                    ; $70c9: $ff
    sbc [hl]                                      ; $70ca: $9e
    cp [hl]                                       ; $70cb: $be
    or $2e                                        ; $70cc: $f6 $2e
    rst RST_38                                    ; $70ce: $ff
    ld b, $00                                     ; $70cf: $06 $00
    ldh [$ffc0], a                                ; $70d1: $e0 $c0
    db $10                                        ; $70d3: $10
    ld h, b                                       ; $70d4: $60
    ld [$88b0], sp                                ; $70d5: $08 $b0 $88
    ld h, b                                       ; $70d8: $60
    ret z                                         ; $70d9: $c8

    ld l, b                                       ; $70da: $68
    ld e, b                                       ; $70db: $58
    sub b                                         ; $70dc: $90
    db $10                                        ; $70dd: $10
    jr nz, jr_006_7140                            ; $70de: $20 $60

    and a                                         ; $70e0: $a7
    ld hl, sp-$29                                 ; $70e1: $f8 $d7
    add sp, -$59                                  ; $70e3: $e8 $a7
    ret z                                         ; $70e5: $c8

    ld c, e                                       ; $70e6: $4b
    sbc b                                         ; $70e7: $98
    sbc l                                         ; $70e8: $9d
    inc a                                         ; $70e9: $3c
    ccf                                           ; $70ea: $3f
    ld a, a                                       ; $70eb: $7f
    ld a, a                                       ; $70ec: $7f
    rst RST_38                                    ; $70ed: $ff
    rst RST_38                                    ; $70ee: $ff
    rst RST_38                                    ; $70ef: $ff
    push af                                       ; $70f0: $f5
    add hl, bc                                    ; $70f1: $09
    di                                            ; $70f2: $f3
    rrca                                          ; $70f3: $0f
    push af                                       ; $70f4: $f5
    dec c                                         ; $70f5: $0d
    db $eb                                        ; $70f6: $eb
    ld [$18d7], sp                                ; $70f7: $08 $d7 $18
    rst RST_20                                    ; $70fa: $e7
    ldh a, [$ffd1]                                ; $70fb: $f0 $d1
    db $f4                                        ; $70fd: $f4

jr_006_70fe:
    add c                                         ; $70fe: $81
    sbc $7f                                       ; $70ff: $de $7f
    inc e                                         ; $7101: $1c
    rst RST_28                                    ; $7102: $ef
    ld [hl+], a                                   ; $7103: $22
    rst RST_18                                    ; $7104: $df
    ld b, c                                       ; $7105: $41
    rst RST_30                                    ; $7106: $f7
    ld b, a                                       ; $7107: $47
    rst RST_38                                    ; $7108: $ff
    ld c, a                                       ; $7109: $4f
    rst RST_38                                    ; $710a: $ff
    ld c, l                                       ; $710b: $4d
    rst RST_38                                    ; $710c: $ff
    ld c, a                                       ; $710d: $4f
    rst RST_38                                    ; $710e: $ff
    ld c, a                                       ; $710f: $4f
    cp d                                          ; $7110: $ba
    halt                                          ; $7111: $76
    rst RST_38                                    ; $7112: $ff
    ld c, e                                       ; $7113: $4b
    cp $4a                                        ; $7114: $fe $4a
    xor $7a                                       ; $7116: $ee $7a
    rst RST_18                                    ; $7118: $df
    ld e, a                                       ; $7119: $5f
    ld hl, sp+$7c                                 ; $711a: $f8 $7c
    rst RST_20                                    ; $711c: $e7
    jr nc, jr_006_70fe                            ; $711d: $30 $df

    ld h, b                                       ; $711f: $60
    ret nz                                        ; $7120: $c0

    ret nz                                        ; $7121: $c0

    nop                                           ; $7122: $00
    nop                                           ; $7123: $00
    nop                                           ; $7124: $00
    nop                                           ; $7125: $00
    nop                                           ; $7126: $00
    nop                                           ; $7127: $00
    add b                                         ; $7128: $80
    add b                                         ; $7129: $80
    ld h, b                                       ; $712a: $60
    ld h, a                                       ; $712b: $67
    sub e                                         ; $712c: $93
    jr c, @-$2d                                   ; $712d: $38 $d1

    inc de                                        ; $712f: $13
    nop                                           ; $7130: $00
    nop                                           ; $7131: $00
    nop                                           ; $7132: $00
    nop                                           ; $7133: $00
    nop                                           ; $7134: $00
    nop                                           ; $7135: $00
    nop                                           ; $7136: $00
    nop                                           ; $7137: $00
    nop                                           ; $7138: $00
    nop                                           ; $7139: $00
    nop                                           ; $713a: $00
    ret nz                                        ; $713b: $c0

    add b                                         ; $713c: $80
    jr nz, jr_006_70bf                            ; $713d: $20 $80

    ret nc                                        ; $713f: $d0

jr_006_7140:
    ld sp, hl                                     ; $7140: $f9
    rst RST_38                                    ; $7141: $ff
    ld hl, sp-$07                                 ; $7142: $f8 $f9
    ld a, [$f1f9]                                 ; $7144: $fa $f9 $f1
    db $f4                                        ; $7147: $f4
    jp hl                                         ; $7148: $e9


    db $e4                                        ; $7149: $e4
    call z, $24e2                                 ; $714a: $cc $e2 $24
    ld [hl-], a                                   ; $714d: $32
    dec e                                         ; $714e: $1d
    rra                                           ; $714f: $1f
    ld bc, $8382                                  ; $7150: $01 $82 $83
    call nz, $fc83                                ; $7153: $c4 $83 $fc
    ld c, e                                       ; $7156: $4b
    ld hl, sp+$77                                 ; $7157: $f8 $77
    ldh a, [$ffa7]                                ; $7159: $f0 $a7
    ld [hl], b                                    ; $715b: $70
    ld [hl], c                                    ; $715c: $71
    ld a, h                                       ; $715d: $7c
    sub c                                         ; $715e: $91
    add $37                                       ; $715f: $c6 $37
    and a                                         ; $7161: $a7
    sbc a                                         ; $7162: $9f
    ld e, [hl]                                    ; $7163: $5e
    rst RST_38                                    ; $7164: $ff
    add b                                         ; $7165: $80
    rst RST_18                                    ; $7166: $df
    pop hl                                        ; $7167: $e1
    rst RST_38                                    ; $7168: $ff
    rst RST_38                                    ; $7169: $ff
    ld a, a                                       ; $716a: $7f
    rst RST_38                                    ; $716b: $ff
    ld a, a                                       ; $716c: $7f
    ld a, a                                       ; $716d: $7f
    rst RST_18                                    ; $716e: $df
    rra                                           ; $716f: $1f
    rst RST_38                                    ; $7170: $ff
    ld b, b                                       ; $7171: $40
    rst RST_38                                    ; $7172: $ff
    nop                                           ; $7173: $00
    rst RST_38                                    ; $7174: $ff
    nop                                           ; $7175: $00
    ld a, a                                       ; $7176: $7f
    nop                                           ; $7177: $00
    rra                                           ; $7178: $1f
    add b                                         ; $7179: $80
    add b                                         ; $717a: $80
    ret nz                                        ; $717b: $c0

    ldh [$fff0], a                                ; $717c: $e0 $f0
    rst RST_38                                    ; $717e: $ff
    rst RST_38                                    ; $717f: $ff
    xor $1f                                       ; $7180: $ee $1f
    db $ed                                        ; $7182: $ed
    rra                                           ; $7183: $1f
    xor $1e                                       ; $7184: $ee $1e
    db $dd                                        ; $7186: $dd
    inc e                                         ; $7187: $1c
    sub l                                         ; $7188: $95
    inc a                                         ; $7189: $3c
    ld a, [hl+]                                   ; $718a: $2a
    ld h, e                                       ; $718b: $63
    ld e, l                                       ; $718c: $5d
    pop hl                                        ; $718d: $e1
    cp a                                          ; $718e: $bf
    and c                                         ; $718f: $a1
    ld h, b                                       ; $7190: $60
    ldh a, [$ffe0]                                ; $7191: $f0 $e0
    ld hl, sp-$20                                 ; $7193: $f8 $e0
    inc c                                         ; $7195: $0c
    ld hl, sp+$02                                 ; $7196: $f8 $02
    ld c, b                                       ; $7198: $48
    db $e3                                        ; $7199: $e3
    ld a, h                                       ; $719a: $7c
    ld bc, $01fe                                  ; $719b: $01 $fe $01
    ld h, [hl]                                    ; $719e: $66
    ld [hl], c                                    ; $719f: $71
    ld c, $0d                                     ; $71a0: $0e $0d
    inc c                                         ; $71a2: $0c
    ld a, [bc]                                    ; $71a3: $0a
    add hl, de                                    ; $71a4: $19
    ld [de], a                                    ; $71a5: $12
    dec de                                        ; $71a6: $1b
    inc d                                         ; $71a7: $14
    dec de                                        ; $71a8: $1b
    db $10                                        ; $71a9: $10
    rla                                           ; $71aa: $17
    db $10                                        ; $71ab: $10
    ld a, a                                       ; $71ac: $7f
    ld a, a                                       ; $71ad: $7f
    and b                                         ; $71ae: $a0
    rst RST_38                                    ; $71af: $ff
    ld a, b                                       ; $71b0: $78
    ld [bc], a                                    ; $71b1: $02
    db $ec                                        ; $71b2: $ec
    rrca                                          ; $71b3: $0f
    adc $11                                       ; $71b4: $ce $11
    rst RST_18                                    ; $71b6: $df
    nop                                           ; $71b7: $00
    ei                                            ; $71b8: $fb
    inc bc                                        ; $71b9: $03
    di                                            ; $71ba: $f3
    inc b                                         ; $71bb: $04
    rst RST_38                                    ; $71bc: $ff
    rst RST_38                                    ; $71bd: $ff
    nop                                           ; $71be: $00
    rst RST_38                                    ; $71bf: $ff
    rst RST_28                                    ; $71c0: $ef
    rrca                                          ; $71c1: $0f
    ld a, e                                       ; $71c2: $7b
    inc bc                                        ; $71c3: $03
    ld [hl], l                                    ; $71c4: $75
    adc h                                         ; $71c5: $8c
    ccf                                           ; $71c6: $3f
    add b                                         ; $71c7: $80
    inc a                                         ; $71c8: $3c
    pop bc                                        ; $71c9: $c1
    ld e, $40                                     ; $71ca: $1e $40
    rst RST_38                                    ; $71cc: $ff
    rst RST_38                                    ; $71cd: $ff
    ld bc, $efff                                  ; $71ce: $01 $ff $ef
    rst RST_38                                    ; $71d1: $ff
    sub [hl]                                      ; $71d2: $96
    adc $ff                                       ; $71d3: $ce $ff
    rlca                                          ; $71d5: $07
    ld [$730d], sp                                ; $71d6: $08 $0d $73
    ld hl, sp+$67                                 ; $71d9: $f8 $67
    ld [hl], b                                    ; $71db: $70
    rst RST_38                                    ; $71dc: $ff
    rst RST_38                                    ; $71dd: $ff
    add b                                         ; $71de: $80
    rst RST_38                                    ; $71df: $ff
    dec l                                         ; $71e0: $2d
    ld hl, $1311                                  ; $71e1: $21 $11 $13
    ld e, $1e                                     ; $71e4: $1e $1e
    jp nc, Jump_000_2ed6                          ; $71e6: $d2 $d6 $2e

    ld l, e                                       ; $71e9: $6b
    sbc e                                         ; $71ea: $9b
    add hl, sp                                    ; $71eb: $39
    rst RST_38                                    ; $71ec: $ff
    rst RST_38                                    ; $71ed: $ff
    nop                                           ; $71ee: $00
    rst RST_38                                    ; $71ef: $ff
    cp [hl]                                       ; $71f0: $be
    add c                                         ; $71f1: $81
    ld a, [hl]                                    ; $71f2: $7e
    ld bc, $39d2                                  ; $71f3: $01 $d2 $39
    ld e, [hl]                                    ; $71f6: $5e
    ld b, c                                       ; $71f7: $41
    db $fc                                        ; $71f8: $fc
    add c                                         ; $71f9: $81
    or b                                          ; $71fa: $b0
    add a                                         ; $71fb: $87
    cp $fe                                        ; $71fc: $fe $fe
    inc bc                                        ; $71fe: $03
    rst RST_38                                    ; $71ff: $ff
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

jr_006_7212:
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
    db $10                                        ; $7250: $10
    jr jr_006_7263                                ; $7251: $18 $10

    jr jr_006_7265                                ; $7253: $18 $10

    jr jr_006_7212                                ; $7255: $18 $bb

    rst RST_38                                    ; $7257: $ff
    inc bc                                        ; $7258: $03
    add e                                         ; $7259: $83
    ld b, $84                                     ; $725a: $06 $84
    add hl, bc                                    ; $725c: $09
    adc c                                         ; $725d: $89
    ld a, [$10ff]                                 ; $725e: $fa $ff $10
    jr jr_006_7273                                ; $7261: $18 $10

jr_006_7263:
    jr jr_006_7276                                ; $7263: $18 $11

jr_006_7265:
    add hl, de                                    ; $7265: $19
    cp [hl]                                       ; $7266: $be
    rst RST_38                                    ; $7267: $ff
    or c                                          ; $7268: $b1
    cp b                                          ; $7269: $b8
    rst RST_00                                    ; $726a: $c7
    ldh [$ff1f], a                                ; $726b: $e0 $1f
    add b                                         ; $726d: $80
    ld a, a                                       ; $726e: $7f
    nop                                           ; $726f: $00
    db $10                                        ; $7270: $10
    jr jr_006_7283                                ; $7271: $18 $10

jr_006_7273:
    jr @+$01                                      ; $7273: $18 $ff

    rst RST_38                                    ; $7275: $ff

jr_006_7276:
    nop                                           ; $7276: $00
    add e                                         ; $7277: $83
    rst RST_38                                    ; $7278: $ff
    nop                                           ; $7279: $00
    rst RST_38                                    ; $727a: $ff
    nop                                           ; $727b: $00
    rst RST_38                                    ; $727c: $ff
    nop                                           ; $727d: $00
    rst RST_38                                    ; $727e: $ff
    nop                                           ; $727f: $00
    db $10                                        ; $7280: $10
    jr jr_006_7293                                ; $7281: $18 $10

jr_006_7283:
    jr jr_006_7295                                ; $7283: $18 $10

    jr @-$03                                      ; $7285: $18 $fb

    rst RST_38                                    ; $7287: $ff
    ld sp, $8971                                  ; $7288: $31 $71 $89
    add hl, de                                    ; $728b: $19
    sub l                                         ; $728c: $95
    dec h                                         ; $728d: $25
    inc a                                         ; $728e: $3c
    ld a, a                                       ; $728f: $7f
    dec c                                         ; $7290: $0d
    ld c, $0b                                     ; $7291: $0e $0b

jr_006_7293:
    inc c                                         ; $7293: $0c
    rla                                           ; $7294: $17

jr_006_7295:
    jr jr_006_72c6                                ; $7295: $18 $2f

    jr nc, jr_006_72c8                            ; $7297: $30 $2f

    jr nz, jr_006_72f9                            ; $7299: $20 $5e

    ld h, c                                       ; $729b: $61
    ld e, h                                       ; $729c: $5c
    ld b, c                                       ; $729d: $41
    ld e, c                                       ; $729e: $59
    ld b, d                                       ; $729f: $42
    db $fc                                        ; $72a0: $fc
    nop                                           ; $72a1: $00
    ldh [rIF], a                                  ; $72a2: $e0 $0f
    jp $9f30                                      ; $72a4: $c3 $30 $9f


    ld h, b                                       ; $72a7: $60
    ccf                                           ; $72a8: $3f
    add c                                         ; $72a9: $81
    ld a, [hl]                                    ; $72aa: $7e
    ld b, $ea                                     ; $72ab: $06 $ea
    add hl, de                                    ; $72ad: $19
    rst RST_30                                    ; $72ae: $f7
    ld sp, $013d                                  ; $72af: $31 $3d $01
    ld b, $cf                                     ; $72b2: $06 $cf
    reti                                          ; $72b4: $d9


    inc a                                         ; $72b5: $3c
    ld l, a                                       ; $72b6: $6f
    ldh [$ff9e], a                                ; $72b7: $e0 $9e
    cp b                                          ; $72b9: $b8
    ld a, l                                       ; $72ba: $7d
    rst RST_38                                    ; $72bb: $ff
    cp $fe                                        ; $72bc: $fe $fe
    rst RST_18                                    ; $72be: $df
    jp nz, $e0c6                                  ; $72bf: $c2 $c6 $e0

    ld a, a                                       ; $72c2: $7f
    nop                                           ; $72c3: $00
    db $fc                                        ; $72c4: $fc
    nop                                           ; $72c5: $00

jr_006_72c6:
    rst RST_08                                    ; $72c6: $cf
    rra                                           ; $72c7: $1f

jr_006_72c8:
    ld a, h                                       ; $72c8: $7c
    rst RST_38                                    ; $72c9: $ff
    sbc [hl]                                      ; $72ca: $9e
    cp [hl]                                       ; $72cb: $be
    and $36                                       ; $72cc: $e6 $36
    cp e                                          ; $72ce: $bb
    ld h, $00                                     ; $72cf: $26 $00
    ld h, b                                       ; $72d1: $60
    ret nz                                        ; $72d2: $c0

    db $10                                        ; $72d3: $10
    ld h, b                                       ; $72d4: $60
    ld [$88b0], sp                                ; $72d5: $08 $b0 $88
    ld l, b                                       ; $72d8: $68
    ret z                                         ; $72d9: $c8

    ld l, b                                       ; $72da: $68
    ld e, b                                       ; $72db: $58
    sub b                                         ; $72dc: $90
    db $10                                        ; $72dd: $10
    jr nz, @+$62                                  ; $72de: $20 $60

    sbc c                                         ; $72e0: $99
    call nz, $c58b                                ; $72e1: $c4 $8b $c5
    add d                                         ; $72e4: $82
    add $85                                       ; $72e5: $c6 $85
    db $ec                                        ; $72e7: $ec
    adc e                                         ; $72e8: $8b
    ld hl, sp-$62                                 ; $72e9: $f8 $9e
    ldh a, [$ff7c]                                ; $72eb: $f0 $7c
    ld h, c                                       ; $72ed: $61
    ei                                            ; $72ee: $fb
    jp $c1dd                                      ; $72ef: $c3 $dd $c1


    dec sp                                        ; $72f2: $3b
    add e                                         ; $72f3: $83
    db $ed                                        ; $72f4: $ed
    dec c                                         ; $72f5: $0d
    sub $11                                       ; $72f6: $d6 $11
    cp a                                          ; $72f8: $bf

jr_006_72f9:
    jr nz, jr_006_736a                            ; $72f9: $20 $6f

    ldh [$ff81], a                                ; $72fb: $e0 $81
    db $f4                                        ; $72fd: $f4

jr_006_72fe:
    ld bc, $fcfa                                  ; $72fe: $01 $fa $fc
    sbc l                                         ; $7301: $9d
    rst RST_28                                    ; $7302: $ef
    inc hl                                        ; $7303: $23
    rst RST_18                                    ; $7304: $df
    ld b, c                                       ; $7305: $41
    db $db                                        ; $7306: $db
    ld e, c                                       ; $7307: $59
    rst RST_38                                    ; $7308: $ff
    ld a, l                                       ; $7309: $7d
    rst RST_38                                    ; $730a: $ff
    ld l, l                                       ; $730b: $6d
    rst RST_38                                    ; $730c: $ff
    ld a, l                                       ; $730d: $7d
    rst RST_38                                    ; $730e: $ff
    ld a, l                                       ; $730f: $7d
    cp d                                          ; $7310: $ba
    ld b, d                                       ; $7311: $42
    rst RST_38                                    ; $7312: $ff
    inc bc                                        ; $7313: $03
    sbc $1a                                       ; $7314: $de $1a
    cp [hl]                                       ; $7316: $be
    ld [hl+], a                                   ; $7317: $22
    rst RST_08                                    ; $7318: $cf
    ld e, a                                       ; $7319: $5f
    ldh a, [$ff7c]                                ; $731a: $f0 $7c
    rst RST_20                                    ; $731c: $e7
    jr nc, jr_006_72fe                            ; $731d: $30 $df

    ld h, b                                       ; $731f: $60
    ret nz                                        ; $7320: $c0

    ret nz                                        ; $7321: $c0

    nop                                           ; $7322: $00
    nop                                           ; $7323: $00
    nop                                           ; $7324: $00
    ld bc, $0101                                  ; $7325: $01 $01 $01
    add c                                         ; $7328: $81
    add c                                         ; $7329: $81

jr_006_732a:
    ld h, c                                       ; $732a: $61
    ld h, c                                       ; $732b: $61
    sub c                                         ; $732c: $91
    ld sp, $11d1                                  ; $732d: $31 $d1 $11
    nop                                           ; $7330: $00
    nop                                           ; $7331: $00
    ld [hl], b                                    ; $7332: $70
    ldh a, [$ff88]                                ; $7333: $f0 $88
    sbc b                                         ; $7335: $98
    ld l, b                                       ; $7336: $68
    ld [$08f8], sp                                ; $7337: $08 $f8 $08
    ld hl, sp+$08                                 ; $733a: $f8 $08
    ld hl, sp+$08                                 ; $733c: $f8 $08
    ld a, b                                       ; $733e: $78
    ld [$85b5], sp                                ; $733f: $08 $b5 $85
    inc l                                         ; $7342: $2c
    adc h                                         ; $7343: $8c
    dec de                                        ; $7344: $1b
    sbc d                                         ; $7345: $9a
    daa                                           ; $7346: $27
    or $4f                                        ; $7347: $f6 $4f
    ldh [c], a                                    ; $7349: $e2
    call $27e2                                    ; $734a: $cd $e2 $27
    jr nc, jr_006_7369                            ; $734d: $30 $1a

    jr @+$03                                      ; $734f: $18 $01

    jp nc, $c483                                  ; $7351: $d2 $83 $c4

    add e                                         ; $7354: $83
    db $ec                                        ; $7355: $ec
    ld c, e                                       ; $7356: $4b
    ld a, b                                       ; $7357: $78
    or a                                          ; $7358: $b7
    jr nc, jr_006_732a                            ; $7359: $30 $cf

    nop                                           ; $735b: $00
    ld a, a                                       ; $735c: $7f
    nop                                           ; $735d: $00
    cp a                                          ; $735e: $bf
    add b                                         ; $735f: $80
    cp c                                          ; $7360: $b9
    ld a, c                                       ; $7361: $79
    rst RST_18                                    ; $7362: $df
    ld a, $ff                                     ; $7363: $3e $ff
    add b                                         ; $7365: $80
    rst RST_18                                    ; $7366: $df
    pop hl                                        ; $7367: $e1
    rst RST_38                                    ; $7368: $ff

jr_006_7369:
    rst RST_38                                    ; $7369: $ff

jr_006_736a:
    ld a, a                                       ; $736a: $7f
    rst RST_38                                    ; $736b: $ff
    ld a, a                                       ; $736c: $7f
    ld a, a                                       ; $736d: $7f
    rst RST_18                                    ; $736e: $df
    rra                                           ; $736f: $1f
    rst RST_38                                    ; $7370: $ff
    ld b, b                                       ; $7371: $40
    rst RST_38                                    ; $7372: $ff
    nop                                           ; $7373: $00
    rst RST_38                                    ; $7374: $ff
    nop                                           ; $7375: $00
    ld a, a                                       ; $7376: $7f
    nop                                           ; $7377: $00
    rra                                           ; $7378: $1f
    add b                                         ; $7379: $80
    add b                                         ; $737a: $80
    ret nz                                        ; $737b: $c0

    ldh [$fff0], a                                ; $737c: $e0 $f0
    rst RST_38                                    ; $737e: $ff
    rst RST_38                                    ; $737f: $ff
    add sp, $19                                   ; $7380: $e8 $19
    add sp, $18                                   ; $7382: $e8 $18
    rst RST_28                                    ; $7384: $ef
    rra                                           ; $7385: $1f
    reti                                          ; $7386: $d9


    inc e                                         ; $7387: $1c
    sub e                                         ; $7388: $93
    jr c, jr_006_73bb                             ; $7389: $38 $30

    ld a, b                                       ; $738b: $78
    ld d, h                                       ; $738c: $54
    rst RST_18                                    ; $738d: $df
    adc c                                         ; $738e: $89
    adc h                                         ; $738f: $8c
    ld hl, sp-$78                                 ; $7390: $f8 $88
    or h                                          ; $7392: $b4
    adc h                                         ; $7393: $8c
    call nz, $f2fc                                ; $7394: $c4 $fc $f2
    ld b, $fa                                     ; $7397: $06 $fa
    ld [bc], a                                    ; $7399: $02
    dec a                                         ; $739a: $3d
    inc bc                                        ; $739b: $03
    dec a                                         ; $739c: $3d
    add c                                         ; $739d: $81
    db $fd                                        ; $739e: $fd
    ld bc, $0707                                  ; $739f: $01 $07 $07
    nop                                           ; $73a2: $00
    nop                                           ; $73a3: $00
    ld bc, $0201                                  ; $73a4: $01 $01 $02
    ld [bc], a                                    ; $73a7: $02
    dec b                                         ; $73a8: $05
    inc b                                         ; $73a9: $04
    dec bc                                        ; $73aa: $0b
    ld [$3f3f], sp                                ; $73ab: $08 $3f $3f
    ld h, b                                       ; $73ae: $60
    ld a, a                                       ; $73af: $7f
    ld e, a                                       ; $73b0: $5f
    ld b, b                                       ; $73b1: $40
    rst RST_28                                    ; $73b2: $ef
    ldh [$ff97], a                                ; $73b3: $e0 $97
    ld hl, sp+$09                                 ; $73b5: $f8 $09
    inc a                                         ; $73b7: $3c
    add $1e                                       ; $73b8: $c6 $1e
    db $e3                                        ; $73ba: $e3

jr_006_73bb:
    rrca                                          ; $73bb: $0f
    rst RST_38                                    ; $73bc: $ff
    rst RST_38                                    ; $73bd: $ff
    nop                                           ; $73be: $00
    rst RST_38                                    ; $73bf: $ff
    rst RST_28                                    ; $73c0: $ef
    rrca                                          ; $73c1: $0f
    db $fd                                        ; $73c2: $fd
    inc bc                                        ; $73c3: $03
    rst RST_38                                    ; $73c4: $ff
    nop                                           ; $73c5: $00
    cp $01                                        ; $73c6: $fe $01
    rst RST_38                                    ; $73c8: $ff
    nop                                           ; $73c9: $00
    ld a, $80                                     ; $73ca: $3e $80
    rst RST_38                                    ; $73cc: $ff
    rst RST_38                                    ; $73cd: $ff
    ld bc, $efff                                  ; $73ce: $01 $ff $ef
    rst RST_38                                    ; $73d1: $ff
    rst RST_10                                    ; $73d2: $d7
    rst RST_28                                    ; $73d3: $ef
    or $06                                        ; $73d4: $f6 $06
    add hl, bc                                    ; $73d6: $09
    rrca                                          ; $73d7: $0f
    ld [hl], d                                    ; $73d8: $72
    ld hl, sp+$67                                 ; $73d9: $f8 $67
    ld [hl], b                                    ; $73db: $70
    rst RST_38                                    ; $73dc: $ff
    rst RST_38                                    ; $73dd: $ff
    add b                                         ; $73de: $80
    rst RST_38                                    ; $73df: $ff
    adc c                                         ; $73e0: $89
    adc h                                         ; $73e1: $8c
    ld c, $0f                                     ; $73e2: $0e $0f
    add hl, bc                                    ; $73e4: $09
    inc c                                         ; $73e5: $0c
    adc c                                         ; $73e6: $89
    adc h                                         ; $73e7: $8c
    ld b, [hl]                                    ; $73e8: $46
    rst RST_00                                    ; $73e9: $c7
    inc h                                         ; $73ea: $24
    ld h, [hl]                                    ; $73eb: $66
    rst RST_38                                    ; $73ec: $ff
    rst RST_38                                    ; $73ed: $ff
    nop                                           ; $73ee: $00
    rst RST_38                                    ; $73ef: $ff
    db $fd                                        ; $73f0: $fd
    ld bc, $813d                                  ; $73f1: $01 $3d $81
    db $fd                                        ; $73f4: $fd
    ld bc, $01fd                                  ; $73f5: $01 $fd $01
    dec a                                         ; $73f8: $3d
    ld bc, $03fa                                  ; $73f9: $01 $fa $03
    cp $ff                                        ; $73fc: $fe $ff
    inc bc                                        ; $73fe: $03
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

jr_006_7412:
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

jr_006_7422:
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

jr_006_7432:
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

jr_006_7442:
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
    db $10                                        ; $7450: $10
    jr jr_006_7463                                ; $7451: $18 $10

    jr jr_006_7465                                ; $7453: $18 $10

    jr jr_006_7412                                ; $7455: $18 $bb

    rst RST_38                                    ; $7457: $ff
    ld bc, $0181                                  ; $7458: $01 $81 $01
    add c                                         ; $745b: $81
    ld bc, $ff81                                  ; $745c: $01 $81 $ff
    rst RST_38                                    ; $745f: $ff
    db $10                                        ; $7460: $10

jr_006_7461:
    jr jr_006_7473                                ; $7461: $18 $10

jr_006_7463:
    jr jr_006_7475                                ; $7463: $18 $10

jr_006_7465:
    jr jr_006_7422                                ; $7465: $18 $bb

    rst RST_38                                    ; $7467: $ff
    ld bc, $0181                                  ; $7468: $01 $81 $01
    add c                                         ; $746b: $81
    ld bc, $ff81                                  ; $746c: $01 $81 $ff
    rst RST_38                                    ; $746f: $ff
    db $10                                        ; $7470: $10
    jr jr_006_7483                                ; $7471: $18 $10

jr_006_7473:
    jr jr_006_7485                                ; $7473: $18 $10

jr_006_7475:
    jr jr_006_7432                                ; $7475: $18 $bb

    rst RST_38                                    ; $7477: $ff
    ld bc, $0181                                  ; $7478: $01 $81 $01
    add c                                         ; $747b: $81
    ld bc, $ff81                                  ; $747c: $01 $81 $ff
    rst RST_38                                    ; $747f: $ff
    db $10                                        ; $7480: $10
    jr jr_006_7493                                ; $7481: $18 $10

jr_006_7483:
    jr jr_006_7495                                ; $7483: $18 $10

jr_006_7485:
    jr jr_006_7442                                ; $7485: $18 $bb

    rst RST_38                                    ; $7487: $ff
    ld bc, $0181                                  ; $7488: $01 $81 $01
    add c                                         ; $748b: $81
    ld bc, $ff81                                  ; $748c: $01 $81 $ff
    rst RST_38                                    ; $748f: $ff
    nop                                           ; $7490: $00
    nop                                           ; $7491: $00
    nop                                           ; $7492: $00

jr_006_7493:
    nop                                           ; $7493: $00
    nop                                           ; $7494: $00

jr_006_7495:
    nop                                           ; $7495: $00
    nop                                           ; $7496: $00
    nop                                           ; $7497: $00
    inc bc                                        ; $7498: $03
    inc bc                                        ; $7499: $03
    ld b, $04                                     ; $749a: $06 $04
    add hl, bc                                    ; $749c: $09
    add hl, bc                                    ; $749d: $09
    ld a, [bc]                                    ; $749e: $0a
    rrca                                          ; $749f: $0f
    nop                                           ; $74a0: $00
    nop                                           ; $74a1: $00
    nop                                           ; $74a2: $00
    nop                                           ; $74a3: $00
    ld bc, $0e01                                  ; $74a4: $01 $01 $0e
    rrca                                          ; $74a7: $0f
    or c                                          ; $74a8: $b1
    cp b                                          ; $74a9: $b8
    rst RST_00                                    ; $74aa: $c7
    ldh [$ff1f], a                                ; $74ab: $e0 $1f
    add b                                         ; $74ad: $80
    rst RST_38                                    ; $74ae: $ff
    nop                                           ; $74af: $00
    nop                                           ; $74b0: $00
    nop                                           ; $74b1: $00
    nop                                           ; $74b2: $00
    nop                                           ; $74b3: $00
    rst RST_38                                    ; $74b4: $ff
    rst RST_38                                    ; $74b5: $ff
    nop                                           ; $74b6: $00
    add e                                         ; $74b7: $83
    rst RST_38                                    ; $74b8: $ff
    nop                                           ; $74b9: $00
    rst RST_38                                    ; $74ba: $ff
    nop                                           ; $74bb: $00
    rst RST_38                                    ; $74bc: $ff
    nop                                           ; $74bd: $00
    rst RST_38                                    ; $74be: $ff
    nop                                           ; $74bf: $00
    nop                                           ; $74c0: $00
    nop                                           ; $74c1: $00
    nop                                           ; $74c2: $00
    nop                                           ; $74c3: $00
    nop                                           ; $74c4: $00
    nop                                           ; $74c5: $00
    ret nz                                        ; $74c6: $c0

    ret nz                                        ; $74c7: $c0

    jr nc, jr_006_753a                            ; $74c8: $30 $70

    adc b                                         ; $74ca: $88
    jr jr_006_7461                                ; $74cb: $18 $94

    inc h                                         ; $74cd: $24
    inc a                                         ; $74ce: $3c
    ld a, a                                       ; $74cf: $7f
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
    add b                                         ; $74df: $80
    dec c                                         ; $74e0: $0d
    ld c, $0b                                     ; $74e1: $0e $0b
    inc c                                         ; $74e3: $0c
    inc de                                        ; $74e4: $13
    jr jr_006_750e                                ; $74e5: $18 $27

    jr nc, jr_006_7518                            ; $74e7: $30 $2f

    jr nz, jr_006_7539                            ; $74e9: $20 $4e

    ld h, c                                       ; $74eb: $61
    ld e, h                                       ; $74ec: $5c
    ld h, c                                       ; $74ed: $61
    ld e, c                                       ; $74ee: $59
    ld b, d                                       ; $74ef: $42
    db $fc                                        ; $74f0: $fc
    nop                                           ; $74f1: $00
    ldh [rIF], a                                  ; $74f2: $e0 $0f
    jp $9f30                                      ; $74f4: $c3 $30 $9f


    ld h, b                                       ; $74f7: $60
    ccf                                           ; $74f8: $3f
    add c                                         ; $74f9: $81
    ld a, [hl]                                    ; $74fa: $7e
    ld b, $ea                                     ; $74fb: $06 $ea
    add hl, de                                    ; $74fd: $19
    rst RST_30                                    ; $74fe: $f7
    ld sp, $013d                                  ; $74ff: $31 $3d $01
    ld b, $cf                                     ; $7502: $06 $cf
    reti                                          ; $7504: $d9


    inc a                                         ; $7505: $3c
    ld l, a                                       ; $7506: $6f
    ldh [$ff9e], a                                ; $7507: $e0 $9e
    cp b                                          ; $7509: $b8
    ld a, l                                       ; $750a: $7d
    rst RST_38                                    ; $750b: $ff
    cp $fe                                        ; $750c: $fe $fe

jr_006_750e:
    db $db                                        ; $750e: $db
    add $c6                                       ; $750f: $c6 $c6
    ldh [$ff7f], a                                ; $7511: $e0 $7f
    nop                                           ; $7513: $00
    db $fc                                        ; $7514: $fc
    nop                                           ; $7515: $00
    rst RST_08                                    ; $7516: $cf
    rra                                           ; $7517: $1f

jr_006_7518:
    ld a, h                                       ; $7518: $7c
    rst RST_38                                    ; $7519: $ff
    sbc [hl]                                      ; $751a: $9e
    cp [hl]                                       ; $751b: $be
    and $36                                       ; $751c: $e6 $36
    ei                                            ; $751e: $fb
    and d                                         ; $751f: $a2
    nop                                           ; $7520: $00
    ld h, b                                       ; $7521: $60
    ret nz                                        ; $7522: $c0

    db $10                                        ; $7523: $10
    ld h, b                                       ; $7524: $60
    ld [$88b0], sp                                ; $7525: $08 $b0 $88
    ld h, b                                       ; $7528: $60
    ret z                                         ; $7529: $c8

    ld l, b                                       ; $752a: $68
    ld e, b                                       ; $752b: $58
    sub b                                         ; $752c: $90
    db $10                                        ; $752d: $10
    jr nz, @+$62                                  ; $752e: $20 $60

    nop                                           ; $7530: $00
    nop                                           ; $7531: $00
    nop                                           ; $7532: $00
    nop                                           ; $7533: $00
    nop                                           ; $7534: $00
    nop                                           ; $7535: $00
    nop                                           ; $7536: $00
    nop                                           ; $7537: $00
    nop                                           ; $7538: $00

jr_006_7539:
    nop                                           ; $7539: $00

jr_006_753a:
    nop                                           ; $753a: $00
    nop                                           ; $753b: $00
    nop                                           ; $753c: $00
    nop                                           ; $753d: $00
    nop                                           ; $753e: $00
    nop                                           ; $753f: $00
    sbc c                                         ; $7540: $99
    call nz, $c58b                                ; $7541: $c4 $8b $c5
    add d                                         ; $7544: $82
    add $85                                       ; $7545: $c6 $85
    call z, $f88b                                 ; $7547: $cc $8b $f8
    sbc [hl]                                      ; $754a: $9e
    ldh a, [$ff7c]                                ; $754b: $f0 $7c
    ld h, c                                       ; $754d: $61
    ei                                            ; $754e: $fb
    jp $c1dd                                      ; $754f: $c3 $dd $c1


    dec sp                                        ; $7552: $3b
    add e                                         ; $7553: $83
    db $ed                                        ; $7554: $ed
    dec c                                         ; $7555: $0d
    sub $11                                       ; $7556: $d6 $11
    cp a                                          ; $7558: $bf
    jr nz, jr_006_75ca                            ; $7559: $20 $6f

    ldh [$ff81], a                                ; $755b: $e0 $81
    db $f4                                        ; $755d: $f4

jr_006_755e:
    ld bc, $fdfa                                  ; $755e: $01 $fa $fd
    add e                                         ; $7561: $83
    rst RST_38                                    ; $7562: $ff
    ld bc, $00ff                                  ; $7563: $01 $ff $00
    db $fd                                        ; $7566: $fd
    inc a                                         ; $7567: $3c
    jp c, $bd42                                   ; $7568: $da $42 $bd

    inc bc                                        ; $756b: $03
    rst RST_38                                    ; $756c: $ff
    rra                                           ; $756d: $1f
    xor $21                                       ; $756e: $ee $21
    ld a, [$ffa6]                                 ; $7570: $fa $a6 $ff
    add e                                         ; $7573: $83
    sbc $1a                                       ; $7574: $de $1a
    cp [hl]                                       ; $7576: $be
    ld [hl+], a                                   ; $7577: $22
    rst RST_18                                    ; $7578: $df
    ld e, a                                       ; $7579: $5f
    ld hl, sp+$7c                                 ; $757a: $f8 $7c
    and a                                         ; $757c: $a7
    jr nc, jr_006_755e                            ; $757d: $30 $df

    ld h, b                                       ; $757f: $60
    ret nz                                        ; $7580: $c0

    ret nz                                        ; $7581: $c0

    nop                                           ; $7582: $00
    nop                                           ; $7583: $00
    nop                                           ; $7584: $00
    nop                                           ; $7585: $00
    nop                                           ; $7586: $00
    nop                                           ; $7587: $00
    add b                                         ; $7588: $80
    add b                                         ; $7589: $80

jr_006_758a:
    ld h, b                                       ; $758a: $60
    ld h, b                                       ; $758b: $60
    sub b                                         ; $758c: $90
    jr nc, @-$2e                                  ; $758d: $30 $d0

    stop                                          ; $758f: $10 $00
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
    or l                                          ; $75a0: $b5
    add l                                         ; $75a1: $85
    inc l                                         ; $75a2: $2c
    adc h                                         ; $75a3: $8c
    dec de                                        ; $75a4: $1b
    sbc d                                         ; $75a5: $9a
    daa                                           ; $75a6: $27
    or $4f                                        ; $75a7: $f6 $4f
    ldh [c], a                                    ; $75a9: $e2
    call Call_006_7fe2                            ; $75aa: $cd $e2 $7f
    ld a, a                                       ; $75ad: $7f
    and b                                         ; $75ae: $a0
    rst RST_38                                    ; $75af: $ff
    ld bc, $83d2                                  ; $75b0: $01 $d2 $83
    call nz, $ec83                                ; $75b3: $c4 $83 $ec
    ld c, e                                       ; $75b6: $4b
    ld a, b                                       ; $75b7: $78
    or a                                          ; $75b8: $b7
    jr nc, jr_006_758a                            ; $75b9: $30 $cf

    nop                                           ; $75bb: $00
    rst RST_38                                    ; $75bc: $ff
    rst RST_38                                    ; $75bd: $ff
    nop                                           ; $75be: $00
    rst RST_38                                    ; $75bf: $ff
    rst RST_18                                    ; $75c0: $df
    nop                                           ; $75c1: $00
    ld a, a                                       ; $75c2: $7f
    nop                                           ; $75c3: $00
    cp a                                          ; $75c4: $bf
    add b                                         ; $75c5: $80
    rst RST_18                                    ; $75c6: $df
    pop hl                                        ; $75c7: $e1
    rst RST_38                                    ; $75c8: $ff
    rst RST_38                                    ; $75c9: $ff

jr_006_75ca:
    ld a, a                                       ; $75ca: $7f
    rst RST_38                                    ; $75cb: $ff
    rst RST_38                                    ; $75cc: $ff
    rst RST_38                                    ; $75cd: $ff
    ld bc, rIE                                    ; $75ce: $01 $ff $ff
    ld b, b                                       ; $75d1: $40
    rst RST_38                                    ; $75d2: $ff
    nop                                           ; $75d3: $00
    rst RST_38                                    ; $75d4: $ff
    nop                                           ; $75d5: $00
    ld a, a                                       ; $75d6: $7f
    nop                                           ; $75d7: $00
    ccf                                           ; $75d8: $3f
    add b                                         ; $75d9: $80
    add b                                         ; $75da: $80
    ret nz                                        ; $75db: $c0

    rst RST_38                                    ; $75dc: $ff
    rst RST_38                                    ; $75dd: $ff
    add b                                         ; $75de: $80
    rst RST_38                                    ; $75df: $ff
    rst RST_28                                    ; $75e0: $ef
    rra                                           ; $75e1: $1f
    jp hl                                         ; $75e2: $e9


    inc e                                         ; $75e3: $1c
    db $ec                                        ; $75e4: $ec
    ld a, [de]                                    ; $75e5: $1a
    sub $11                                       ; $75e6: $d6 $11
    sub [hl]                                      ; $75e8: $96
    jr nc, jr_006_7612                            ; $75e9: $30 $27

    ld h, b                                       ; $75eb: $60
    rst RST_38                                    ; $75ec: $ff
    rst RST_38                                    ; $75ed: $ff
    nop                                           ; $75ee: $00
    rst RST_38                                    ; $75ef: $ff
    ret nz                                        ; $75f0: $c0

    ret nz                                        ; $75f1: $c0

    jr c, jr_006_766c                             ; $75f2: $38 $78

    call z, $e624                                 ; $75f4: $cc $24 $e6
    ld [de], a                                    ; $75f7: $12
    ld h, [hl]                                    ; $75f8: $66
    sub d                                         ; $75f9: $92
    ld h, [hl]                                    ; $75fa: $66
    sub d                                         ; $75fb: $92
    ld a, [$06fa]                                 ; $75fc: $fa $fa $06
    cp $00                                        ; $75ff: $fe $00
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

jr_006_7612:
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

jr_006_766c:
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
    rst RST_38                                    ; $7800: $ff
    rst RST_38                                    ; $7801: $ff
    add b                                         ; $7802: $80
    rst RST_38                                    ; $7803: $ff
    cp a                                          ; $7804: $bf
    ret nz                                        ; $7805: $c0

    cp a                                          ; $7806: $bf
    ret nz                                        ; $7807: $c0

    cp a                                          ; $7808: $bf
    ret nz                                        ; $7809: $c0

    cp a                                          ; $780a: $bf
    ret nz                                        ; $780b: $c0

    cp a                                          ; $780c: $bf
    ret nz                                        ; $780d: $c0

    cp a                                          ; $780e: $bf
    ret nz                                        ; $780f: $c0

    rst RST_38                                    ; $7810: $ff
    rst RST_38                                    ; $7811: $ff
    nop                                           ; $7812: $00
    rst RST_38                                    ; $7813: $ff
    rst RST_38                                    ; $7814: $ff
    nop                                           ; $7815: $00
    rst RST_38                                    ; $7816: $ff
    nop                                           ; $7817: $00
    rst RST_38                                    ; $7818: $ff
    push bc                                       ; $7819: $c5
    rst RST_38                                    ; $781a: $ff
    call nc, $d5ff                                ; $781b: $d4 $ff $d5
    rst RST_38                                    ; $781e: $ff
    push de                                       ; $781f: $d5
    rst RST_38                                    ; $7820: $ff
    rst RST_38                                    ; $7821: $ff
    nop                                           ; $7822: $00
    rst RST_38                                    ; $7823: $ff
    rst RST_38                                    ; $7824: $ff
    nop                                           ; $7825: $00
    rst RST_38                                    ; $7826: $ff
    nop                                           ; $7827: $00
    rst RST_38                                    ; $7828: $ff
    sbc b                                         ; $7829: $98
    rst RST_38                                    ; $782a: $ff
    ld a, $ff                                     ; $782b: $3e $ff
    sbc b                                         ; $782d: $98
    rst RST_38                                    ; $782e: $ff
    sbc b                                         ; $782f: $98
    rst RST_38                                    ; $7830: $ff
    rst RST_38                                    ; $7831: $ff
    nop                                           ; $7832: $00
    rst RST_38                                    ; $7833: $ff
    rst RST_38                                    ; $7834: $ff
    nop                                           ; $7835: $00
    rst RST_38                                    ; $7836: $ff
    nop                                           ; $7837: $00
    rst RST_38                                    ; $7838: $ff
    ret nz                                        ; $7839: $c0

    rst RST_38                                    ; $783a: $ff
    ret nz                                        ; $783b: $c0

    rst RST_38                                    ; $783c: $ff
    ldh a, [rIE]                                  ; $783d: $f0 $ff
    ret c                                         ; $783f: $d8

    rst RST_38                                    ; $7840: $ff
    rst RST_38                                    ; $7841: $ff
    nop                                           ; $7842: $00
    rst RST_38                                    ; $7843: $ff
    rst RST_38                                    ; $7844: $ff
    nop                                           ; $7845: $00
    rst RST_38                                    ; $7846: $ff
    nop                                           ; $7847: $00
    rst RST_38                                    ; $7848: $ff
    add hl, de                                    ; $7849: $19
    rst RST_38                                    ; $784a: $ff
    add hl, de                                    ; $784b: $19
    rst RST_38                                    ; $784c: $ff
    rra                                           ; $784d: $1f
    rst RST_38                                    ; $784e: $ff
    add hl, de                                    ; $784f: $19
    rst RST_38                                    ; $7850: $ff
    rst RST_38                                    ; $7851: $ff
    nop                                           ; $7852: $00
    rst RST_38                                    ; $7853: $ff
    rst RST_38                                    ; $7854: $ff
    nop                                           ; $7855: $00
    rst RST_38                                    ; $7856: $ff
    nop                                           ; $7857: $00
    rst RST_38                                    ; $7858: $ff
    or b                                          ; $7859: $b0
    rst RST_38                                    ; $785a: $ff
    add a                                         ; $785b: $87
    rst RST_38                                    ; $785c: $ff
    or [hl]                                       ; $785d: $b6
    rst RST_38                                    ; $785e: $ff
    or [hl]                                       ; $785f: $b6
    rst RST_38                                    ; $7860: $ff
    rst RST_38                                    ; $7861: $ff
    nop                                           ; $7862: $00
    rst RST_38                                    ; $7863: $ff
    rst RST_38                                    ; $7864: $ff
    nop                                           ; $7865: $00
    rst RST_38                                    ; $7866: $ff
    nop                                           ; $7867: $00
    rst RST_38                                    ; $7868: $ff
    inc c                                         ; $7869: $0c
    rst RST_38                                    ; $786a: $ff
    sbc a                                         ; $786b: $9f
    rst RST_38                                    ; $786c: $ff
    call z, $ccff                                 ; $786d: $cc $ff $cc
    rst RST_38                                    ; $7870: $ff
    rst RST_38                                    ; $7871: $ff
    ld bc, $fdff                                  ; $7872: $01 $ff $fd
    inc bc                                        ; $7875: $03
    db $fd                                        ; $7876: $fd
    inc bc                                        ; $7877: $03
    db $fd                                        ; $7878: $fd
    inc bc                                        ; $7879: $03
    db $fd                                        ; $787a: $fd
    inc bc                                        ; $787b: $03
    db $fd                                        ; $787c: $fd
    inc bc                                        ; $787d: $03
    db $fd                                        ; $787e: $fd
    inc bc                                        ; $787f: $03
    cp a                                          ; $7880: $bf
    ret nz                                        ; $7881: $c0

    cp a                                          ; $7882: $bf
    ret nz                                        ; $7883: $c0

    cp a                                          ; $7884: $bf
    ret nz                                        ; $7885: $c0

    cp a                                          ; $7886: $bf
    ret nz                                        ; $7887: $c0

    cp a                                          ; $7888: $bf
    ret nz                                        ; $7889: $c0

    cp a                                          ; $788a: $bf
    ret nz                                        ; $788b: $c0

    cp a                                          ; $788c: $bf
    ret nz                                        ; $788d: $c0

    cp a                                          ; $788e: $bf
    ret nz                                        ; $788f: $c0

    rst RST_38                                    ; $7890: $ff
    db $fd                                        ; $7891: $fd
    rst RST_38                                    ; $7892: $ff
    ld l, c                                       ; $7893: $69
    rst RST_38                                    ; $7894: $ff
    nop                                           ; $7895: $00
    rst RST_38                                    ; $7896: $ff
    nop                                           ; $7897: $00
    rst RST_38                                    ; $7898: $ff
    nop                                           ; $7899: $00
    rst RST_38                                    ; $789a: $ff
    nop                                           ; $789b: $00
    rst RST_38                                    ; $789c: $ff
    inc bc                                        ; $789d: $03
    rst RST_38                                    ; $789e: $ff
    inc bc                                        ; $789f: $03
    rst RST_38                                    ; $78a0: $ff
    sbc d                                         ; $78a1: $9a
    rst RST_38                                    ; $78a2: $ff
    adc h                                         ; $78a3: $8c
    rst RST_38                                    ; $78a4: $ff
    nop                                           ; $78a5: $00
    rst RST_38                                    ; $78a6: $ff
    nop                                           ; $78a7: $00
    rst RST_38                                    ; $78a8: $ff
    nop                                           ; $78a9: $00
    rst RST_38                                    ; $78aa: $ff
    nop                                           ; $78ab: $00
    rst RST_38                                    ; $78ac: $ff
    jr nc, @+$01                                  ; $78ad: $30 $ff

    inc sp                                        ; $78af: $33
    rst RST_38                                    ; $78b0: $ff
    ret c                                         ; $78b1: $d8

    rst RST_38                                    ; $78b2: $ff
    ret c                                         ; $78b3: $d8

    rst RST_38                                    ; $78b4: $ff
    nop                                           ; $78b5: $00
    rst RST_38                                    ; $78b6: $ff
    nop                                           ; $78b7: $00
    rst RST_38                                    ; $78b8: $ff
    nop                                           ; $78b9: $00
    rst RST_38                                    ; $78ba: $ff
    nop                                           ; $78bb: $00
    rst RST_38                                    ; $78bc: $ff
    nop                                           ; $78bd: $00
    rst RST_38                                    ; $78be: $ff
    adc a                                         ; $78bf: $8f
    rst RST_38                                    ; $78c0: $ff
    add hl, de                                    ; $78c1: $19
    rst RST_38                                    ; $78c2: $ff
    add hl, de                                    ; $78c3: $19
    rst RST_38                                    ; $78c4: $ff
    nop                                           ; $78c5: $00
    rst RST_38                                    ; $78c6: $ff
    nop                                           ; $78c7: $00
    rst RST_38                                    ; $78c8: $ff
    nop                                           ; $78c9: $00
    rst RST_38                                    ; $78ca: $ff
    nop                                           ; $78cb: $00
    rst RST_38                                    ; $78cc: $ff
    nop                                           ; $78cd: $00
    rst RST_38                                    ; $78ce: $ff
    nop                                           ; $78cf: $00
    rst RST_38                                    ; $78d0: $ff
    or [hl]                                       ; $78d1: $b6
    rst RST_38                                    ; $78d2: $ff
    or [hl]                                       ; $78d3: $b6
    rst RST_38                                    ; $78d4: $ff
    nop                                           ; $78d5: $00
    rst RST_38                                    ; $78d6: $ff
    nop                                           ; $78d7: $00
    rst RST_38                                    ; $78d8: $ff
    nop                                           ; $78d9: $00
    rst RST_38                                    ; $78da: $ff
    nop                                           ; $78db: $00
    rst RST_38                                    ; $78dc: $ff
    ld b, $ff                                     ; $78dd: $06 $ff
    rlca                                          ; $78df: $07
    rst RST_38                                    ; $78e0: $ff
    call $c6ff                                    ; $78e1: $cd $ff $c6
    rst RST_38                                    ; $78e4: $ff
    nop                                           ; $78e5: $00
    rst RST_38                                    ; $78e6: $ff
    nop                                           ; $78e7: $00
    rst RST_38                                    ; $78e8: $ff
    nop                                           ; $78e9: $00
    rst RST_38                                    ; $78ea: $ff
    nop                                           ; $78eb: $00
    rst RST_38                                    ; $78ec: $ff
    ld h, b                                       ; $78ed: $60
    rst RST_38                                    ; $78ee: $ff
    ld h, a                                       ; $78ef: $67
    db $fd                                        ; $78f0: $fd
    inc bc                                        ; $78f1: $03
    db $fd                                        ; $78f2: $fd
    inc bc                                        ; $78f3: $03
    db $fd                                        ; $78f4: $fd
    inc bc                                        ; $78f5: $03
    db $fd                                        ; $78f6: $fd
    inc bc                                        ; $78f7: $03
    db $fd                                        ; $78f8: $fd
    inc bc                                        ; $78f9: $03
    db $fd                                        ; $78fa: $fd
    inc bc                                        ; $78fb: $03
    db $fd                                        ; $78fc: $fd
    inc bc                                        ; $78fd: $03
    db $fd                                        ; $78fe: $fd

Call_006_78ff:
    inc bc                                        ; $78ff: $03
    cp a                                          ; $7900: $bf
    ret nz                                        ; $7901: $c0

    cp a                                          ; $7902: $bf
    ret nz                                        ; $7903: $c0

    cp a                                          ; $7904: $bf
    ret nz                                        ; $7905: $c0

    cp a                                          ; $7906: $bf
    ret nz                                        ; $7907: $c0

    cp a                                          ; $7908: $bf
    ret nz                                        ; $7909: $c0

    cp a                                          ; $790a: $bf
    ret nz                                        ; $790b: $c0

    add b                                         ; $790c: $80
    rst RST_38                                    ; $790d: $ff
    rst RST_38                                    ; $790e: $ff
    rst RST_38                                    ; $790f: $ff
    rst RST_38                                    ; $7910: $ff
    ld bc, $00ff                                  ; $7911: $01 $ff $00
    rst RST_38                                    ; $7914: $ff
    nop                                           ; $7915: $00
    rst RST_38                                    ; $7916: $ff
    nop                                           ; $7917: $00
    rst RST_38                                    ; $7918: $ff
    nop                                           ; $7919: $00
    rst RST_38                                    ; $791a: $ff
    nop                                           ; $791b: $00
    nop                                           ; $791c: $00
    rst RST_38                                    ; $791d: $ff
    rst RST_38                                    ; $791e: $ff
    rst RST_38                                    ; $791f: $ff
    rst RST_38                                    ; $7920: $ff
    and $ff                                       ; $7921: $e6 $ff
    rst RST_00                                    ; $7923: $c7
    rst RST_38                                    ; $7924: $ff
    add $ff                                       ; $7925: $c6 $ff
    jp Jump_000_00ff                              ; $7927: $c3 $ff $00


    rst RST_38                                    ; $792a: $ff
    nop                                           ; $792b: $00
    nop                                           ; $792c: $00
    rst RST_38                                    ; $792d: $ff
    rst RST_38                                    ; $792e: $ff
    rst RST_38                                    ; $792f: $ff
    rst RST_38                                    ; $7930: $ff
    ret c                                         ; $7931: $d8

    rst RST_38                                    ; $7932: $ff
    adc $ff                                       ; $7933: $ce $ff
    rlca                                          ; $7935: $07
    rst RST_38                                    ; $7936: $ff
    sbc $ff                                       ; $7937: $de $ff
    nop                                           ; $7939: $00
    rst RST_38                                    ; $793a: $ff
    nop                                           ; $793b: $00
    nop                                           ; $793c: $00
    rst RST_38                                    ; $793d: $ff
    rst RST_38                                    ; $793e: $ff
    rst RST_38                                    ; $793f: $ff
    rst RST_38                                    ; $7940: $ff
    nop                                           ; $7941: $00
    rst RST_38                                    ; $7942: $ff
    nop                                           ; $7943: $00
    rst RST_38                                    ; $7944: $ff
    nop                                           ; $7945: $00
    rst RST_38                                    ; $7946: $ff
    nop                                           ; $7947: $00
    rst RST_38                                    ; $7948: $ff
    nop                                           ; $7949: $00
    rst RST_38                                    ; $794a: $ff
    nop                                           ; $794b: $00
    nop                                           ; $794c: $00
    rst RST_38                                    ; $794d: $ff
    rst RST_38                                    ; $794e: $ff
    rst RST_38                                    ; $794f: $ff
    rst RST_38                                    ; $7950: $ff
    rlca                                          ; $7951: $07
    rst RST_38                                    ; $7952: $ff
    ld b, $ff                                     ; $7953: $06 $ff
    ld b, $ff                                     ; $7955: $06 $ff
    ld b, $ff                                     ; $7957: $06 $ff
    nop                                           ; $7959: $00
    rst RST_38                                    ; $795a: $ff
    nop                                           ; $795b: $00
    nop                                           ; $795c: $00
    rst RST_38                                    ; $795d: $ff
    rst RST_38                                    ; $795e: $ff
    rst RST_38                                    ; $795f: $ff
    rst RST_38                                    ; $7960: $ff
    db $ed                                        ; $7961: $ed
    rst RST_38                                    ; $7962: $ff
    db $ed                                        ; $7963: $ed
    rst RST_38                                    ; $7964: $ff
    ld l, l                                       ; $7965: $6d
    rst RST_38                                    ; $7966: $ff
    ld h, a                                       ; $7967: $67
    rst RST_38                                    ; $7968: $ff
    nop                                           ; $7969: $00
    rst RST_38                                    ; $796a: $ff
    nop                                           ; $796b: $00
    nop                                           ; $796c: $00
    rst RST_38                                    ; $796d: $ff
    rst RST_38                                    ; $796e: $ff
    rst RST_38                                    ; $796f: $ff
    db $fd                                        ; $7970: $fd
    add e                                         ; $7971: $83
    db $fd                                        ; $7972: $fd
    add e                                         ; $7973: $83
    db $fd                                        ; $7974: $fd
    add e                                         ; $7975: $83
    db $fd                                        ; $7976: $fd
    inc bc                                        ; $7977: $03
    db $fd                                        ; $7978: $fd
    inc bc                                        ; $7979: $03
    db $fd                                        ; $797a: $fd
    inc bc                                        ; $797b: $03
    ld bc, rIE                                    ; $797c: $01 $ff $ff
    rst RST_38                                    ; $797f: $ff
    cp a                                          ; $7980: $bf
    ret nz                                        ; $7981: $c0

    cp a                                          ; $7982: $bf
    ret nz                                        ; $7983: $c0

    cp a                                          ; $7984: $bf
    ret nz                                        ; $7985: $c0

    cp a                                          ; $7986: $bf
    ret nz                                        ; $7987: $c0

    cp a                                          ; $7988: $bf
    ret nz                                        ; $7989: $c0

    cp a                                          ; $798a: $bf
    rst RST_00                                    ; $798b: $c7
    cp l                                          ; $798c: $bd
    rst RST_00                                    ; $798d: $c7
    cp l                                          ; $798e: $bd
    rst RST_00                                    ; $798f: $c7
    rst RST_38                                    ; $7990: $ff
    db $fd                                        ; $7991: $fd
    rst RST_38                                    ; $7992: $ff
    ld l, c                                       ; $7993: $69
    rst RST_38                                    ; $7994: $ff
    nop                                           ; $7995: $00
    rst RST_38                                    ; $7996: $ff
    nop                                           ; $7997: $00
    rst RST_38                                    ; $7998: $ff
    nop                                           ; $7999: $00
    rst RST_38                                    ; $799a: $ff
    add b                                         ; $799b: $80
    ld a, a                                       ; $799c: $7f
    jp $e33f                                      ; $799d: $c3 $3f $e3


    cp a                                          ; $79a0: $bf
    push bc                                       ; $79a1: $c5
    cp a                                          ; $79a2: $bf
    push bc                                       ; $79a3: $c5
    cp l                                          ; $79a4: $bd
    rst RST_00                                    ; $79a5: $c7
    cp l                                          ; $79a6: $bd
    rst RST_00                                    ; $79a7: $c7
    cp a                                          ; $79a8: $bf
    rst RST_00                                    ; $79a9: $c7
    cp a                                          ; $79aa: $bf
    ret nz                                        ; $79ab: $c0

    add b                                         ; $79ac: $80
    rst RST_38                                    ; $79ad: $ff
    rst RST_38                                    ; $79ae: $ff
    rst RST_38                                    ; $79af: $ff
    sbc a                                         ; $79b0: $9f
    ld [hl], c                                    ; $79b1: $71
    sbc a                                         ; $79b2: $9f
    ld [hl], b                                    ; $79b3: $70
    ccf                                           ; $79b4: $3f
    ldh [$ff7f], a                                ; $79b5: $e0 $7f
    ret nz                                        ; $79b7: $c0

    rst RST_38                                    ; $79b8: $ff
    add b                                         ; $79b9: $80
    rst RST_38                                    ; $79ba: $ff
    nop                                           ; $79bb: $00
    nop                                           ; $79bc: $00
    rst RST_38                                    ; $79bd: $ff
    rst RST_38                                    ; $79be: $ff
    rst RST_38                                    ; $79bf: $ff
    rst RST_38                                    ; $79c0: $ff
    add hl, de                                    ; $79c1: $19
    rst RST_38                                    ; $79c2: $ff
    add hl, de                                    ; $79c3: $19
    rst RST_38                                    ; $79c4: $ff
    nop                                           ; $79c5: $00
    rst RST_38                                    ; $79c6: $ff
    nop                                           ; $79c7: $00
    rst RST_38                                    ; $79c8: $ff
    nop                                           ; $79c9: $00
    rst RST_38                                    ; $79ca: $ff
    rrca                                          ; $79cb: $0f
    ld a, [$fa0f]                                 ; $79cc: $fa $0f $fa
    rrca                                          ; $79cf: $0f
    rst RST_38                                    ; $79d0: $ff
    or [hl]                                       ; $79d1: $b6
    rst RST_38                                    ; $79d2: $ff
    or [hl]                                       ; $79d3: $b6
    rst RST_38                                    ; $79d4: $ff
    nop                                           ; $79d5: $00
    rst RST_38                                    ; $79d6: $ff
    nop                                           ; $79d7: $00
    rst RST_38                                    ; $79d8: $ff
    nop                                           ; $79d9: $00
    rst RST_38                                    ; $79da: $ff
    nop                                           ; $79db: $00
    rst RST_38                                    ; $79dc: $ff
    add [hl]                                      ; $79dd: $86
    ld a, a                                       ; $79de: $7f
    rst RST_00                                    ; $79df: $c7
    rst RST_38                                    ; $79e0: $ff
    ld a, [bc]                                    ; $79e1: $0a
    rst RST_38                                    ; $79e2: $ff
    ld a, [bc]                                    ; $79e3: $0a
    ld a, [$fa0f]                                 ; $79e4: $fa $0f $fa
    rrca                                          ; $79e7: $0f
    rst RST_38                                    ; $79e8: $ff
    rrca                                          ; $79e9: $0f
    rst RST_38                                    ; $79ea: $ff
    nop                                           ; $79eb: $00
    nop                                           ; $79ec: $00
    rst RST_38                                    ; $79ed: $ff
    rst RST_38                                    ; $79ee: $ff
    rst RST_38                                    ; $79ef: $ff
    ccf                                           ; $79f0: $3f
    rst RST_20                                    ; $79f1: $e7
    ccf                                           ; $79f2: $3f
    and $7f                                       ; $79f3: $e6 $7f
    add $ff                                       ; $79f5: $c6 $ff
    add [hl]                                      ; $79f7: $86
    rst RST_38                                    ; $79f8: $ff
    nop                                           ; $79f9: $00
    rst RST_38                                    ; $79fa: $ff
    nop                                           ; $79fb: $00
    nop                                           ; $79fc: $00
    rst RST_38                                    ; $79fd: $ff
    rst RST_38                                    ; $79fe: $ff

Call_006_79ff:
    rst RST_38                                    ; $79ff: $ff
    rst RST_38                                    ; $7a00: $ff
    nop                                           ; $7a01: $00
    rst RST_38                                    ; $7a02: $ff
    ld a, h                                       ; $7a03: $7c
    rst RST_38                                    ; $7a04: $ff
    ret nz                                        ; $7a05: $c0

    rst RST_38                                    ; $7a06: $ff
    ld a, b                                       ; $7a07: $78
    rst RST_38                                    ; $7a08: $ff
    inc c                                         ; $7a09: $0c
    rst RST_38                                    ; $7a0a: $ff
    call z, Call_006_78ff                         ; $7a0b: $cc $ff $78
    rst RST_38                                    ; $7a0e: $ff
    nop                                           ; $7a0f: $00
    rst RST_38                                    ; $7a10: $ff
    nop                                           ; $7a11: $00
    rst RST_38                                    ; $7a12: $ff
    rrca                                          ; $7a13: $0f
    rst RST_38                                    ; $7a14: $ff
    add hl, de                                    ; $7a15: $19
    rst RST_38                                    ; $7a16: $ff
    add hl, de                                    ; $7a17: $19
    rst RST_38                                    ; $7a18: $ff
    rra                                           ; $7a19: $1f
    rst RST_38                                    ; $7a1a: $ff
    add hl, de                                    ; $7a1b: $19
    rst RST_38                                    ; $7a1c: $ff
    add hl, de                                    ; $7a1d: $19
    rst RST_38                                    ; $7a1e: $ff
    nop                                           ; $7a1f: $00
    rst RST_38                                    ; $7a20: $ff
    nop                                           ; $7a21: $00
    rst RST_38                                    ; $7a22: $ff
    inc bc                                        ; $7a23: $03
    rst RST_38                                    ; $7a24: $ff
    add e                                         ; $7a25: $83
    rst RST_38                                    ; $7a26: $ff
    add e                                         ; $7a27: $83
    rst RST_38                                    ; $7a28: $ff
    add e                                         ; $7a29: $83
    rst RST_38                                    ; $7a2a: $ff
    add c                                         ; $7a2b: $81
    rst RST_38                                    ; $7a2c: $ff
    add b                                         ; $7a2d: $80
    rst RST_38                                    ; $7a2e: $ff
    nop                                           ; $7a2f: $00
    rst RST_38                                    ; $7a30: $ff
    nop                                           ; $7a31: $00
    rst RST_38                                    ; $7a32: $ff
    db $10                                        ; $7a33: $10
    rst RST_38                                    ; $7a34: $ff
    db $10                                        ; $7a35: $10
    rst RST_38                                    ; $7a36: $ff
    db $10                                        ; $7a37: $10
    rst RST_38                                    ; $7a38: $ff
    db $10                                        ; $7a39: $10
    rst RST_38                                    ; $7a3a: $ff
    and b                                         ; $7a3b: $a0
    rst RST_38                                    ; $7a3c: $ff
    ret nz                                        ; $7a3d: $c0

    rst RST_38                                    ; $7a3e: $ff
    nop                                           ; $7a3f: $00
    rst RST_38                                    ; $7a40: $ff
    nop                                           ; $7a41: $00
    rst RST_38                                    ; $7a42: $ff
    ld a, [hl]                                    ; $7a43: $7e
    rst RST_38                                    ; $7a44: $ff
    ld h, b                                       ; $7a45: $60
    rst RST_38                                    ; $7a46: $ff
    ld a, b                                       ; $7a47: $78
    rst RST_38                                    ; $7a48: $ff
    ld h, b                                       ; $7a49: $60
    rst RST_38                                    ; $7a4a: $ff
    ld h, b                                       ; $7a4b: $60
    rst RST_38                                    ; $7a4c: $ff
    ld a, [hl]                                    ; $7a4d: $7e
    rst RST_38                                    ; $7a4e: $ff
    nop                                           ; $7a4f: $00
    rst RST_38                                    ; $7a50: $ff
    nop                                           ; $7a51: $00
    rst RST_38                                    ; $7a52: $ff
    ld a, [hl]                                    ; $7a53: $7e
    rst RST_38                                    ; $7a54: $ff
    jr @+$01                                      ; $7a55: $18 $ff

    jr @+$01                                      ; $7a57: $18 $ff

    jr @+$01                                      ; $7a59: $18 $ff

    jr @+$01                                      ; $7a5b: $18 $ff

    jr @+$01                                      ; $7a5d: $18 $ff

    nop                                           ; $7a5f: $00
    rst RST_38                                    ; $7a60: $ff
    nop                                           ; $7a61: $00
    rst RST_38                                    ; $7a62: $ff
    ld h, [hl]                                    ; $7a63: $66
    rst RST_38                                    ; $7a64: $ff
    ld h, [hl]                                    ; $7a65: $66
    rst RST_38                                    ; $7a66: $ff
    inc a                                         ; $7a67: $3c
    rst RST_38                                    ; $7a68: $ff
    jr @+$01                                      ; $7a69: $18 $ff

    jr @+$01                                      ; $7a6b: $18 $ff

    jr @+$01                                      ; $7a6d: $18 $ff

    nop                                           ; $7a6f: $00
    rst RST_38                                    ; $7a70: $ff
    nop                                           ; $7a71: $00
    rst RST_38                                    ; $7a72: $ff
    ld a, h                                       ; $7a73: $7c
    rst RST_38                                    ; $7a74: $ff
    ld h, [hl]                                    ; $7a75: $66
    rst RST_38                                    ; $7a76: $ff
    ld h, [hl]                                    ; $7a77: $66
    rst RST_38                                    ; $7a78: $ff
    ld a, h                                       ; $7a79: $7c
    rst RST_38                                    ; $7a7a: $ff
    ld h, b                                       ; $7a7b: $60
    rst RST_38                                    ; $7a7c: $ff
    ld h, b                                       ; $7a7d: $60
    rst RST_38                                    ; $7a7e: $ff
    nop                                           ; $7a7f: $00
    rst RST_38                                    ; $7a80: $ff
    nop                                           ; $7a81: $00
    rst RST_38                                    ; $7a82: $ff
    ld a, [hl]                                    ; $7a83: $7e
    rst RST_38                                    ; $7a84: $ff
    ld h, b                                       ; $7a85: $60
    rst RST_38                                    ; $7a86: $ff
    ld a, b                                       ; $7a87: $78
    rst RST_38                                    ; $7a88: $ff
    ld h, b                                       ; $7a89: $60
    rst RST_38                                    ; $7a8a: $ff
    ld h, b                                       ; $7a8b: $60
    rst RST_38                                    ; $7a8c: $ff
    ld a, [hl]                                    ; $7a8d: $7e
    rst RST_38                                    ; $7a8e: $ff
    nop                                           ; $7a8f: $00
    rst RST_38                                    ; $7a90: $ff
    nop                                           ; $7a91: $00
    rst RST_38                                    ; $7a92: $ff
    jr @+$01                                      ; $7a93: $18 $ff

    jr c, @+$01                                   ; $7a95: $38 $ff

    jr @+$01                                      ; $7a97: $18 $ff

    jr @+$01                                      ; $7a99: $18 $ff

    jr @+$01                                      ; $7a9b: $18 $ff

    jr @+$01                                      ; $7a9d: $18 $ff

    nop                                           ; $7a9f: $00
    rst RST_38                                    ; $7aa0: $ff
    nop                                           ; $7aa1: $00
    rst RST_38                                    ; $7aa2: $ff
    inc a                                         ; $7aa3: $3c
    rst RST_38                                    ; $7aa4: $ff
    ld h, [hl]                                    ; $7aa5: $66
    rst RST_38                                    ; $7aa6: $ff
    ld b, $ff                                     ; $7aa7: $06 $ff
    inc a                                         ; $7aa9: $3c
    rst RST_38                                    ; $7aaa: $ff
    ld h, b                                       ; $7aab: $60
    rst RST_38                                    ; $7aac: $ff
    ld a, [hl]                                    ; $7aad: $7e
    rst RST_38                                    ; $7aae: $ff

jr_006_7aaf:
    nop                                           ; $7aaf: $00
    nop                                           ; $7ab0: $00
    nop                                           ; $7ab1: $00
    nop                                           ; $7ab2: $00
    nop                                           ; $7ab3: $00
    nop                                           ; $7ab4: $00
    nop                                           ; $7ab5: $00
    nop                                           ; $7ab6: $00
    nop                                           ; $7ab7: $00
    rrca                                          ; $7ab8: $0f
    rrca                                          ; $7ab9: $0f
    ld [$0b0f], sp                                ; $7aba: $08 $0f $0b
    inc c                                         ; $7abd: $0c
    dec bc                                        ; $7abe: $0b
    inc c                                         ; $7abf: $0c
    nop                                           ; $7ac0: $00
    nop                                           ; $7ac1: $00
    nop                                           ; $7ac2: $00
    nop                                           ; $7ac3: $00
    nop                                           ; $7ac4: $00
    nop                                           ; $7ac5: $00
    nop                                           ; $7ac6: $00
    nop                                           ; $7ac7: $00
    rst RST_38                                    ; $7ac8: $ff
    rst RST_38                                    ; $7ac9: $ff
    nop                                           ; $7aca: $00
    rst RST_38                                    ; $7acb: $ff
    rst RST_38                                    ; $7acc: $ff
    nop                                           ; $7acd: $00
    rst RST_38                                    ; $7ace: $ff
    nop                                           ; $7acf: $00
    nop                                           ; $7ad0: $00
    nop                                           ; $7ad1: $00
    nop                                           ; $7ad2: $00
    nop                                           ; $7ad3: $00
    nop                                           ; $7ad4: $00
    nop                                           ; $7ad5: $00
    nop                                           ; $7ad6: $00
    nop                                           ; $7ad7: $00
    ldh a, [$fff0]                                ; $7ad8: $f0 $f0
    db $10                                        ; $7ada: $10
    ldh a, [$ffd0]                                ; $7adb: $f0 $d0
    jr nc, jr_006_7aaf                            ; $7add: $30 $d0

    jr nc, @+$01                                  ; $7adf: $30 $ff

    nop                                           ; $7ae1: $00
    rst RST_38                                    ; $7ae2: $ff
    ld bc, $03ff                                  ; $7ae3: $01 $ff $03
    rst RST_38                                    ; $7ae6: $ff
    ld bc, $01ff                                  ; $7ae7: $01 $ff $01
    rst RST_38                                    ; $7aea: $ff
    ld bc, $01ff                                  ; $7aeb: $01 $ff $01
    rst RST_38                                    ; $7aee: $ff
    nop                                           ; $7aef: $00
    rst RST_38                                    ; $7af0: $ff
    nop                                           ; $7af1: $00
    rst RST_38                                    ; $7af2: $ff
    add b                                         ; $7af3: $80
    rst RST_38                                    ; $7af4: $ff
    add b                                         ; $7af5: $80
    rst RST_38                                    ; $7af6: $ff
    add b                                         ; $7af7: $80
    rst RST_38                                    ; $7af8: $ff
    add b                                         ; $7af9: $80
    rst RST_38                                    ; $7afa: $ff
    add b                                         ; $7afb: $80
    rst RST_38                                    ; $7afc: $ff
    add b                                         ; $7afd: $80
    rst RST_38                                    ; $7afe: $ff
    nop                                           ; $7aff: $00
    rst RST_38                                    ; $7b00: $ff
    nop                                           ; $7b01: $00
    rst RST_38                                    ; $7b02: $ff
    ld hl, sp-$01                                 ; $7b03: $f8 $ff
    call z, $f8ff                                 ; $7b05: $cc $ff $f8
    rst RST_38                                    ; $7b08: $ff
    call z, $ccff                                 ; $7b09: $cc $ff $cc
    rst RST_38                                    ; $7b0c: $ff
    ld hl, sp-$01                                 ; $7b0d: $f8 $ff
    nop                                           ; $7b0f: $00
    rst RST_38                                    ; $7b10: $ff
    nop                                           ; $7b11: $00
    rst RST_38                                    ; $7b12: $ff
    inc a                                         ; $7b13: $3c
    rst RST_38                                    ; $7b14: $ff
    ld h, [hl]                                    ; $7b15: $66
    rst RST_38                                    ; $7b16: $ff
    ld h, b                                       ; $7b17: $60
    rst RST_38                                    ; $7b18: $ff
    ld l, [hl]                                    ; $7b19: $6e
    rst RST_38                                    ; $7b1a: $ff
    ld h, [hl]                                    ; $7b1b: $66
    rst RST_38                                    ; $7b1c: $ff
    inc a                                         ; $7b1d: $3c
    rst RST_38                                    ; $7b1e: $ff
    nop                                           ; $7b1f: $00
    rst RST_38                                    ; $7b20: $ff
    nop                                           ; $7b21: $00
    rst RST_38                                    ; $7b22: $ff
    ld sp, $3bff                                  ; $7b23: $31 $ff $3b
    rst RST_38                                    ; $7b26: $ff
    ccf                                           ; $7b27: $3f
    rst RST_38                                    ; $7b28: $ff
    dec [hl]                                      ; $7b29: $35
    rst RST_38                                    ; $7b2a: $ff
    ld sp, $31ff                                  ; $7b2b: $31 $ff $31
    rst RST_38                                    ; $7b2e: $ff
    nop                                           ; $7b2f: $00
    rst RST_38                                    ; $7b30: $ff
    nop                                           ; $7b31: $00
    rst RST_38                                    ; $7b32: $ff
    ldh [rIE], a                                  ; $7b33: $e0 $ff
    nop                                           ; $7b35: $00
    rst RST_38                                    ; $7b36: $ff
    ret nz                                        ; $7b37: $c0

    rst RST_38                                    ; $7b38: $ff
    ld h, b                                       ; $7b39: $60
    rst RST_38                                    ; $7b3a: $ff
    ld h, b                                       ; $7b3b: $60
    rst RST_38                                    ; $7b3c: $ff
    ret nz                                        ; $7b3d: $c0

    rst RST_38                                    ; $7b3e: $ff
    nop                                           ; $7b3f: $00
    rst RST_38                                    ; $7b40: $ff
    nop                                           ; $7b41: $00
    rst RST_38                                    ; $7b42: $ff
    ld b, $ff                                     ; $7b43: $06 $ff
    rlca                                          ; $7b45: $07
    rst RST_38                                    ; $7b46: $ff
    rlca                                          ; $7b47: $07
    rst RST_38                                    ; $7b48: $ff
    ld b, $ff                                     ; $7b49: $06 $ff
    ld b, $ff                                     ; $7b4b: $06 $ff
    ld b, $ff                                     ; $7b4d: $06 $ff
    nop                                           ; $7b4f: $00
    rst RST_38                                    ; $7b50: $ff
    nop                                           ; $7b51: $00
    rst RST_38                                    ; $7b52: $ff
    ld h, e                                       ; $7b53: $63
    rst RST_38                                    ; $7b54: $ff
    ld h, [hl]                                    ; $7b55: $66
    rst RST_38                                    ; $7b56: $ff
    and $ff                                       ; $7b57: $e6 $ff
    and $ff                                       ; $7b59: $e6 $ff
    ld h, [hl]                                    ; $7b5b: $66
    rst RST_38                                    ; $7b5c: $ff
    ld h, e                                       ; $7b5d: $63
    rst RST_38                                    ; $7b5e: $ff
    nop                                           ; $7b5f: $00
    rst RST_38                                    ; $7b60: $ff
    nop                                           ; $7b61: $00
    rst RST_38                                    ; $7b62: $ff
    ret nz                                        ; $7b63: $c0

    rst RST_38                                    ; $7b64: $ff
    ld h, b                                       ; $7b65: $60
    rst RST_38                                    ; $7b66: $ff
    ld h, b                                       ; $7b67: $60
    rst RST_38                                    ; $7b68: $ff
    ld h, b                                       ; $7b69: $60
    rst RST_38                                    ; $7b6a: $ff
    ld h, b                                       ; $7b6b: $60
    rst RST_38                                    ; $7b6c: $ff
    ret nz                                        ; $7b6d: $c0

    rst RST_38                                    ; $7b6e: $ff
    nop                                           ; $7b6f: $00
    rst RST_38                                    ; $7b70: $ff
    nop                                           ; $7b71: $00
    rst RST_38                                    ; $7b72: $ff
    ld [hl], e                                    ; $7b73: $73
    rst RST_38                                    ; $7b74: $ff
    db $db                                        ; $7b75: $db
    rst RST_38                                    ; $7b76: $ff
    db $db                                        ; $7b77: $db
    rst RST_38                                    ; $7b78: $ff
    db $db                                        ; $7b79: $db
    rst RST_38                                    ; $7b7a: $ff
    db $db                                        ; $7b7b: $db
    rst RST_38                                    ; $7b7c: $ff
    ld [hl], e                                    ; $7b7d: $73
    rst RST_38                                    ; $7b7e: $ff
    nop                                           ; $7b7f: $00
    rst RST_38                                    ; $7b80: $ff
    nop                                           ; $7b81: $00
    rst RST_38                                    ; $7b82: $ff
    sbc $ff                                       ; $7b83: $de $ff
    jr @+$01                                      ; $7b85: $18 $ff

    sbc $ff                                       ; $7b87: $de $ff
    jr @+$01                                      ; $7b89: $18 $ff

    jr @+$01                                      ; $7b8b: $18 $ff

    jr @+$01                                      ; $7b8d: $18 $ff

    nop                                           ; $7b8f: $00
    rst RST_38                                    ; $7b90: $ff
    nop                                           ; $7b91: $00
    rst RST_38                                    ; $7b92: $ff
    rlca                                          ; $7b93: $07
    rst RST_38                                    ; $7b94: $ff
    ld b, $ff                                     ; $7b95: $06 $ff
    rlca                                          ; $7b97: $07
    rst RST_38                                    ; $7b98: $ff
    nop                                           ; $7b99: $00
    rst RST_38                                    ; $7b9a: $ff
    nop                                           ; $7b9b: $00
    rst RST_38                                    ; $7b9c: $ff
    rlca                                          ; $7b9d: $07
    rst RST_38                                    ; $7b9e: $ff
    nop                                           ; $7b9f: $00
    rst RST_38                                    ; $7ba0: $ff
    ldh a, [$ffaf]                                ; $7ba1: $f0 $af

jr_006_7ba3:
    ld hl, sp-$59                                 ; $7ba3: $f8 $a7

jr_006_7ba5:
    db $fc                                        ; $7ba5: $fc
    di                                            ; $7ba6: $f3

jr_006_7ba7:
    xor [hl]                                      ; $7ba7: $ae
    di                                            ; $7ba8: $f3

jr_006_7ba9:
    xor [hl]                                      ; $7ba9: $ae
    and a                                         ; $7baa: $a7

jr_006_7bab:
    db $fc                                        ; $7bab: $fc
    xor a                                         ; $7bac: $af

jr_006_7bad:
    ld hl, sp-$01                                 ; $7bad: $f8 $ff

jr_006_7baf:
    ldh a, [$ff0b]                                ; $7baf: $f0 $0b
    inc c                                         ; $7bb1: $0c
    dec bc                                        ; $7bb2: $0b
    inc c                                         ; $7bb3: $0c
    dec bc                                        ; $7bb4: $0b
    inc c                                         ; $7bb5: $0c
    dec bc                                        ; $7bb6: $0b
    inc c                                         ; $7bb7: $0c
    dec bc                                        ; $7bb8: $0b
    inc c                                         ; $7bb9: $0c
    dec bc                                        ; $7bba: $0b
    inc c                                         ; $7bbb: $0c
    dec bc                                        ; $7bbc: $0b
    inc c                                         ; $7bbd: $0c
    dec bc                                        ; $7bbe: $0b
    inc c                                         ; $7bbf: $0c
    rst RST_38                                    ; $7bc0: $ff
    nop                                           ; $7bc1: $00
    rst RST_38                                    ; $7bc2: $ff
    nop                                           ; $7bc3: $00
    rst RST_38                                    ; $7bc4: $ff
    nop                                           ; $7bc5: $00
    rst RST_38                                    ; $7bc6: $ff
    nop                                           ; $7bc7: $00
    rst RST_38                                    ; $7bc8: $ff
    nop                                           ; $7bc9: $00
    rst RST_38                                    ; $7bca: $ff
    nop                                           ; $7bcb: $00
    rst RST_38                                    ; $7bcc: $ff
    nop                                           ; $7bcd: $00
    rst RST_38                                    ; $7bce: $ff
    nop                                           ; $7bcf: $00
    ret nc                                        ; $7bd0: $d0

    jr nc, jr_006_7ba3                            ; $7bd1: $30 $d0

    jr nc, jr_006_7ba5                            ; $7bd3: $30 $d0

    jr nc, jr_006_7ba7                            ; $7bd5: $30 $d0

    jr nc, jr_006_7ba9                            ; $7bd7: $30 $d0

    jr nc, jr_006_7bab                            ; $7bd9: $30 $d0

    jr nc, jr_006_7bad                            ; $7bdb: $30 $d0

    jr nc, jr_006_7baf                            ; $7bdd: $30 $d0

    jr nc, @+$01                                  ; $7bdf: $30 $ff

    nop                                           ; $7be1: $00
    rst RST_38                                    ; $7be2: $ff
    inc bc                                        ; $7be3: $03
    rst RST_38                                    ; $7be4: $ff
    ld b, $ff                                     ; $7be5: $06 $ff
    nop                                           ; $7be7: $00
    rst RST_38                                    ; $7be8: $ff
    inc bc                                        ; $7be9: $03
    rst RST_38                                    ; $7bea: $ff
    ld b, $ff                                     ; $7beb: $06 $ff
    rlca                                          ; $7bed: $07
    rst RST_38                                    ; $7bee: $ff
    nop                                           ; $7bef: $00
    rst RST_38                                    ; $7bf0: $ff
    nop                                           ; $7bf1: $00
    rst RST_38                                    ; $7bf2: $ff
    ret nz                                        ; $7bf3: $c0

    rst RST_38                                    ; $7bf4: $ff
    ld h, b                                       ; $7bf5: $60
    rst RST_38                                    ; $7bf6: $ff
    ld h, b                                       ; $7bf7: $60
    rst RST_38                                    ; $7bf8: $ff
    ret nz                                        ; $7bf9: $c0

    rst RST_38                                    ; $7bfa: $ff
    nop                                           ; $7bfb: $00
    rst RST_38                                    ; $7bfc: $ff
    ldh [rIE], a                                  ; $7bfd: $e0 $ff
    nop                                           ; $7bff: $00
    rst RST_38                                    ; $7c00: $ff
    nop                                           ; $7c01: $00
    rst RST_38                                    ; $7c02: $ff
    ld a, c                                       ; $7c03: $79
    rst RST_38                                    ; $7c04: $ff
    call $c1ff                                    ; $7c05: $cd $ff $c1
    rst RST_38                                    ; $7c08: $ff
    db $dd                                        ; $7c09: $dd
    rst RST_38                                    ; $7c0a: $ff
    call Call_006_79ff                            ; $7c0b: $cd $ff $79
    rst RST_38                                    ; $7c0e: $ff
    nop                                           ; $7c0f: $00
    rst RST_38                                    ; $7c10: $ff
    nop                                           ; $7c11: $00
    rst RST_38                                    ; $7c12: $ff
    or c                                          ; $7c13: $b1
    rst RST_38                                    ; $7c14: $ff
    or c                                          ; $7c15: $b1
    rst RST_38                                    ; $7c16: $ff
    or c                                          ; $7c17: $b1
    rst RST_38                                    ; $7c18: $ff
    or c                                          ; $7c19: $b1
    rst RST_38                                    ; $7c1a: $ff
    sbc d                                         ; $7c1b: $9a
    rst RST_38                                    ; $7c1c: $ff
    adc h                                         ; $7c1d: $8c
    rst RST_38                                    ; $7c1e: $ff
    nop                                           ; $7c1f: $00
    rst RST_38                                    ; $7c20: $ff
    nop                                           ; $7c21: $00
    rst RST_38                                    ; $7c22: $ff
    ld a, [hl]                                    ; $7c23: $7e
    rst RST_38                                    ; $7c24: $ff
    ld h, b                                       ; $7c25: $60
    rst RST_38                                    ; $7c26: $ff
    ld a, b                                       ; $7c27: $78
    rst RST_38                                    ; $7c28: $ff
    ld h, b                                       ; $7c29: $60
    rst RST_38                                    ; $7c2a: $ff
    ld h, b                                       ; $7c2b: $60
    rst RST_38                                    ; $7c2c: $ff
    ld a, [hl]                                    ; $7c2d: $7e
    rst RST_38                                    ; $7c2e: $ff
    nop                                           ; $7c2f: $00
    rst RST_38                                    ; $7c30: $ff
    nop                                           ; $7c31: $00
    rst RST_38                                    ; $7c32: $ff
    add hl, de                                    ; $7c33: $19
    rst RST_38                                    ; $7c34: $ff
    add hl, de                                    ; $7c35: $19
    rst RST_38                                    ; $7c36: $ff
    add hl, de                                    ; $7c37: $19
    rst RST_38                                    ; $7c38: $ff
    add hl, de                                    ; $7c39: $19
    rst RST_38                                    ; $7c3a: $ff
    add hl, de                                    ; $7c3b: $19
    rst RST_38                                    ; $7c3c: $ff
    rrca                                          ; $7c3d: $0f
    rst RST_38                                    ; $7c3e: $ff
    nop                                           ; $7c3f: $00
    rst RST_38                                    ; $7c40: $ff
    nop                                           ; $7c41: $00
    rst RST_38                                    ; $7c42: $ff
    cp [hl]                                       ; $7c43: $be
    rst RST_38                                    ; $7c44: $ff
    or e                                          ; $7c45: $b3
    rst RST_38                                    ; $7c46: $ff
    or e                                          ; $7c47: $b3
    rst RST_38                                    ; $7c48: $ff
    cp [hl]                                       ; $7c49: $be
    rst RST_38                                    ; $7c4a: $ff
    or b                                          ; $7c4b: $b0
    rst RST_38                                    ; $7c4c: $ff
    jr nc, @+$01                                  ; $7c4d: $30 $ff

    nop                                           ; $7c4f: $00
    rst RST_38                                    ; $7c50: $ff
    nop                                           ; $7c51: $00
    rst RST_38                                    ; $7c52: $ff
    ld h, [hl]                                    ; $7c53: $66
    rst RST_38                                    ; $7c54: $ff
    ld h, [hl]                                    ; $7c55: $66
    rst RST_38                                    ; $7c56: $ff
    inc a                                         ; $7c57: $3c
    rst RST_38                                    ; $7c58: $ff
    jr @+$01                                      ; $7c59: $18 $ff

    jr @+$01                                      ; $7c5b: $18 $ff

    jr @+$01                                      ; $7c5d: $18 $ff

    nop                                           ; $7c5f: $00
    rst RST_38                                    ; $7c60: $ff
    nop                                           ; $7c61: $00
    rst RST_38                                    ; $7c62: $ff
    ld a, [hl]                                    ; $7c63: $7e
    rst RST_38                                    ; $7c64: $ff
    ld h, b                                       ; $7c65: $60
    rst RST_38                                    ; $7c66: $ff
    ld a, b                                       ; $7c67: $78
    rst RST_38                                    ; $7c68: $ff
    ld h, b                                       ; $7c69: $60
    rst RST_38                                    ; $7c6a: $ff
    ld h, b                                       ; $7c6b: $60
    rst RST_38                                    ; $7c6c: $ff
    ld a, [hl]                                    ; $7c6d: $7e
    rst RST_38                                    ; $7c6e: $ff
    nop                                           ; $7c6f: $00
    rst RST_38                                    ; $7c70: $ff
    nop                                           ; $7c71: $00
    rst RST_38                                    ; $7c72: $ff
    ld a, $ff                                     ; $7c73: $3e $ff
    ld h, b                                       ; $7c75: $60
    rst RST_38                                    ; $7c76: $ff
    inc a                                         ; $7c77: $3c
    rst RST_38                                    ; $7c78: $ff
    ld b, $ff                                     ; $7c79: $06 $ff
    ld h, [hl]                                    ; $7c7b: $66
    rst RST_38                                    ; $7c7c: $ff
    inc a                                         ; $7c7d: $3c
    rst RST_38                                    ; $7c7e: $ff
    nop                                           ; $7c7f: $00
    rst RST_38                                    ; $7c80: $ff
    nop                                           ; $7c81: $00
    rst RST_38                                    ; $7c82: $ff
    inc bc                                        ; $7c83: $03
    rst RST_38                                    ; $7c84: $ff
    ld b, $ff                                     ; $7c85: $06 $ff
    nop                                           ; $7c87: $00
    rst RST_38                                    ; $7c88: $ff
    nop                                           ; $7c89: $00
    rst RST_38                                    ; $7c8a: $ff
    ld b, $ff                                     ; $7c8b: $06 $ff
    inc bc                                        ; $7c8d: $03
    rst RST_38                                    ; $7c8e: $ff
    nop                                           ; $7c8f: $00
    rst RST_38                                    ; $7c90: $ff
    nop                                           ; $7c91: $00
    rst RST_38                                    ; $7c92: $ff
    ld bc, $02ff                                  ; $7c93: $01 $ff $02
    rst RST_38                                    ; $7c96: $ff
    ld b, $ff                                     ; $7c97: $06 $ff
    ld b, $ff                                     ; $7c99: $06 $ff
    rlca                                          ; $7c9b: $07
    rst RST_38                                    ; $7c9c: $ff
    nop                                           ; $7c9d: $00
    rst RST_38                                    ; $7c9e: $ff
    nop                                           ; $7c9f: $00
    rst RST_38                                    ; $7ca0: $ff
    nop                                           ; $7ca1: $00
    rst RST_38                                    ; $7ca2: $ff

jr_006_7ca3:
    ret nz                                        ; $7ca3: $c0

    rst RST_38                                    ; $7ca4: $ff
    ret nz                                        ; $7ca5: $c0

    rst RST_38                                    ; $7ca6: $ff
    ret nz                                        ; $7ca7: $c0

    rst RST_38                                    ; $7ca8: $ff
    ret nz                                        ; $7ca9: $c0

    rst RST_38                                    ; $7caa: $ff
    ldh [rIE], a                                  ; $7cab: $e0 $ff
    ret nz                                        ; $7cad: $c0

    rst RST_38                                    ; $7cae: $ff
    nop                                           ; $7caf: $00
    dec bc                                        ; $7cb0: $0b
    inc c                                         ; $7cb1: $0c
    dec bc                                        ; $7cb2: $0b
    inc c                                         ; $7cb3: $0c
    ld [$0f0f], sp                                ; $7cb4: $08 $0f $0f
    rrca                                          ; $7cb7: $0f
    nop                                           ; $7cb8: $00
    nop                                           ; $7cb9: $00
    nop                                           ; $7cba: $00
    nop                                           ; $7cbb: $00
    nop                                           ; $7cbc: $00
    nop                                           ; $7cbd: $00
    nop                                           ; $7cbe: $00
    nop                                           ; $7cbf: $00
    rst RST_38                                    ; $7cc0: $ff
    nop                                           ; $7cc1: $00
    rst RST_38                                    ; $7cc2: $ff
    nop                                           ; $7cc3: $00
    nop                                           ; $7cc4: $00
    rst RST_38                                    ; $7cc5: $ff
    rst RST_38                                    ; $7cc6: $ff
    rst RST_38                                    ; $7cc7: $ff
    nop                                           ; $7cc8: $00
    nop                                           ; $7cc9: $00
    nop                                           ; $7cca: $00
    nop                                           ; $7ccb: $00
    nop                                           ; $7ccc: $00
    nop                                           ; $7ccd: $00
    nop                                           ; $7cce: $00
    nop                                           ; $7ccf: $00
    ret nc                                        ; $7cd0: $d0

    jr nc, jr_006_7ca3                            ; $7cd1: $30 $d0

    jr nc, jr_006_7ce5                            ; $7cd3: $30 $10

    ldh a, [$fff0]                                ; $7cd5: $f0 $f0
    ldh a, [rP1]                                  ; $7cd7: $f0 $00
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

jr_006_7ce5:
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
    rst RST_38                                    ; $7cf0: $ff
    nop                                           ; $7cf1: $00
    rst RST_38                                    ; $7cf2: $ff
    ret nz                                        ; $7cf3: $c0

    rst RST_38                                    ; $7cf4: $ff
    ld h, b                                       ; $7cf5: $60
    rst RST_38                                    ; $7cf6: $ff
    ret nz                                        ; $7cf7: $c0

    rst RST_38                                    ; $7cf8: $ff
    ld h, b                                       ; $7cf9: $60
    rst RST_38                                    ; $7cfa: $ff
    ld h, b                                       ; $7cfb: $60
    rst RST_38                                    ; $7cfc: $ff
    ret nz                                        ; $7cfd: $c0

    rst RST_38                                    ; $7cfe: $ff
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

Call_006_7fe0:
    nop                                           ; $7fe0: $00
    nop                                           ; $7fe1: $00

Call_006_7fe2:
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
