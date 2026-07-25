; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

Picross15x15GameBoardTileData::
    INCBIN "gfx/Picross15x15GameBoardTileData.2bpp"

CellEffectTileDataSet00::
    INCBIN "gfx/CellEffectTileDataSet00.2bpp"

    nop                                           ; $5830: $00
    rst $38                                       ; $5831: $ff
    nop                                           ; $5832: $00
    rst $38                                       ; $5833: $ff
    nop                                           ; $5834: $00
    rst $38                                       ; $5835: $ff
    nop                                           ; $5836: $00
    rst $38                                       ; $5837: $ff
    nop                                           ; $5838: $00
    rst $38                                       ; $5839: $ff
    nop                                           ; $583a: $00
    rst $38                                       ; $583b: $ff
    nop                                           ; $583c: $00
    rst $38                                       ; $583d: $ff
    nop                                           ; $583e: $00
    rst $38                                       ; $583f: $ff

PuzzleTimerDigitsTileData::
    INCBIN "gfx/PuzzleTimerDigitsTileData.2bpp"

    rst $38                                       ; $58e0: $ff
    nop                                           ; $58e1: $00
    rst $38                                       ; $58e2: $ff
    nop                                           ; $58e3: $00
    rst $38                                       ; $58e4: $ff
    nop                                           ; $58e5: $00
    rst $38                                       ; $58e6: $ff
    nop                                           ; $58e7: $00
    rst $38                                       ; $58e8: $ff
    nop                                           ; $58e9: $00
    rst $38                                       ; $58ea: $ff
    nop                                           ; $58eb: $00
    rst $38                                       ; $58ec: $ff
    nop                                           ; $58ed: $00
    rst $38                                       ; $58ee: $ff
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
    rst $38                                       ; $5900: $ff
    nop                                           ; $5901: $00
    rst RST_18                                    ; $5902: $df
    jr nc, @+$01                                  ; $5903: $30 $ff

    db $10                                        ; $5905: $10
    rst $38                                       ; $5906: $ff
    db $10                                        ; $5907: $10
    rst $38                                       ; $5908: $ff
    db $10                                        ; $5909: $10
    rst $38                                       ; $590a: $ff
    db $10                                        ; $590b: $10
    rst $38                                       ; $590c: $ff
    nop                                           ; $590d: $00
    rst $38                                       ; $590e: $ff
    nop                                           ; $590f: $00
    rst $38                                       ; $5910: $ff
    nop                                           ; $5911: $00
    rst $28                                       ; $5912: $ef
    ld [hl], b                                    ; $5913: $70
    rst $38                                       ; $5914: $ff
    db $10                                        ; $5915: $10
    xor a                                         ; $5916: $af
    ld [hl], b                                    ; $5917: $70
    rst $38                                       ; $5918: $ff
    ld b, b                                       ; $5919: $40
    rst $38                                       ; $591a: $ff
    ld a, b                                       ; $591b: $78
    rst $38                                       ; $591c: $ff
    nop                                           ; $591d: $00
    rst $38                                       ; $591e: $ff
    nop                                           ; $591f: $00
    rst $38                                       ; $5920: $ff
    nop                                           ; $5921: $00
    rst $38                                       ; $5922: $ff
    ld [hl], b                                    ; $5923: $70
    rst $38                                       ; $5924: $ff
    db $10                                        ; $5925: $10
    cp a                                          ; $5926: $bf
    ld a, b                                       ; $5927: $78
    rst $38                                       ; $5928: $ff
    ld [$78ff], sp                                ; $5929: $08 $ff $78
    rst $38                                       ; $592c: $ff
    nop                                           ; $592d: $00
    rst $38                                       ; $592e: $ff
    nop                                           ; $592f: $00
    rst $38                                       ; $5930: $ff
    nop                                           ; $5931: $00
    rst $38                                       ; $5932: $ff
    ld d, b                                       ; $5933: $50
    rst $38                                       ; $5934: $ff
    ld d, b                                       ; $5935: $50
    rst $38                                       ; $5936: $ff
    ld d, b                                       ; $5937: $50
    rst $38                                       ; $5938: $ff
    ld a, b                                       ; $5939: $78
    rst $38                                       ; $593a: $ff
    db $10                                        ; $593b: $10
    rst $38                                       ; $593c: $ff
    nop                                           ; $593d: $00
    rst $38                                       ; $593e: $ff
    nop                                           ; $593f: $00
    rst $38                                       ; $5940: $ff
    nop                                           ; $5941: $00
    rst $38                                       ; $5942: $ff
    ld [hl], b                                    ; $5943: $70
    rst $38                                       ; $5944: $ff
    ld b, b                                       ; $5945: $40
    rst $38                                       ; $5946: $ff
    ld a, b                                       ; $5947: $78
    rst $38                                       ; $5948: $ff
    ld [$78ff], sp                                ; $5949: $08 $ff $78
    rst $38                                       ; $594c: $ff
    nop                                           ; $594d: $00
    rst $38                                       ; $594e: $ff
    nop                                           ; $594f: $00
    rst $38                                       ; $5950: $ff
    nop                                           ; $5951: $00
    rst $38                                       ; $5952: $ff
    ld b, b                                       ; $5953: $40
    rst $38                                       ; $5954: $ff
    ld b, b                                       ; $5955: $40
    rst $38                                       ; $5956: $ff
    ld a, b                                       ; $5957: $78
    rst $38                                       ; $5958: $ff
    ld c, b                                       ; $5959: $48
    rst $38                                       ; $595a: $ff
    ld a, b                                       ; $595b: $78
    rst $38                                       ; $595c: $ff
    nop                                           ; $595d: $00
    rst $38                                       ; $595e: $ff
    nop                                           ; $595f: $00
    rst $38                                       ; $5960: $ff
    nop                                           ; $5961: $00
    rst $38                                       ; $5962: $ff
    ld a, b                                       ; $5963: $78
    rst $38                                       ; $5964: $ff
    ld [$10ff], sp                                ; $5965: $08 $ff $10
    rst $38                                       ; $5968: $ff
    db $10                                        ; $5969: $10
    rst $38                                       ; $596a: $ff
    db $10                                        ; $596b: $10
    rst $38                                       ; $596c: $ff
    nop                                           ; $596d: $00
    rst $38                                       ; $596e: $ff
    nop                                           ; $596f: $00
    rst $38                                       ; $5970: $ff
    nop                                           ; $5971: $00
    rst $38                                       ; $5972: $ff
    jr c, @+$01                                   ; $5973: $38 $ff

    jr z, @+$01                                   ; $5975: $28 $ff

    ld a, b                                       ; $5977: $78
    rst $38                                       ; $5978: $ff
    ld c, b                                       ; $5979: $48
    rst $38                                       ; $597a: $ff
    ld a, b                                       ; $597b: $78
    rst $38                                       ; $597c: $ff
    nop                                           ; $597d: $00
    rst $38                                       ; $597e: $ff
    nop                                           ; $597f: $00
    rst $38                                       ; $5980: $ff
    nop                                           ; $5981: $00
    rst $38                                       ; $5982: $ff
    ld a, b                                       ; $5983: $78
    rst $38                                       ; $5984: $ff
    ld c, b                                       ; $5985: $48
    rst $38                                       ; $5986: $ff
    ld a, b                                       ; $5987: $78
    rst $38                                       ; $5988: $ff
    ld [$08ff], sp                                ; $5989: $08 $ff $08
    rst $38                                       ; $598c: $ff
    nop                                           ; $598d: $00
    rst $38                                       ; $598e: $ff
    nop                                           ; $598f: $00
    rst $38                                       ; $5990: $ff
    nop                                           ; $5991: $00
    rst $38                                       ; $5992: $ff
    ld e, h                                       ; $5993: $5c
    rst $38                                       ; $5994: $ff
    ld d, h                                       ; $5995: $54
    rst $38                                       ; $5996: $ff
    ld d, h                                       ; $5997: $54
    rst $38                                       ; $5998: $ff
    ld d, h                                       ; $5999: $54
    rst $38                                       ; $599a: $ff
    ld e, h                                       ; $599b: $5c
    rst $38                                       ; $599c: $ff
    nop                                           ; $599d: $00
    rst $38                                       ; $599e: $ff
    nop                                           ; $599f: $00
    rst $38                                       ; $59a0: $ff
    nop                                           ; $59a1: $00
    rst $38                                       ; $59a2: $ff
    ld c, b                                       ; $59a3: $48
    rst $38                                       ; $59a4: $ff
    ld c, b                                       ; $59a5: $48
    rst $38                                       ; $59a6: $ff
    ld c, b                                       ; $59a7: $48
    rst $38                                       ; $59a8: $ff
    ld c, b                                       ; $59a9: $48
    rst $38                                       ; $59aa: $ff
    ld c, b                                       ; $59ab: $48
    rst $38                                       ; $59ac: $ff
    nop                                           ; $59ad: $00
    rst $38                                       ; $59ae: $ff
    nop                                           ; $59af: $00
    rst $38                                       ; $59b0: $ff
    nop                                           ; $59b1: $00
    rst $38                                       ; $59b2: $ff
    ld e, h                                       ; $59b3: $5c
    rst $38                                       ; $59b4: $ff
    ld b, h                                       ; $59b5: $44
    rst $38                                       ; $59b6: $ff
    ld e, h                                       ; $59b7: $5c
    rst $38                                       ; $59b8: $ff
    ld d, b                                       ; $59b9: $50
    rst $38                                       ; $59ba: $ff
    ld e, h                                       ; $59bb: $5c
    rst $38                                       ; $59bc: $ff
    nop                                           ; $59bd: $00
    rst $38                                       ; $59be: $ff
    nop                                           ; $59bf: $00
    rst $38                                       ; $59c0: $ff
    nop                                           ; $59c1: $00
    rst $38                                       ; $59c2: $ff
    ld e, h                                       ; $59c3: $5c
    rst $38                                       ; $59c4: $ff
    ld b, h                                       ; $59c5: $44
    rst $38                                       ; $59c6: $ff
    ld e, h                                       ; $59c7: $5c
    rst $38                                       ; $59c8: $ff
    ld b, h                                       ; $59c9: $44
    rst $38                                       ; $59ca: $ff
    ld e, h                                       ; $59cb: $5c
    rst $38                                       ; $59cc: $ff
    nop                                           ; $59cd: $00
    rst $38                                       ; $59ce: $ff
    nop                                           ; $59cf: $00
    rst $38                                       ; $59d0: $ff
    nop                                           ; $59d1: $00
    rst $38                                       ; $59d2: $ff
    ld d, h                                       ; $59d3: $54
    rst $38                                       ; $59d4: $ff
    ld d, h                                       ; $59d5: $54
    rst $38                                       ; $59d6: $ff
    ld d, h                                       ; $59d7: $54
    rst $38                                       ; $59d8: $ff
    ld e, h                                       ; $59d9: $5c
    rst $38                                       ; $59da: $ff
    ld b, h                                       ; $59db: $44
    rst $38                                       ; $59dc: $ff
    nop                                           ; $59dd: $00
    rst $38                                       ; $59de: $ff
    nop                                           ; $59df: $00
    rst $38                                       ; $59e0: $ff
    nop                                           ; $59e1: $00
    rst $38                                       ; $59e2: $ff
    ld e, h                                       ; $59e3: $5c
    rst $38                                       ; $59e4: $ff
    ld d, b                                       ; $59e5: $50
    rst $38                                       ; $59e6: $ff
    ld e, h                                       ; $59e7: $5c
    rst $38                                       ; $59e8: $ff
    ld b, h                                       ; $59e9: $44
    rst $38                                       ; $59ea: $ff
    ld e, h                                       ; $59eb: $5c
    rst $38                                       ; $59ec: $ff
    nop                                           ; $59ed: $00
    rst $38                                       ; $59ee: $ff
    nop                                           ; $59ef: $00
    rst $38                                       ; $59f0: $ff
    nop                                           ; $59f1: $00
    or a                                          ; $59f2: $b7
    ld a, b                                       ; $59f3: $78
    rst $38                                       ; $59f4: $ff
    ld c, b                                       ; $59f5: $48
    rst $38                                       ; $59f6: $ff
    ld c, b                                       ; $59f7: $48
    rst $38                                       ; $59f8: $ff
    ld c, b                                       ; $59f9: $48
    or a                                          ; $59fa: $b7
    ld a, b                                       ; $59fb: $78
    rst $38                                       ; $59fc: $ff
    nop                                           ; $59fd: $00
    rst $38                                       ; $59fe: $ff
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
    jr nc, @+$7a                                  ; $5af2: $30 $78

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

