; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

Picross15x15GameBoardTileData::
    INCBIN "gfx/Picross15x15GameBoardTileData.2bpp"

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
    jr nz, @-$4f                                  ; $5825: $20 $af

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
    jp c, $46ff                                   ; $5e39: $da $ff $46

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

Picross15x15MarioAnimationRow4::
    INCBIN "gfx/Picross15x15MarioAnimationRow4.2bpp"

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

Picross15x15MarioClearTileData::
    INCBIN "gfx/Picross15x15MarioClearTileData.2bpp"

Picross15x15MarioGameOverTileData::
    INCBIN "gfx/Picross15x15MarioGameOverTileData.2bpp"

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

HintMessageTileData::
    INCBIN "gfx/HintMessageTileData.2bpp"

PauseMenuTileData::
    INCBIN "gfx/PauseMenuTileData.2bpp"

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