Picross10x10And15x15GameOverMessageTileData::
    INCBIN "gfx/Picross10x10And15x15GameOverMessageTileData.2bpp"

CellEffectTileDataSet01::
    INCBIN "gfx/CellEffectTileDataSet01.2bpp"

CellEffectTileDataSet02::
    INCBIN "gfx/CellEffectTileDataSet02.2bpp"

CellEffectTileDataSet03::
    INCBIN "gfx/CellEffectTileDataSet03.2bpp"

CellEffectTileDataSet04::
    INCBIN "gfx/CellEffectTileDataSet04.2bpp"

CellEffectTileDataSet05::
    INCBIN "gfx/CellEffectTileDataSet05.2bpp"

CellEffectTileDataSet06::
    INCBIN "gfx/CellEffectTileDataSet06.2bpp"

CellEffectTileDataSet07::
    INCBIN "gfx/CellEffectTileDataSet07.2bpp"

CellEffectTileDataSet08::
    INCBIN "gfx/CellEffectTileDataSet08.2bpp"

CellEffectTileDataSet09::
    INCBIN "gfx/CellEffectTileDataSet09.2bpp"

CellEffectTileDataSet0a::
    INCBIN "gfx/CellEffectTileDataSet0a.2bpp"

CellEffectTileDataSet0b::
    INCBIN "gfx/CellEffectTileDataSet0b.2bpp"

CellEffectTileDataSet0c::
    INCBIN "gfx/CellEffectTileDataSet0c.2bpp"

CellEffectTileDataSet0d::
    INCBIN "gfx/CellEffectTileDataSet0d.2bpp"

CellEffectTileDataSet0e::
    INCBIN "gfx/CellEffectTileDataSet0e.2bpp"

CellEffectTileDataSet0f::
    INCBIN "gfx/CellEffectTileDataSet0f.2bpp"

CellEffectTileDataSet10::
    INCBIN "gfx/CellEffectTileDataSet10.2bpp"

CellEffectTileDataSet11::
    INCBIN "gfx/CellEffectTileDataSet11.2bpp"

CellEffectTileDataSet12::
    INCBIN "gfx/CellEffectTileDataSet12.2bpp"

CellEffectTileDataSet13::
    INCBIN "gfx/CellEffectTileDataSet13.2bpp"

CellEffectTileDataSet14::
    INCBIN "gfx/CellEffectTileDataSet14.2bpp"

CellEffectTileDataSet15::
    INCBIN "gfx/CellEffectTileDataSet15.2bpp"

CellEffectTileDataSet16::
    INCBIN "gfx/CellEffectTileDataSet16.2bpp"

CellEffectTileDataSet17::
    INCBIN "gfx/CellEffectTileDataSet17.2bpp"

CellEffectTileDataSet18::
    INCBIN "gfx/CellEffectTileDataSet18.2bpp"

CellEffectTileDataSet19::
    INCBIN "gfx/CellEffectTileDataSet19.2bpp"

CellEffectTileDataSet1a::
    INCBIN "gfx/CellEffectTileDataSet1a.2bpp"

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

    rst $38                                       ; $7057: $ff
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
    rst $38                                       ; $7067: $ff
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

    rst $38                                       ; $7075: $ff

jr_006_7076:
    nop                                           ; $7076: $00
    add e                                         ; $7077: $83
    rst $38                                       ; $7078: $ff
    nop                                           ; $7079: $00
    rst $38                                       ; $707a: $ff
    nop                                           ; $707b: $00
    rst $38                                       ; $707c: $ff
    nop                                           ; $707d: $00
    rst $38                                       ; $707e: $ff
    nop                                           ; $707f: $00
    db $10                                        ; $7080: $10
    jr jr_006_7093                                ; $7081: $18 $10

jr_006_7083:
    jr jr_006_7095                                ; $7083: $18 $10

    jr @-$03                                      ; $7085: $18 $fb

    rst $38                                       ; $7087: $ff
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

    jr nc, @+$26                                  ; $7097: $30 $24

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

Picross15x15MarioAnimationRow1::
    INCBIN "gfx/Picross15x15MarioAnimationRow1.2bpp"

    nop                                           ; $70d0: $00
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
    rst $38                                       ; $70ed: $ff
    rst $38                                       ; $70ee: $ff
    rst $38                                       ; $70ef: $ff
    push af                                       ; $70f0: $f5
    add hl, bc                                    ; $70f1: $09
    di                                            ; $70f2: $f3
    rrca                                          ; $70f3: $0f
    push af                                       ; $70f4: $f5
    dec c                                         ; $70f5: $0d
    db $eb                                        ; $70f6: $eb
    ld [$18d7], sp                                ; $70f7: $08 $d7 $18
    rst $20                                       ; $70fa: $e7
    ldh a, [$ffd1]                                ; $70fb: $f0 $d1
    db $f4                                        ; $70fd: $f4
    add c                                         ; $70fe: $81
    db $de                                        ; $70ff: $de

Picross15x15MarioAnimationRow2::
    INCBIN "gfx/Picross15x15MarioAnimationRow2.2bpp"

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
    jr nz, @-$7e                                  ; $713d: $20 $80

    ret nc                                        ; $713f: $d0

jr_006_7140:
    ld sp, hl                                     ; $7140: $f9
    rst $38                                       ; $7141: $ff
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
    db $c6                                        ; $715f: $c6

Picross15x15MarioAnimationRow3::
    INCBIN "gfx/Picross15x15MarioAnimationRow3.2bpp"

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
    rst $38                                       ; $71af: $ff
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
    rst $38                                       ; $71bc: $ff
    rst $38                                       ; $71bd: $ff
    nop                                           ; $71be: $00
    rst $38                                       ; $71bf: $ff

Picross15x15MarioAnimationRow4::
    INCBIN "gfx/Picross15x15MarioAnimationRow4.2bpp"

    dec l                                         ; $71e0: $2d
    ld hl, $1311                                  ; $71e1: $21 $11 $13
    ld e, $1e                                     ; $71e4: $1e $1e
    jp nc, $2ed6                                  ; $71e6: $d2 $d6 $2e

    ld l, e                                       ; $71e9: $6b
    sbc e                                         ; $71ea: $9b
    add hl, sp                                    ; $71eb: $39
    rst $38                                       ; $71ec: $ff
    rst $38                                       ; $71ed: $ff
    nop                                           ; $71ee: $00
    rst $38                                       ; $71ef: $ff
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
    rst $38                                       ; $71ff: $ff

Picross15x15MarioClearTileData::
    INCBIN "gfx/Picross15x15MarioClearTileData.2bpp"

Picross15x15MarioGameOverTileData::
    INCBIN "gfx/Picross15x15MarioGameOverTileData.2bpp"

    ; padding
    ds $200, $00

HintMessageTileData::
    INCBIN "gfx/HintMessageTileData.2bpp"

PauseMenuTileData::
    INCBIN "gfx/PauseMenuTileData.2bpp"

    ; padding
    ds $2f0, $00

    ; padding
    ds $10, $ff
