; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

Picross5x5GameBoardTileData::
    INCBIN "gfx/Picross5x5GameBoardTileData.2bpp"

    rst $38                                       ; $5800: $ff
    nop                                           ; $5801: $00
    rst $38                                       ; $5802: $ff
    nop                                           ; $5803: $00
    rst $38                                       ; $5804: $ff
    nop                                           ; $5805: $00
    rst $38                                       ; $5806: $ff
    nop                                           ; $5807: $00
    rst $38                                       ; $5808: $ff
    nop                                           ; $5809: $00
    rst $38                                       ; $580a: $ff
    nop                                           ; $580b: $00
    rst $38                                       ; $580c: $ff
    nop                                           ; $580d: $00
    rst $38                                       ; $580e: $ff
    nop                                           ; $580f: $00
    rst $38                                       ; $5810: $ff
    nop                                           ; $5811: $00
    rst $38                                       ; $5812: $ff
    nop                                           ; $5813: $00
    rst $38                                       ; $5814: $ff
    nop                                           ; $5815: $00
    rst $38                                       ; $5816: $ff
    nop                                           ; $5817: $00
    rst $38                                       ; $5818: $ff
    nop                                           ; $5819: $00
    rst $38                                       ; $581a: $ff
    nop                                           ; $581b: $00
    rst $38                                       ; $581c: $ff
    nop                                           ; $581d: $00
    rst $38                                       ; $581e: $ff
    nop                                           ; $581f: $00
    rst $38                                       ; $5820: $ff
    nop                                           ; $5821: $00
    rst $38                                       ; $5822: $ff
    nop                                           ; $5823: $00
    rst $38                                       ; $5824: $ff
    nop                                           ; $5825: $00
    rst $38                                       ; $5826: $ff
    nop                                           ; $5827: $00
    rst $38                                       ; $5828: $ff
    nop                                           ; $5829: $00
    rst $38                                       ; $582a: $ff
    nop                                           ; $582b: $00
    rst $38                                       ; $582c: $ff
    nop                                           ; $582d: $00
    rst $38                                       ; $582e: $ff
    nop                                           ; $582f: $00
    rst $38                                       ; $5830: $ff
    nop                                           ; $5831: $00
    rst $38                                       ; $5832: $ff
    nop                                           ; $5833: $00
    rst $38                                       ; $5834: $ff
    nop                                           ; $5835: $00
    rst $38                                       ; $5836: $ff
    nop                                           ; $5837: $00
    rst $38                                       ; $5838: $ff
    nop                                           ; $5839: $00
    rst $38                                       ; $583a: $ff
    nop                                           ; $583b: $00
    rst $38                                       ; $583c: $ff
    nop                                           ; $583d: $00
    rst $38                                       ; $583e: $ff
    nop                                           ; $583f: $00
    rst $38                                       ; $5840: $ff
    nop                                           ; $5841: $00
    rst $38                                       ; $5842: $ff
    nop                                           ; $5843: $00
    rst $38                                       ; $5844: $ff
    nop                                           ; $5845: $00
    rst $38                                       ; $5846: $ff
    nop                                           ; $5847: $00
    rst $38                                       ; $5848: $ff
    nop                                           ; $5849: $00
    rst $38                                       ; $584a: $ff
    nop                                           ; $584b: $00
    rst $38                                       ; $584c: $ff
    nop                                           ; $584d: $00
    rst $38                                       ; $584e: $ff
    nop                                           ; $584f: $00
    rst $38                                       ; $5850: $ff
    nop                                           ; $5851: $00
    rst $38                                       ; $5852: $ff
    nop                                           ; $5853: $00
    rst $38                                       ; $5854: $ff
    nop                                           ; $5855: $00
    rst $38                                       ; $5856: $ff
    nop                                           ; $5857: $00
    rst $38                                       ; $5858: $ff
    nop                                           ; $5859: $00
    rst $38                                       ; $585a: $ff
    nop                                           ; $585b: $00
    rst $38                                       ; $585c: $ff
    nop                                           ; $585d: $00
    rst $38                                       ; $585e: $ff
    nop                                           ; $585f: $00
    rst $38                                       ; $5860: $ff
    nop                                           ; $5861: $00
    rst $38                                       ; $5862: $ff
    nop                                           ; $5863: $00
    rst $38                                       ; $5864: $ff
    nop                                           ; $5865: $00
    rst $38                                       ; $5866: $ff
    nop                                           ; $5867: $00
    rst $38                                       ; $5868: $ff
    nop                                           ; $5869: $00
    rst $38                                       ; $586a: $ff
    nop                                           ; $586b: $00
    rst $38                                       ; $586c: $ff
    nop                                           ; $586d: $00
    rst $38                                       ; $586e: $ff
    nop                                           ; $586f: $00
    rst $38                                       ; $5870: $ff
    nop                                           ; $5871: $00
    rst $38                                       ; $5872: $ff
    nop                                           ; $5873: $00
    rst $38                                       ; $5874: $ff
    nop                                           ; $5875: $00
    rst $38                                       ; $5876: $ff
    nop                                           ; $5877: $00
    rst $38                                       ; $5878: $ff
    nop                                           ; $5879: $00
    rst $38                                       ; $587a: $ff
    nop                                           ; $587b: $00
    rst $38                                       ; $587c: $ff
    nop                                           ; $587d: $00
    rst $38                                       ; $587e: $ff
    nop                                           ; $587f: $00
    rst $38                                       ; $5880: $ff
    nop                                           ; $5881: $00
    rst $38                                       ; $5882: $ff
    nop                                           ; $5883: $00
    rst $38                                       ; $5884: $ff
    nop                                           ; $5885: $00
    rst $38                                       ; $5886: $ff
    nop                                           ; $5887: $00
    rst $38                                       ; $5888: $ff
    nop                                           ; $5889: $00
    rst $38                                       ; $588a: $ff
    nop                                           ; $588b: $00
    rst $38                                       ; $588c: $ff
    nop                                           ; $588d: $00
    rst $38                                       ; $588e: $ff
    nop                                           ; $588f: $00
    rst $38                                       ; $5890: $ff
    nop                                           ; $5891: $00
    rst $38                                       ; $5892: $ff
    nop                                           ; $5893: $00
    rst $38                                       ; $5894: $ff
    nop                                           ; $5895: $00
    rst $38                                       ; $5896: $ff
    nop                                           ; $5897: $00
    rst $38                                       ; $5898: $ff
    nop                                           ; $5899: $00
    rst $38                                       ; $589a: $ff
    nop                                           ; $589b: $00
    rst $38                                       ; $589c: $ff
    nop                                           ; $589d: $00
    rst $38                                       ; $589e: $ff
    nop                                           ; $589f: $00
    rst $38                                       ; $58a0: $ff
    nop                                           ; $58a1: $00
    rst $38                                       ; $58a2: $ff
    nop                                           ; $58a3: $00
    rst $38                                       ; $58a4: $ff
    nop                                           ; $58a5: $00
    rst $38                                       ; $58a6: $ff
    nop                                           ; $58a7: $00
    rst $38                                       ; $58a8: $ff
    nop                                           ; $58a9: $00
    rst $38                                       ; $58aa: $ff
    nop                                           ; $58ab: $00
    rst $38                                       ; $58ac: $ff
    nop                                           ; $58ad: $00
    rst $38                                       ; $58ae: $ff
    nop                                           ; $58af: $00
    rst $38                                       ; $58b0: $ff
    nop                                           ; $58b1: $00
    rst $38                                       ; $58b2: $ff
    nop                                           ; $58b3: $00
    rst $38                                       ; $58b4: $ff
    nop                                           ; $58b5: $00
    rst $38                                       ; $58b6: $ff
    nop                                           ; $58b7: $00
    rst $38                                       ; $58b8: $ff
    nop                                           ; $58b9: $00
    rst $38                                       ; $58ba: $ff
    nop                                           ; $58bb: $00
    rst $38                                       ; $58bc: $ff
    nop                                           ; $58bd: $00
    rst $38                                       ; $58be: $ff
    nop                                           ; $58bf: $00
    rst $38                                       ; $58c0: $ff
    nop                                           ; $58c1: $00
    rst $38                                       ; $58c2: $ff
    nop                                           ; $58c3: $00
    rst $38                                       ; $58c4: $ff
    nop                                           ; $58c5: $00
    rst $38                                       ; $58c6: $ff
    nop                                           ; $58c7: $00
    rst $38                                       ; $58c8: $ff
    nop                                           ; $58c9: $00
    rst $38                                       ; $58ca: $ff
    nop                                           ; $58cb: $00
    rst $38                                       ; $58cc: $ff
    nop                                           ; $58cd: $00
    rst $38                                       ; $58ce: $ff
    nop                                           ; $58cf: $00
    rst $38                                       ; $58d0: $ff
    nop                                           ; $58d1: $00
    rst $38                                       ; $58d2: $ff
    nop                                           ; $58d3: $00
    rst $38                                       ; $58d4: $ff
    nop                                           ; $58d5: $00
    rst $38                                       ; $58d6: $ff
    nop                                           ; $58d7: $00
    rst $38                                       ; $58d8: $ff
    nop                                           ; $58d9: $00
    rst $38                                       ; $58da: $ff
    nop                                           ; $58db: $00
    rst $38                                       ; $58dc: $ff
    nop                                           ; $58dd: $00
    rst $38                                       ; $58de: $ff
    nop                                           ; $58df: $00
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
    rst $38                                       ; $58f0: $ff
    nop                                           ; $58f1: $00
    rst $38                                       ; $58f2: $ff
    nop                                           ; $58f3: $00
    rst $38                                       ; $58f4: $ff
    nop                                           ; $58f5: $00
    rst $38                                       ; $58f6: $ff
    nop                                           ; $58f7: $00
    rst $38                                       ; $58f8: $ff
    nop                                           ; $58f9: $00
    rst $38                                       ; $58fa: $ff
    nop                                           ; $58fb: $00
    rst $38                                       ; $58fc: $ff
    nop                                           ; $58fd: $00
    rst $38                                       ; $58fe: $ff
    nop                                           ; $58ff: $00
    rst $38                                       ; $5900: $ff
    nop                                           ; $5901: $00
    rst $38                                       ; $5902: $ff
    nop                                           ; $5903: $00
    rst $38                                       ; $5904: $ff
    nop                                           ; $5905: $00
    rst $38                                       ; $5906: $ff
    nop                                           ; $5907: $00
    rst $38                                       ; $5908: $ff
    nop                                           ; $5909: $00
    rst $38                                       ; $590a: $ff
    nop                                           ; $590b: $00
    rst $38                                       ; $590c: $ff
    nop                                           ; $590d: $00
    rst $38                                       ; $590e: $ff
    nop                                           ; $590f: $00
    rst $38                                       ; $5910: $ff
    nop                                           ; $5911: $00
    rst $38                                       ; $5912: $ff
    nop                                           ; $5913: $00
    rst $38                                       ; $5914: $ff
    nop                                           ; $5915: $00
    rst $38                                       ; $5916: $ff
    nop                                           ; $5917: $00
    rst $38                                       ; $5918: $ff
    nop                                           ; $5919: $00
    rst $38                                       ; $591a: $ff
    nop                                           ; $591b: $00
    rst $38                                       ; $591c: $ff
    nop                                           ; $591d: $00
    rst $38                                       ; $591e: $ff
    nop                                           ; $591f: $00
    rst $38                                       ; $5920: $ff
    nop                                           ; $5921: $00
    rst $38                                       ; $5922: $ff
    nop                                           ; $5923: $00
    rst $38                                       ; $5924: $ff
    nop                                           ; $5925: $00
    rst $38                                       ; $5926: $ff
    nop                                           ; $5927: $00
    rst $38                                       ; $5928: $ff
    nop                                           ; $5929: $00
    rst $38                                       ; $592a: $ff
    nop                                           ; $592b: $00
    rst $38                                       ; $592c: $ff
    nop                                           ; $592d: $00
    rst $38                                       ; $592e: $ff
    nop                                           ; $592f: $00
    rst $38                                       ; $5930: $ff
    nop                                           ; $5931: $00
    rst $38                                       ; $5932: $ff
    nop                                           ; $5933: $00
    rst $38                                       ; $5934: $ff
    nop                                           ; $5935: $00
    rst $38                                       ; $5936: $ff
    nop                                           ; $5937: $00
    rst $38                                       ; $5938: $ff
    nop                                           ; $5939: $00
    rst $38                                       ; $593a: $ff
    nop                                           ; $593b: $00
    rst $38                                       ; $593c: $ff
    nop                                           ; $593d: $00
    rst $38                                       ; $593e: $ff
    nop                                           ; $593f: $00
    rst $38                                       ; $5940: $ff
    nop                                           ; $5941: $00
    rst $38                                       ; $5942: $ff
    nop                                           ; $5943: $00
    rst $38                                       ; $5944: $ff
    nop                                           ; $5945: $00
    rst $38                                       ; $5946: $ff
    nop                                           ; $5947: $00
    rst $38                                       ; $5948: $ff
    nop                                           ; $5949: $00
    rst $38                                       ; $594a: $ff
    nop                                           ; $594b: $00
    rst $38                                       ; $594c: $ff
    nop                                           ; $594d: $00
    rst $38                                       ; $594e: $ff
    nop                                           ; $594f: $00
    rst $38                                       ; $5950: $ff
    nop                                           ; $5951: $00
    rst $38                                       ; $5952: $ff
    nop                                           ; $5953: $00
    rst $38                                       ; $5954: $ff
    nop                                           ; $5955: $00
    rst $38                                       ; $5956: $ff
    nop                                           ; $5957: $00
    rst $38                                       ; $5958: $ff
    nop                                           ; $5959: $00
    rst $38                                       ; $595a: $ff
    nop                                           ; $595b: $00
    rst $38                                       ; $595c: $ff
    nop                                           ; $595d: $00
    rst $38                                       ; $595e: $ff
    nop                                           ; $595f: $00
    rst $38                                       ; $5960: $ff
    nop                                           ; $5961: $00
    rst $38                                       ; $5962: $ff
    nop                                           ; $5963: $00
    rst $38                                       ; $5964: $ff
    nop                                           ; $5965: $00
    rst $38                                       ; $5966: $ff
    nop                                           ; $5967: $00
    rst $38                                       ; $5968: $ff
    nop                                           ; $5969: $00
    rst $38                                       ; $596a: $ff
    nop                                           ; $596b: $00
    rst $38                                       ; $596c: $ff
    nop                                           ; $596d: $00
    rst $38                                       ; $596e: $ff
    nop                                           ; $596f: $00
    rst $38                                       ; $5970: $ff
    nop                                           ; $5971: $00
    rst $38                                       ; $5972: $ff
    nop                                           ; $5973: $00
    rst $38                                       ; $5974: $ff
    nop                                           ; $5975: $00
    rst $38                                       ; $5976: $ff
    nop                                           ; $5977: $00
    rst $38                                       ; $5978: $ff
    nop                                           ; $5979: $00
    rst $38                                       ; $597a: $ff
    nop                                           ; $597b: $00
    rst $38                                       ; $597c: $ff
    nop                                           ; $597d: $00
    rst $38                                       ; $597e: $ff
    nop                                           ; $597f: $00
    rst $38                                       ; $5980: $ff
    nop                                           ; $5981: $00
    rst $38                                       ; $5982: $ff
    nop                                           ; $5983: $00
    rst $38                                       ; $5984: $ff
    nop                                           ; $5985: $00
    rst $38                                       ; $5986: $ff
    nop                                           ; $5987: $00
    rst $38                                       ; $5988: $ff
    nop                                           ; $5989: $00
    rst $38                                       ; $598a: $ff
    nop                                           ; $598b: $00
    rst $38                                       ; $598c: $ff
    nop                                           ; $598d: $00
    rst $38                                       ; $598e: $ff
    nop                                           ; $598f: $00
    rst $38                                       ; $5990: $ff
    nop                                           ; $5991: $00
    rst $38                                       ; $5992: $ff
    nop                                           ; $5993: $00
    rst $38                                       ; $5994: $ff
    nop                                           ; $5995: $00
    rst $38                                       ; $5996: $ff
    nop                                           ; $5997: $00
    rst $38                                       ; $5998: $ff
    nop                                           ; $5999: $00
    rst $38                                       ; $599a: $ff
    nop                                           ; $599b: $00
    rst $38                                       ; $599c: $ff
    nop                                           ; $599d: $00
    rst $38                                       ; $599e: $ff
    nop                                           ; $599f: $00
    rst $38                                       ; $59a0: $ff
    nop                                           ; $59a1: $00
    rst $38                                       ; $59a2: $ff
    nop                                           ; $59a3: $00
    rst $38                                       ; $59a4: $ff
    nop                                           ; $59a5: $00
    rst $38                                       ; $59a6: $ff
    nop                                           ; $59a7: $00
    rst $38                                       ; $59a8: $ff
    nop                                           ; $59a9: $00
    rst $38                                       ; $59aa: $ff
    nop                                           ; $59ab: $00
    rst $38                                       ; $59ac: $ff
    nop                                           ; $59ad: $00
    rst $38                                       ; $59ae: $ff
    nop                                           ; $59af: $00
    rst $38                                       ; $59b0: $ff
    nop                                           ; $59b1: $00
    rst $38                                       ; $59b2: $ff
    nop                                           ; $59b3: $00
    rst $38                                       ; $59b4: $ff
    nop                                           ; $59b5: $00
    rst $38                                       ; $59b6: $ff
    nop                                           ; $59b7: $00
    rst $38                                       ; $59b8: $ff
    nop                                           ; $59b9: $00
    rst $38                                       ; $59ba: $ff
    nop                                           ; $59bb: $00
    rst $38                                       ; $59bc: $ff
    nop                                           ; $59bd: $00
    rst $38                                       ; $59be: $ff
    nop                                           ; $59bf: $00
    rst $38                                       ; $59c0: $ff
    nop                                           ; $59c1: $00
    rst $38                                       ; $59c2: $ff
    nop                                           ; $59c3: $00
    rst $38                                       ; $59c4: $ff
    nop                                           ; $59c5: $00
    rst $38                                       ; $59c6: $ff
    nop                                           ; $59c7: $00
    rst $38                                       ; $59c8: $ff
    nop                                           ; $59c9: $00
    rst $38                                       ; $59ca: $ff
    nop                                           ; $59cb: $00
    rst $38                                       ; $59cc: $ff
    nop                                           ; $59cd: $00
    rst $38                                       ; $59ce: $ff
    nop                                           ; $59cf: $00
    rst $38                                       ; $59d0: $ff
    nop                                           ; $59d1: $00
    rst $38                                       ; $59d2: $ff
    nop                                           ; $59d3: $00
    rst $38                                       ; $59d4: $ff
    nop                                           ; $59d5: $00
    rst $38                                       ; $59d6: $ff
    nop                                           ; $59d7: $00
    rst $38                                       ; $59d8: $ff
    nop                                           ; $59d9: $00
    rst $38                                       ; $59da: $ff
    nop                                           ; $59db: $00
    rst $38                                       ; $59dc: $ff
    nop                                           ; $59dd: $00
    rst $38                                       ; $59de: $ff
    nop                                           ; $59df: $00
    rst $38                                       ; $59e0: $ff
    nop                                           ; $59e1: $00
    rst $38                                       ; $59e2: $ff
    nop                                           ; $59e3: $00
    rst $38                                       ; $59e4: $ff
    nop                                           ; $59e5: $00
    rst $38                                       ; $59e6: $ff
    ld h, b                                       ; $59e7: $60
    rst $38                                       ; $59e8: $ff
    ld h, b                                       ; $59e9: $60
    rst $38                                       ; $59ea: $ff
    nop                                           ; $59eb: $00
    rst $38                                       ; $59ec: $ff
    nop                                           ; $59ed: $00
    rst $38                                       ; $59ee: $ff
    nop                                           ; $59ef: $00
    rst $38                                       ; $59f0: $ff
    nop                                           ; $59f1: $00
    rst $38                                       ; $59f2: $ff
    ld b, d                                       ; $59f3: $42
    rst $38                                       ; $59f4: $ff
    inc h                                         ; $59f5: $24
    rst $38                                       ; $59f6: $ff
    jr @+$01                                      ; $59f7: $18 $ff

    jr @+$01                                      ; $59f9: $18 $ff

    inc h                                         ; $59fb: $24
    rst $38                                       ; $59fc: $ff
    ld b, d                                       ; $59fd: $42
    rst $38                                       ; $59fe: $ff
    nop                                           ; $59ff: $00
    rst $38                                       ; $5a00: $ff
    nop                                           ; $5a01: $00
    rst $38                                       ; $5a02: $ff
    nop                                           ; $5a03: $00
    rst $38                                       ; $5a04: $ff
    nop                                           ; $5a05: $00
    rst $38                                       ; $5a06: $ff
    nop                                           ; $5a07: $00
    rst $38                                       ; $5a08: $ff
    nop                                           ; $5a09: $00
    rst $38                                       ; $5a0a: $ff
    nop                                           ; $5a0b: $00
    rst $38                                       ; $5a0c: $ff
    nop                                           ; $5a0d: $00
    rst $38                                       ; $5a0e: $ff
    nop                                           ; $5a0f: $00
    rst $38                                       ; $5a10: $ff
    nop                                           ; $5a11: $00
    rst $38                                       ; $5a12: $ff
    ld h, b                                       ; $5a13: $60
    rst $38                                       ; $5a14: $ff
    ld h, b                                       ; $5a15: $60
    rst $38                                       ; $5a16: $ff
    ld h, b                                       ; $5a17: $60
    rst $38                                       ; $5a18: $ff
    ld h, b                                       ; $5a19: $60
    rst $38                                       ; $5a1a: $ff
    nop                                           ; $5a1b: $00
    rst $38                                       ; $5a1c: $ff
    ld h, b                                       ; $5a1d: $60
    rst $38                                       ; $5a1e: $ff
    nop                                           ; $5a1f: $00
    rst $38                                       ; $5a20: $ff
    nop                                           ; $5a21: $00
    rst $38                                       ; $5a22: $ff
    ld l, h                                       ; $5a23: $6c
    rst $38                                       ; $5a24: $ff
    ld l, h                                       ; $5a25: $6c
    rst $38                                       ; $5a26: $ff
    ld l, h                                       ; $5a27: $6c
    rst $38                                       ; $5a28: $ff
    nop                                           ; $5a29: $00
    rst $38                                       ; $5a2a: $ff
    nop                                           ; $5a2b: $00
    rst $38                                       ; $5a2c: $ff
    nop                                           ; $5a2d: $00
    rst $38                                       ; $5a2e: $ff
    nop                                           ; $5a2f: $00
    rst $38                                       ; $5a30: $ff
    nop                                           ; $5a31: $00
    rst $38                                       ; $5a32: $ff
    inc h                                         ; $5a33: $24
    rst $38                                       ; $5a34: $ff
    ld a, [hl]                                    ; $5a35: $7e
    rst $38                                       ; $5a36: $ff
    inc h                                         ; $5a37: $24
    rst $38                                       ; $5a38: $ff
    inc h                                         ; $5a39: $24
    rst $38                                       ; $5a3a: $ff
    ld a, [hl]                                    ; $5a3b: $7e
    rst $38                                       ; $5a3c: $ff
    inc h                                         ; $5a3d: $24
    rst $38                                       ; $5a3e: $ff
    nop                                           ; $5a3f: $00
    rst $38                                       ; $5a40: $ff
    nop                                           ; $5a41: $00
    rst $38                                       ; $5a42: $ff
    inc a                                         ; $5a43: $3c
    rst $38                                       ; $5a44: $ff
    ld l, b                                       ; $5a45: $68
    rst $38                                       ; $5a46: $ff
    inc a                                         ; $5a47: $3c
    rst $38                                       ; $5a48: $ff
    ld a, [bc]                                    ; $5a49: $0a
    rst $38                                       ; $5a4a: $ff
    ld l, d                                       ; $5a4b: $6a
    rst $38                                       ; $5a4c: $ff
    inc a                                         ; $5a4d: $3c
    rst $38                                       ; $5a4e: $ff
    nop                                           ; $5a4f: $00
    rst $38                                       ; $5a50: $ff
    nop                                           ; $5a51: $00
    rst $38                                       ; $5a52: $ff
    ld [hl], d                                    ; $5a53: $72
    rst $38                                       ; $5a54: $ff
    ld d, h                                       ; $5a55: $54
    rst $38                                       ; $5a56: $ff
    ld a, b                                       ; $5a57: $78
    rst $38                                       ; $5a58: $ff
    ld e, $ff                                     ; $5a59: $1e $ff
    ld a, [hl+]                                   ; $5a5b: $2a
    rst $38                                       ; $5a5c: $ff
    ld c, [hl]                                    ; $5a5d: $4e
    rst $38                                       ; $5a5e: $ff
    nop                                           ; $5a5f: $00
    rst $38                                       ; $5a60: $ff
    nop                                           ; $5a61: $00
    rst $38                                       ; $5a62: $ff
    jr @+$01                                      ; $5a63: $18 $ff

    inc h                                         ; $5a65: $24
    rst $38                                       ; $5a66: $ff
    jr z, @+$01                                   ; $5a67: $28 $ff

    ld [hl-], a                                   ; $5a69: $32
    rst $38                                       ; $5a6a: $ff
    ld c, d                                       ; $5a6b: $4a
    rst $38                                       ; $5a6c: $ff
    ld b, h                                       ; $5a6d: $44
    rst $38                                       ; $5a6e: $ff
    ld a, [hl-]                                   ; $5a6f: $3a
    rst $38                                       ; $5a70: $ff
    nop                                           ; $5a71: $00
    rst $38                                       ; $5a72: $ff
    jr nz, @+$01                                  ; $5a73: $20 $ff

    ld h, b                                       ; $5a75: $60
    rst $38                                       ; $5a76: $ff
    ld b, b                                       ; $5a77: $40
    rst $38                                       ; $5a78: $ff
    nop                                           ; $5a79: $00
    rst $38                                       ; $5a7a: $ff
    nop                                           ; $5a7b: $00
    rst $38                                       ; $5a7c: $ff
    nop                                           ; $5a7d: $00
    rst $38                                       ; $5a7e: $ff
    nop                                           ; $5a7f: $00
    rst $38                                       ; $5a80: $ff
    nop                                           ; $5a81: $00
    rst $38                                       ; $5a82: $ff
    jr nc, @+$01                                  ; $5a83: $30 $ff

    ld h, b                                       ; $5a85: $60
    rst $38                                       ; $5a86: $ff
    ld h, b                                       ; $5a87: $60
    rst $38                                       ; $5a88: $ff
    ld h, b                                       ; $5a89: $60
    rst $38                                       ; $5a8a: $ff
    ld h, b                                       ; $5a8b: $60
    rst $38                                       ; $5a8c: $ff
    jr nc, @+$01                                  ; $5a8d: $30 $ff

    nop                                           ; $5a8f: $00
    rst $38                                       ; $5a90: $ff
    nop                                           ; $5a91: $00
    rst $38                                       ; $5a92: $ff
    ld h, b                                       ; $5a93: $60
    rst $38                                       ; $5a94: $ff
    jr nc, @+$01                                  ; $5a95: $30 $ff

    jr nc, @+$01                                  ; $5a97: $30 $ff

    jr nc, @+$01                                  ; $5a99: $30 $ff

    jr nc, @+$01                                  ; $5a9b: $30 $ff

    ld h, b                                       ; $5a9d: $60
    rst $38                                       ; $5a9e: $ff
    nop                                           ; $5a9f: $00
    rst $38                                       ; $5aa0: $ff
    nop                                           ; $5aa1: $00
    rst $38                                       ; $5aa2: $ff
    db $10                                        ; $5aa3: $10
    rst $38                                       ; $5aa4: $ff
    ld d, h                                       ; $5aa5: $54
    rst $38                                       ; $5aa6: $ff
    jr c, @+$01                                   ; $5aa7: $38 $ff

    jr c, @+$01                                   ; $5aa9: $38 $ff

    ld d, h                                       ; $5aab: $54
    rst $38                                       ; $5aac: $ff
    db $10                                        ; $5aad: $10
    rst $38                                       ; $5aae: $ff
    nop                                           ; $5aaf: $00
    rst $38                                       ; $5ab0: $ff
    nop                                           ; $5ab1: $00
    rst $38                                       ; $5ab2: $ff
    nop                                           ; $5ab3: $00
    rst $38                                       ; $5ab4: $ff
    db $10                                        ; $5ab5: $10
    rst $38                                       ; $5ab6: $ff
    db $10                                        ; $5ab7: $10
    rst $38                                       ; $5ab8: $ff
    ld a, h                                       ; $5ab9: $7c
    rst $38                                       ; $5aba: $ff
    db $10                                        ; $5abb: $10
    rst $38                                       ; $5abc: $ff
    db $10                                        ; $5abd: $10
    rst $38                                       ; $5abe: $ff
    nop                                           ; $5abf: $00
    rst $38                                       ; $5ac0: $ff
    nop                                           ; $5ac1: $00
    rst $38                                       ; $5ac2: $ff
    nop                                           ; $5ac3: $00
    rst $38                                       ; $5ac4: $ff
    nop                                           ; $5ac5: $00
    rst $38                                       ; $5ac6: $ff
    nop                                           ; $5ac7: $00
    rst $38                                       ; $5ac8: $ff
    nop                                           ; $5ac9: $00
    rst $38                                       ; $5aca: $ff
    ld h, b                                       ; $5acb: $60
    rst $38                                       ; $5acc: $ff
    ld h, b                                       ; $5acd: $60
    rst $38                                       ; $5ace: $ff
    jr nz, @+$01                                  ; $5acf: $20 $ff

    nop                                           ; $5ad1: $00
    rst $38                                       ; $5ad2: $ff
    nop                                           ; $5ad3: $00
    rst $38                                       ; $5ad4: $ff
    nop                                           ; $5ad5: $00
    rst $38                                       ; $5ad6: $ff
    nop                                           ; $5ad7: $00
    rst $38                                       ; $5ad8: $ff
    ld a, [hl]                                    ; $5ad9: $7e
    rst $38                                       ; $5ada: $ff
    nop                                           ; $5adb: $00
    rst $38                                       ; $5adc: $ff
    nop                                           ; $5add: $00
    rst $38                                       ; $5ade: $ff
    nop                                           ; $5adf: $00
    rst $38                                       ; $5ae0: $ff
    nop                                           ; $5ae1: $00
    rst $38                                       ; $5ae2: $ff
    nop                                           ; $5ae3: $00
    rst $38                                       ; $5ae4: $ff
    nop                                           ; $5ae5: $00
    rst $38                                       ; $5ae6: $ff
    nop                                           ; $5ae7: $00
    rst $38                                       ; $5ae8: $ff
    nop                                           ; $5ae9: $00
    rst $38                                       ; $5aea: $ff
    ld h, b                                       ; $5aeb: $60
    rst $38                                       ; $5aec: $ff
    ld h, b                                       ; $5aed: $60
    rst $38                                       ; $5aee: $ff
    nop                                           ; $5aef: $00
    rst $38                                       ; $5af0: $ff
    nop                                           ; $5af1: $00
    rst $38                                       ; $5af2: $ff
    ld [bc], a                                    ; $5af3: $02
    rst $38                                       ; $5af4: $ff
    inc b                                         ; $5af5: $04
    rst $38                                       ; $5af6: $ff
    ld [$10ff], sp                                ; $5af7: $08 $ff $10
    rst $38                                       ; $5afa: $ff
    jr nz, @+$01                                  ; $5afb: $20 $ff

    ld b, b                                       ; $5afd: $40
    rst $38                                       ; $5afe: $ff
    nop                                           ; $5aff: $00
    rst $38                                       ; $5b00: $ff
    nop                                           ; $5b01: $00
    rst $38                                       ; $5b02: $ff
    inc a                                         ; $5b03: $3c
    rst $38                                       ; $5b04: $ff
    ld h, [hl]                                    ; $5b05: $66
    rst $38                                       ; $5b06: $ff
    ld h, [hl]                                    ; $5b07: $66
    rst $38                                       ; $5b08: $ff
    ld h, [hl]                                    ; $5b09: $66
    rst $38                                       ; $5b0a: $ff
    ld h, [hl]                                    ; $5b0b: $66
    rst $38                                       ; $5b0c: $ff
    inc a                                         ; $5b0d: $3c
    rst $38                                       ; $5b0e: $ff
    nop                                           ; $5b0f: $00
    rst $38                                       ; $5b10: $ff
    nop                                           ; $5b11: $00
    rst $38                                       ; $5b12: $ff
    jr nc, @+$01                                  ; $5b13: $30 $ff

    ld [hl], b                                    ; $5b15: $70
    rst $38                                       ; $5b16: $ff
    jr nc, @+$01                                  ; $5b17: $30 $ff

    jr nc, @+$01                                  ; $5b19: $30 $ff

    jr nc, @+$01                                  ; $5b1b: $30 $ff

    jr nc, @+$01                                  ; $5b1d: $30 $ff

    nop                                           ; $5b1f: $00
    rst $38                                       ; $5b20: $ff
    nop                                           ; $5b21: $00
    rst $38                                       ; $5b22: $ff
    inc a                                         ; $5b23: $3c
    rst $38                                       ; $5b24: $ff
    ld h, [hl]                                    ; $5b25: $66
    rst $38                                       ; $5b26: $ff
    ld b, $ff                                     ; $5b27: $06 $ff
    inc a                                         ; $5b29: $3c
    rst $38                                       ; $5b2a: $ff
    ld h, b                                       ; $5b2b: $60
    rst $38                                       ; $5b2c: $ff
    ld a, [hl]                                    ; $5b2d: $7e
    rst $38                                       ; $5b2e: $ff
    nop                                           ; $5b2f: $00
    rst $38                                       ; $5b30: $ff
    nop                                           ; $5b31: $00
    rst $38                                       ; $5b32: $ff
    inc a                                         ; $5b33: $3c
    rst $38                                       ; $5b34: $ff
    ld h, [hl]                                    ; $5b35: $66
    rst $38                                       ; $5b36: $ff
    inc c                                         ; $5b37: $0c
    rst $38                                       ; $5b38: $ff
    ld b, $ff                                     ; $5b39: $06 $ff
    ld h, [hl]                                    ; $5b3b: $66
    rst $38                                       ; $5b3c: $ff
    inc a                                         ; $5b3d: $3c
    rst $38                                       ; $5b3e: $ff
    nop                                           ; $5b3f: $00
    rst $38                                       ; $5b40: $ff
    nop                                           ; $5b41: $00
    rst $38                                       ; $5b42: $ff
    inc e                                         ; $5b43: $1c
    rst $38                                       ; $5b44: $ff
    inc l                                         ; $5b45: $2c
    rst $38                                       ; $5b46: $ff
    ld l, h                                       ; $5b47: $6c
    rst $38                                       ; $5b48: $ff
    ld l, h                                       ; $5b49: $6c
    rst $38                                       ; $5b4a: $ff
    ld a, [hl]                                    ; $5b4b: $7e
    rst $38                                       ; $5b4c: $ff
    inc c                                         ; $5b4d: $0c
    rst $38                                       ; $5b4e: $ff
    nop                                           ; $5b4f: $00
    rst $38                                       ; $5b50: $ff
    nop                                           ; $5b51: $00
    rst $38                                       ; $5b52: $ff
    ld a, [hl]                                    ; $5b53: $7e
    rst $38                                       ; $5b54: $ff
    ld h, b                                       ; $5b55: $60
    rst $38                                       ; $5b56: $ff
    ld a, h                                       ; $5b57: $7c
    rst $38                                       ; $5b58: $ff
    ld b, $ff                                     ; $5b59: $06 $ff
    ld h, [hl]                                    ; $5b5b: $66
    rst $38                                       ; $5b5c: $ff
    inc a                                         ; $5b5d: $3c
    rst $38                                       ; $5b5e: $ff
    nop                                           ; $5b5f: $00
    rst $38                                       ; $5b60: $ff
    nop                                           ; $5b61: $00
    rst $38                                       ; $5b62: $ff
    inc a                                         ; $5b63: $3c
    rst $38                                       ; $5b64: $ff
    ld h, b                                       ; $5b65: $60
    rst $38                                       ; $5b66: $ff
    ld a, h                                       ; $5b67: $7c
    rst $38                                       ; $5b68: $ff
    ld h, [hl]                                    ; $5b69: $66
    rst $38                                       ; $5b6a: $ff
    ld h, [hl]                                    ; $5b6b: $66
    rst $38                                       ; $5b6c: $ff
    inc a                                         ; $5b6d: $3c
    rst $38                                       ; $5b6e: $ff
    nop                                           ; $5b6f: $00
    rst $38                                       ; $5b70: $ff
    nop                                           ; $5b71: $00
    rst $38                                       ; $5b72: $ff
    ld a, [hl]                                    ; $5b73: $7e
    rst $38                                       ; $5b74: $ff
    ld h, [hl]                                    ; $5b75: $66
    rst $38                                       ; $5b76: $ff
    inc c                                         ; $5b77: $0c
    rst $38                                       ; $5b78: $ff
    jr @+$01                                      ; $5b79: $18 $ff

    jr @+$01                                      ; $5b7b: $18 $ff

    jr @+$01                                      ; $5b7d: $18 $ff

    nop                                           ; $5b7f: $00
    rst $38                                       ; $5b80: $ff
    nop                                           ; $5b81: $00
    rst $38                                       ; $5b82: $ff
    inc a                                         ; $5b83: $3c
    rst $38                                       ; $5b84: $ff
    ld h, [hl]                                    ; $5b85: $66
    rst $38                                       ; $5b86: $ff
    inc a                                         ; $5b87: $3c
    rst $38                                       ; $5b88: $ff
    ld h, [hl]                                    ; $5b89: $66
    rst $38                                       ; $5b8a: $ff
    ld h, [hl]                                    ; $5b8b: $66
    rst $38                                       ; $5b8c: $ff
    inc a                                         ; $5b8d: $3c
    rst $38                                       ; $5b8e: $ff
    nop                                           ; $5b8f: $00
    rst $38                                       ; $5b90: $ff
    nop                                           ; $5b91: $00
    rst $38                                       ; $5b92: $ff
    inc a                                         ; $5b93: $3c
    rst $38                                       ; $5b94: $ff
    ld h, [hl]                                    ; $5b95: $66
    rst $38                                       ; $5b96: $ff
    ld h, [hl]                                    ; $5b97: $66
    rst $38                                       ; $5b98: $ff
    ld a, $ff                                     ; $5b99: $3e $ff
    ld b, $ff                                     ; $5b9b: $06 $ff
    inc a                                         ; $5b9d: $3c
    rst $38                                       ; $5b9e: $ff
    nop                                           ; $5b9f: $00
    rst $38                                       ; $5ba0: $ff
    nop                                           ; $5ba1: $00
    rst $38                                       ; $5ba2: $ff
    jr nc, @+$01                                  ; $5ba3: $30 $ff

    jr nc, @+$01                                  ; $5ba5: $30 $ff

    nop                                           ; $5ba7: $00
    rst $38                                       ; $5ba8: $ff
    nop                                           ; $5ba9: $00
    rst $38                                       ; $5baa: $ff
    jr nc, @+$01                                  ; $5bab: $30 $ff

    jr nc, @+$01                                  ; $5bad: $30 $ff

    nop                                           ; $5baf: $00
    rst $38                                       ; $5bb0: $ff
    nop                                           ; $5bb1: $00
    rst $38                                       ; $5bb2: $ff
    jr nc, @+$01                                  ; $5bb3: $30 $ff

    jr nc, @+$01                                  ; $5bb5: $30 $ff

    nop                                           ; $5bb7: $00
    rst $38                                       ; $5bb8: $ff
    jr nc, @+$01                                  ; $5bb9: $30 $ff

    jr nc, @+$01                                  ; $5bbb: $30 $ff

    db $10                                        ; $5bbd: $10
    rst $38                                       ; $5bbe: $ff
    nop                                           ; $5bbf: $00
    rst $38                                       ; $5bc0: $ff
    nop                                           ; $5bc1: $00
    rst $38                                       ; $5bc2: $ff
    jr @+$01                                      ; $5bc3: $18 $ff

    jr nc, @+$01                                  ; $5bc5: $30 $ff

    ld h, b                                       ; $5bc7: $60
    rst $38                                       ; $5bc8: $ff
    ld h, b                                       ; $5bc9: $60
    rst $38                                       ; $5bca: $ff
    jr nc, @+$01                                  ; $5bcb: $30 $ff

    jr @+$01                                      ; $5bcd: $18 $ff

    nop                                           ; $5bcf: $00
    rst $38                                       ; $5bd0: $ff
    nop                                           ; $5bd1: $00
    rst $38                                       ; $5bd2: $ff
    nop                                           ; $5bd3: $00
    rst $38                                       ; $5bd4: $ff
    nop                                           ; $5bd5: $00
    rst $38                                       ; $5bd6: $ff
    ld a, b                                       ; $5bd7: $78
    rst $38                                       ; $5bd8: $ff
    nop                                           ; $5bd9: $00
    rst $38                                       ; $5bda: $ff
    ld a, b                                       ; $5bdb: $78
    rst $38                                       ; $5bdc: $ff
    nop                                           ; $5bdd: $00
    rst $38                                       ; $5bde: $ff
    nop                                           ; $5bdf: $00
    rst $38                                       ; $5be0: $ff
    nop                                           ; $5be1: $00
    rst $38                                       ; $5be2: $ff
    ld h, b                                       ; $5be3: $60
    rst $38                                       ; $5be4: $ff
    jr nc, @+$01                                  ; $5be5: $30 $ff

    jr @+$01                                      ; $5be7: $18 $ff

    jr @+$01                                      ; $5be9: $18 $ff

    jr nc, @+$01                                  ; $5beb: $30 $ff

    ld h, b                                       ; $5bed: $60
    rst $38                                       ; $5bee: $ff
    nop                                           ; $5bef: $00
    rst $38                                       ; $5bf0: $ff
    nop                                           ; $5bf1: $00
    rst $38                                       ; $5bf2: $ff
    inc a                                         ; $5bf3: $3c
    rst $38                                       ; $5bf4: $ff
    ld h, [hl]                                    ; $5bf5: $66
    rst $38                                       ; $5bf6: $ff
    ld h, [hl]                                    ; $5bf7: $66
    rst $38                                       ; $5bf8: $ff
    inc c                                         ; $5bf9: $0c
    rst $38                                       ; $5bfa: $ff
    jr @+$01                                      ; $5bfb: $18 $ff

    nop                                           ; $5bfd: $00
    rst $38                                       ; $5bfe: $ff
    jr @+$01                                      ; $5bff: $18 $ff

    nop                                           ; $5c01: $00
    rst $38                                       ; $5c02: $ff
    inc e                                         ; $5c03: $1c
    rst $38                                       ; $5c04: $ff
    ld [hl+], a                                   ; $5c05: $22
    rst $38                                       ; $5c06: $ff
    ld e, d                                       ; $5c07: $5a
    rst $38                                       ; $5c08: $ff
    ld d, h                                       ; $5c09: $54
    rst $38                                       ; $5c0a: $ff
    ld e, d                                       ; $5c0b: $5a
    rst $38                                       ; $5c0c: $ff
    jr nz, @+$01                                  ; $5c0d: $20 $ff

    inc e                                         ; $5c0f: $1c
    rst $38                                       ; $5c10: $ff
    nop                                           ; $5c11: $00
    rst $38                                       ; $5c12: $ff
    inc a                                         ; $5c13: $3c
    rst $38                                       ; $5c14: $ff
    ld h, [hl]                                    ; $5c15: $66
    rst $38                                       ; $5c16: $ff
    ld h, [hl]                                    ; $5c17: $66
    rst $38                                       ; $5c18: $ff
    ld a, [hl]                                    ; $5c19: $7e
    rst $38                                       ; $5c1a: $ff
    ld h, [hl]                                    ; $5c1b: $66
    rst $38                                       ; $5c1c: $ff
    ld h, [hl]                                    ; $5c1d: $66
    rst $38                                       ; $5c1e: $ff
    nop                                           ; $5c1f: $00
    rst $38                                       ; $5c20: $ff
    nop                                           ; $5c21: $00
    rst $38                                       ; $5c22: $ff
    ld a, h                                       ; $5c23: $7c
    rst $38                                       ; $5c24: $ff
    ld h, [hl]                                    ; $5c25: $66
    rst $38                                       ; $5c26: $ff
    ld a, h                                       ; $5c27: $7c
    rst $38                                       ; $5c28: $ff
    ld h, [hl]                                    ; $5c29: $66
    rst $38                                       ; $5c2a: $ff
    ld h, [hl]                                    ; $5c2b: $66
    rst $38                                       ; $5c2c: $ff
    ld a, h                                       ; $5c2d: $7c
    rst $38                                       ; $5c2e: $ff
    nop                                           ; $5c2f: $00
    rst $38                                       ; $5c30: $ff
    nop                                           ; $5c31: $00
    rst $38                                       ; $5c32: $ff
    inc a                                         ; $5c33: $3c
    rst $38                                       ; $5c34: $ff
    ld h, [hl]                                    ; $5c35: $66
    rst $38                                       ; $5c36: $ff
    ld h, b                                       ; $5c37: $60
    rst $38                                       ; $5c38: $ff
    ld h, b                                       ; $5c39: $60
    rst $38                                       ; $5c3a: $ff
    ld h, [hl]                                    ; $5c3b: $66
    rst $38                                       ; $5c3c: $ff
    inc a                                         ; $5c3d: $3c
    rst $38                                       ; $5c3e: $ff
    nop                                           ; $5c3f: $00
    rst $38                                       ; $5c40: $ff
    nop                                           ; $5c41: $00
    rst $38                                       ; $5c42: $ff
    ld a, h                                       ; $5c43: $7c
    rst $38                                       ; $5c44: $ff
    ld h, [hl]                                    ; $5c45: $66
    rst $38                                       ; $5c46: $ff
    ld h, [hl]                                    ; $5c47: $66
    rst $38                                       ; $5c48: $ff
    ld h, [hl]                                    ; $5c49: $66
    rst $38                                       ; $5c4a: $ff
    ld h, [hl]                                    ; $5c4b: $66
    rst $38                                       ; $5c4c: $ff
    ld a, h                                       ; $5c4d: $7c
    rst $38                                       ; $5c4e: $ff
    nop                                           ; $5c4f: $00
    rst $38                                       ; $5c50: $ff
    nop                                           ; $5c51: $00
    rst $38                                       ; $5c52: $ff
    ld a, [hl]                                    ; $5c53: $7e
    rst $38                                       ; $5c54: $ff
    ld h, b                                       ; $5c55: $60
    rst $38                                       ; $5c56: $ff
    ld a, b                                       ; $5c57: $78
    rst $38                                       ; $5c58: $ff
    ld h, b                                       ; $5c59: $60
    rst $38                                       ; $5c5a: $ff
    ld h, b                                       ; $5c5b: $60
    rst $38                                       ; $5c5c: $ff
    ld a, [hl]                                    ; $5c5d: $7e
    rst $38                                       ; $5c5e: $ff
    nop                                           ; $5c5f: $00
    rst $38                                       ; $5c60: $ff
    nop                                           ; $5c61: $00
    rst $38                                       ; $5c62: $ff
    ld a, [hl]                                    ; $5c63: $7e
    rst $38                                       ; $5c64: $ff
    ld h, b                                       ; $5c65: $60
    rst $38                                       ; $5c66: $ff
    ld a, h                                       ; $5c67: $7c
    rst $38                                       ; $5c68: $ff
    ld h, b                                       ; $5c69: $60
    rst $38                                       ; $5c6a: $ff
    ld h, b                                       ; $5c6b: $60
    rst $38                                       ; $5c6c: $ff
    ld h, b                                       ; $5c6d: $60
    rst $38                                       ; $5c6e: $ff
    nop                                           ; $5c6f: $00
    rst $38                                       ; $5c70: $ff
    nop                                           ; $5c71: $00
    rst $38                                       ; $5c72: $ff
    inc a                                         ; $5c73: $3c
    rst $38                                       ; $5c74: $ff
    ld h, [hl]                                    ; $5c75: $66
    rst $38                                       ; $5c76: $ff
    ld h, b                                       ; $5c77: $60
    rst $38                                       ; $5c78: $ff
    ld l, [hl]                                    ; $5c79: $6e
    rst $38                                       ; $5c7a: $ff
    ld h, [hl]                                    ; $5c7b: $66
    rst $38                                       ; $5c7c: $ff
    inc a                                         ; $5c7d: $3c
    rst $38                                       ; $5c7e: $ff
    nop                                           ; $5c7f: $00
    rst $38                                       ; $5c80: $ff
    nop                                           ; $5c81: $00
    rst $38                                       ; $5c82: $ff
    ld h, [hl]                                    ; $5c83: $66
    rst $38                                       ; $5c84: $ff
    ld h, [hl]                                    ; $5c85: $66
    rst $38                                       ; $5c86: $ff
    ld a, [hl]                                    ; $5c87: $7e
    rst $38                                       ; $5c88: $ff
    ld h, [hl]                                    ; $5c89: $66
    rst $38                                       ; $5c8a: $ff
    ld h, [hl]                                    ; $5c8b: $66
    rst $38                                       ; $5c8c: $ff
    ld h, [hl]                                    ; $5c8d: $66
    rst $38                                       ; $5c8e: $ff
    nop                                           ; $5c8f: $00
    rst $38                                       ; $5c90: $ff
    nop                                           ; $5c91: $00
    rst $38                                       ; $5c92: $ff
    ld h, b                                       ; $5c93: $60
    rst $38                                       ; $5c94: $ff
    ld h, b                                       ; $5c95: $60
    rst $38                                       ; $5c96: $ff
    ld h, b                                       ; $5c97: $60
    rst $38                                       ; $5c98: $ff
    ld h, b                                       ; $5c99: $60
    rst $38                                       ; $5c9a: $ff
    ld h, b                                       ; $5c9b: $60
    rst $38                                       ; $5c9c: $ff
    ld h, b                                       ; $5c9d: $60
    rst $38                                       ; $5c9e: $ff
    nop                                           ; $5c9f: $00
    rst $38                                       ; $5ca0: $ff
    nop                                           ; $5ca1: $00
    rst $38                                       ; $5ca2: $ff
    ld b, $ff                                     ; $5ca3: $06 $ff
    ld b, $ff                                     ; $5ca5: $06 $ff
    ld b, $ff                                     ; $5ca7: $06 $ff
    ld h, [hl]                                    ; $5ca9: $66
    rst $38                                       ; $5caa: $ff
    ld h, [hl]                                    ; $5cab: $66
    rst $38                                       ; $5cac: $ff
    inc a                                         ; $5cad: $3c
    rst $38                                       ; $5cae: $ff
    nop                                           ; $5caf: $00
    rst $38                                       ; $5cb0: $ff
    nop                                           ; $5cb1: $00
    rst $38                                       ; $5cb2: $ff
    ld h, [hl]                                    ; $5cb3: $66
    rst $38                                       ; $5cb4: $ff
    ld l, h                                       ; $5cb5: $6c
    rst $38                                       ; $5cb6: $ff
    ld a, b                                       ; $5cb7: $78
    rst $38                                       ; $5cb8: $ff
    ld a, b                                       ; $5cb9: $78
    rst $38                                       ; $5cba: $ff
    ld l, h                                       ; $5cbb: $6c
    rst $38                                       ; $5cbc: $ff
    ld h, [hl]                                    ; $5cbd: $66
    rst $38                                       ; $5cbe: $ff
    nop                                           ; $5cbf: $00
    rst $38                                       ; $5cc0: $ff
    nop                                           ; $5cc1: $00
    rst $38                                       ; $5cc2: $ff
    ld h, b                                       ; $5cc3: $60
    rst $38                                       ; $5cc4: $ff
    ld h, b                                       ; $5cc5: $60
    rst $38                                       ; $5cc6: $ff
    ld h, b                                       ; $5cc7: $60
    rst $38                                       ; $5cc8: $ff
    ld h, b                                       ; $5cc9: $60
    rst $38                                       ; $5cca: $ff
    ld h, b                                       ; $5ccb: $60
    rst $38                                       ; $5ccc: $ff
    ld a, [hl]                                    ; $5ccd: $7e
    rst $38                                       ; $5cce: $ff
    nop                                           ; $5ccf: $00
    rst $38                                       ; $5cd0: $ff
    nop                                           ; $5cd1: $00
    rst $38                                       ; $5cd2: $ff
    ld h, d                                       ; $5cd3: $62
    rst $38                                       ; $5cd4: $ff
    halt                                          ; $5cd5: $76
    rst $38                                       ; $5cd6: $ff
    ld a, [hl]                                    ; $5cd7: $7e
    rst $38                                       ; $5cd8: $ff
    ld l, d                                       ; $5cd9: $6a
    rst $38                                       ; $5cda: $ff
    ld h, d                                       ; $5cdb: $62
    rst $38                                       ; $5cdc: $ff
    ld h, d                                       ; $5cdd: $62
    rst $38                                       ; $5cde: $ff
    nop                                           ; $5cdf: $00
    rst $38                                       ; $5ce0: $ff
    nop                                           ; $5ce1: $00
    rst $38                                       ; $5ce2: $ff
    ld h, [hl]                                    ; $5ce3: $66
    rst $38                                       ; $5ce4: $ff
    halt                                          ; $5ce5: $76
    rst $38                                       ; $5ce6: $ff
    ld a, [hl]                                    ; $5ce7: $7e
    rst $38                                       ; $5ce8: $ff
    ld l, [hl]                                    ; $5ce9: $6e
    rst $38                                       ; $5cea: $ff
    ld h, [hl]                                    ; $5ceb: $66
    rst $38                                       ; $5cec: $ff
    ld h, [hl]                                    ; $5ced: $66
    rst $38                                       ; $5cee: $ff
    nop                                           ; $5cef: $00
    rst $38                                       ; $5cf0: $ff
    nop                                           ; $5cf1: $00
    rst $38                                       ; $5cf2: $ff
    inc a                                         ; $5cf3: $3c
    rst $38                                       ; $5cf4: $ff
    ld h, [hl]                                    ; $5cf5: $66
    rst $38                                       ; $5cf6: $ff
    ld h, [hl]                                    ; $5cf7: $66
    rst $38                                       ; $5cf8: $ff
    ld h, [hl]                                    ; $5cf9: $66
    rst $38                                       ; $5cfa: $ff
    ld h, [hl]                                    ; $5cfb: $66
    rst $38                                       ; $5cfc: $ff
    inc a                                         ; $5cfd: $3c
    rst $38                                       ; $5cfe: $ff
    nop                                           ; $5cff: $00
    rst $38                                       ; $5d00: $ff
    nop                                           ; $5d01: $00
    rst $38                                       ; $5d02: $ff
    ld a, h                                       ; $5d03: $7c
    rst $38                                       ; $5d04: $ff
    ld h, [hl]                                    ; $5d05: $66
    rst $38                                       ; $5d06: $ff
    ld h, [hl]                                    ; $5d07: $66
    rst $38                                       ; $5d08: $ff
    ld a, h                                       ; $5d09: $7c
    rst $38                                       ; $5d0a: $ff
    ld h, b                                       ; $5d0b: $60
    rst $38                                       ; $5d0c: $ff
    ld h, b                                       ; $5d0d: $60
    rst $38                                       ; $5d0e: $ff
    nop                                           ; $5d0f: $00
    rst $38                                       ; $5d10: $ff
    nop                                           ; $5d11: $00
    rst $38                                       ; $5d12: $ff
    inc a                                         ; $5d13: $3c
    rst $38                                       ; $5d14: $ff
    ld h, [hl]                                    ; $5d15: $66
    rst $38                                       ; $5d16: $ff
    ld h, [hl]                                    ; $5d17: $66
    rst $38                                       ; $5d18: $ff
    ld a, [hl]                                    ; $5d19: $7e
    rst $38                                       ; $5d1a: $ff
    ld h, [hl]                                    ; $5d1b: $66
    rst $38                                       ; $5d1c: $ff
    ccf                                           ; $5d1d: $3f
    rst $38                                       ; $5d1e: $ff
    nop                                           ; $5d1f: $00
    rst $38                                       ; $5d20: $ff
    nop                                           ; $5d21: $00
    rst $38                                       ; $5d22: $ff
    ld a, h                                       ; $5d23: $7c
    rst $38                                       ; $5d24: $ff
    ld h, [hl]                                    ; $5d25: $66
    rst $38                                       ; $5d26: $ff
    ld h, [hl]                                    ; $5d27: $66
    rst $38                                       ; $5d28: $ff
    ld a, h                                       ; $5d29: $7c
    rst $38                                       ; $5d2a: $ff
    ld h, [hl]                                    ; $5d2b: $66
    rst $38                                       ; $5d2c: $ff
    ld h, [hl]                                    ; $5d2d: $66
    rst $38                                       ; $5d2e: $ff
    nop                                           ; $5d2f: $00
    rst $38                                       ; $5d30: $ff
    nop                                           ; $5d31: $00
    rst $38                                       ; $5d32: $ff
    ld a, $ff                                     ; $5d33: $3e $ff
    ld h, b                                       ; $5d35: $60
    rst $38                                       ; $5d36: $ff
    inc a                                         ; $5d37: $3c
    rst $38                                       ; $5d38: $ff
    ld b, $ff                                     ; $5d39: $06 $ff
    ld h, [hl]                                    ; $5d3b: $66
    rst $38                                       ; $5d3c: $ff
    inc a                                         ; $5d3d: $3c
    rst $38                                       ; $5d3e: $ff
    nop                                           ; $5d3f: $00
    rst $38                                       ; $5d40: $ff
    nop                                           ; $5d41: $00
    rst $38                                       ; $5d42: $ff
    ld a, [hl]                                    ; $5d43: $7e
    rst $38                                       ; $5d44: $ff
    jr @+$01                                      ; $5d45: $18 $ff

    jr @+$01                                      ; $5d47: $18 $ff

    jr @+$01                                      ; $5d49: $18 $ff

    jr @+$01                                      ; $5d4b: $18 $ff

    jr @+$01                                      ; $5d4d: $18 $ff

    nop                                           ; $5d4f: $00
    rst $38                                       ; $5d50: $ff
    nop                                           ; $5d51: $00
    rst $38                                       ; $5d52: $ff
    ld h, [hl]                                    ; $5d53: $66
    rst $38                                       ; $5d54: $ff
    ld h, [hl]                                    ; $5d55: $66
    rst $38                                       ; $5d56: $ff
    ld h, [hl]                                    ; $5d57: $66
    rst $38                                       ; $5d58: $ff
    ld h, [hl]                                    ; $5d59: $66
    rst $38                                       ; $5d5a: $ff
    ld h, [hl]                                    ; $5d5b: $66
    rst $38                                       ; $5d5c: $ff
    inc a                                         ; $5d5d: $3c
    rst $38                                       ; $5d5e: $ff
    nop                                           ; $5d5f: $00
    rst $38                                       ; $5d60: $ff
    nop                                           ; $5d61: $00
    rst $38                                       ; $5d62: $ff
    ld h, d                                       ; $5d63: $62
    rst $38                                       ; $5d64: $ff
    ld h, d                                       ; $5d65: $62
    rst $38                                       ; $5d66: $ff
    ld h, d                                       ; $5d67: $62
    rst $38                                       ; $5d68: $ff
    ld h, d                                       ; $5d69: $62
    rst $38                                       ; $5d6a: $ff
    inc [hl]                                      ; $5d6b: $34
    rst $38                                       ; $5d6c: $ff
    jr @+$01                                      ; $5d6d: $18 $ff

    nop                                           ; $5d6f: $00
    rst $38                                       ; $5d70: $ff
    nop                                           ; $5d71: $00
    rst $38                                       ; $5d72: $ff
    ld h, d                                       ; $5d73: $62
    rst $38                                       ; $5d74: $ff
    ld l, d                                       ; $5d75: $6a
    rst $38                                       ; $5d76: $ff
    ld l, d                                       ; $5d77: $6a
    rst $38                                       ; $5d78: $ff
    ld l, d                                       ; $5d79: $6a
    rst $38                                       ; $5d7a: $ff
    ld a, [hl]                                    ; $5d7b: $7e
    rst $38                                       ; $5d7c: $ff
    inc [hl]                                      ; $5d7d: $34
    rst $38                                       ; $5d7e: $ff
    nop                                           ; $5d7f: $00
    rst $38                                       ; $5d80: $ff
    nop                                           ; $5d81: $00
    rst $38                                       ; $5d82: $ff
    ld h, [hl]                                    ; $5d83: $66
    rst $38                                       ; $5d84: $ff
    inc a                                         ; $5d85: $3c
    rst $38                                       ; $5d86: $ff
    jr @+$01                                      ; $5d87: $18 $ff

    inc a                                         ; $5d89: $3c
    rst $38                                       ; $5d8a: $ff
    ld h, [hl]                                    ; $5d8b: $66
    rst $38                                       ; $5d8c: $ff
    ld b, d                                       ; $5d8d: $42
    rst $38                                       ; $5d8e: $ff
    nop                                           ; $5d8f: $00
    rst $38                                       ; $5d90: $ff
    nop                                           ; $5d91: $00
    rst $38                                       ; $5d92: $ff
    ld h, [hl]                                    ; $5d93: $66
    rst $38                                       ; $5d94: $ff
    ld h, [hl]                                    ; $5d95: $66
    rst $38                                       ; $5d96: $ff
    inc a                                         ; $5d97: $3c
    rst $38                                       ; $5d98: $ff
    jr @+$01                                      ; $5d99: $18 $ff

    jr @+$01                                      ; $5d9b: $18 $ff

    jr @+$01                                      ; $5d9d: $18 $ff

    nop                                           ; $5d9f: $00
    rst $38                                       ; $5da0: $ff
    nop                                           ; $5da1: $00
    rst $38                                       ; $5da2: $ff
    ld a, [hl]                                    ; $5da3: $7e
    rst $38                                       ; $5da4: $ff
    inc c                                         ; $5da5: $0c
    rst $38                                       ; $5da6: $ff
    jr @+$01                                      ; $5da7: $18 $ff

    jr nc, @+$01                                  ; $5da9: $30 $ff

    ld h, b                                       ; $5dab: $60
    rst $38                                       ; $5dac: $ff
    ld a, [hl]                                    ; $5dad: $7e
    rst $38                                       ; $5dae: $ff
    nop                                           ; $5daf: $00
    rst $38                                       ; $5db0: $ff
    jr nc, @+$01                                  ; $5db1: $30 $ff

    jr nz, @+$01                                  ; $5db3: $20 $ff

    jr nz, @+$01                                  ; $5db5: $20 $ff

    jr nz, @+$01                                  ; $5db7: $20 $ff

    jr nz, @+$01                                  ; $5db9: $20 $ff

    jr nz, @+$01                                  ; $5dbb: $20 $ff

    jr nz, @+$01                                  ; $5dbd: $20 $ff

    jr nc, @+$01                                  ; $5dbf: $30 $ff

    nop                                           ; $5dc1: $00
    rst $38                                       ; $5dc2: $ff
    ld b, d                                       ; $5dc3: $42
    rst $38                                       ; $5dc4: $ff
    inc h                                         ; $5dc5: $24
    rst $38                                       ; $5dc6: $ff
    ld a, [hl]                                    ; $5dc7: $7e
    rst $38                                       ; $5dc8: $ff
    jr @+$01                                      ; $5dc9: $18 $ff

    ld a, [hl]                                    ; $5dcb: $7e
    rst $38                                       ; $5dcc: $ff
    jr @+$01                                      ; $5dcd: $18 $ff

    nop                                           ; $5dcf: $00
    rst $38                                       ; $5dd0: $ff
    jr nc, @+$01                                  ; $5dd1: $30 $ff

    db $10                                        ; $5dd3: $10
    rst $38                                       ; $5dd4: $ff
    db $10                                        ; $5dd5: $10
    rst $38                                       ; $5dd6: $ff
    db $10                                        ; $5dd7: $10
    rst $38                                       ; $5dd8: $ff
    db $10                                        ; $5dd9: $10
    rst $38                                       ; $5dda: $ff
    db $10                                        ; $5ddb: $10
    rst $38                                       ; $5ddc: $ff
    db $10                                        ; $5ddd: $10
    rst $38                                       ; $5dde: $ff
    jr nc, @+$01                                  ; $5ddf: $30 $ff

    nop                                           ; $5de1: $00
    rst $38                                       ; $5de2: $ff
    nop                                           ; $5de3: $00
    rst $38                                       ; $5de4: $ff
    jr @+$01                                      ; $5de5: $18 $ff

    inc a                                         ; $5de7: $3c
    rst $38                                       ; $5de8: $ff
    ld h, [hl]                                    ; $5de9: $66
    rst $38                                       ; $5dea: $ff
    ld b, d                                       ; $5deb: $42
    rst $38                                       ; $5dec: $ff
    nop                                           ; $5ded: $00
    rst $38                                       ; $5dee: $ff
    nop                                           ; $5def: $00
    rst $38                                       ; $5df0: $ff
    nop                                           ; $5df1: $00
    rst $38                                       ; $5df2: $ff
    nop                                           ; $5df3: $00
    rst $38                                       ; $5df4: $ff
    nop                                           ; $5df5: $00
    rst $38                                       ; $5df6: $ff
    nop                                           ; $5df7: $00
    rst $38                                       ; $5df8: $ff
    nop                                           ; $5df9: $00
    rst $38                                       ; $5dfa: $ff
    nop                                           ; $5dfb: $00
    rst $38                                       ; $5dfc: $ff
    ld a, [hl]                                    ; $5dfd: $7e
    rst $38                                       ; $5dfe: $ff
    nop                                           ; $5dff: $00
    rst $38                                       ; $5e00: $ff
    nop                                           ; $5e01: $00
    rst $38                                       ; $5e02: $ff
    ld b, b                                       ; $5e03: $40
    rst $38                                       ; $5e04: $ff
    ld h, b                                       ; $5e05: $60
    rst $38                                       ; $5e06: $ff
    jr nz, @+$01                                  ; $5e07: $20 $ff

    nop                                           ; $5e09: $00
    rst $38                                       ; $5e0a: $ff
    nop                                           ; $5e0b: $00
    rst $38                                       ; $5e0c: $ff
    nop                                           ; $5e0d: $00
    rst $38                                       ; $5e0e: $ff
    nop                                           ; $5e0f: $00
    rst $38                                       ; $5e10: $ff
    nop                                           ; $5e11: $00
    rst $38                                       ; $5e12: $ff
    nop                                           ; $5e13: $00
    rst $38                                       ; $5e14: $ff
    jr c, @+$01                                   ; $5e15: $38 $ff

    ld l, h                                       ; $5e17: $6c
    rst $38                                       ; $5e18: $ff
    ld l, h                                       ; $5e19: $6c
    rst $38                                       ; $5e1a: $ff
    ld l, h                                       ; $5e1b: $6c
    rst $38                                       ; $5e1c: $ff
    ld a, $ff                                     ; $5e1d: $3e $ff
    nop                                           ; $5e1f: $00
    rst $38                                       ; $5e20: $ff
    nop                                           ; $5e21: $00
    rst $38                                       ; $5e22: $ff
    ld h, b                                       ; $5e23: $60
    rst $38                                       ; $5e24: $ff
    ld h, b                                       ; $5e25: $60
    rst $38                                       ; $5e26: $ff
    ld a, b                                       ; $5e27: $78
    rst $38                                       ; $5e28: $ff
    ld l, h                                       ; $5e29: $6c
    rst $38                                       ; $5e2a: $ff
    ld l, h                                       ; $5e2b: $6c
    rst $38                                       ; $5e2c: $ff
    ld a, b                                       ; $5e2d: $78
    rst $38                                       ; $5e2e: $ff
    nop                                           ; $5e2f: $00
    rst $38                                       ; $5e30: $ff
    nop                                           ; $5e31: $00
    rst $38                                       ; $5e32: $ff
    nop                                           ; $5e33: $00
    rst $38                                       ; $5e34: $ff
    jr c, @+$01                                   ; $5e35: $38 $ff

    ld l, h                                       ; $5e37: $6c
    rst $38                                       ; $5e38: $ff
    ld h, b                                       ; $5e39: $60
    rst $38                                       ; $5e3a: $ff
    ld l, h                                       ; $5e3b: $6c
    rst $38                                       ; $5e3c: $ff
    jr c, @+$01                                   ; $5e3d: $38 $ff

    nop                                           ; $5e3f: $00
    rst $38                                       ; $5e40: $ff
    nop                                           ; $5e41: $00
    rst $38                                       ; $5e42: $ff
    inc c                                         ; $5e43: $0c
    rst $38                                       ; $5e44: $ff
    inc c                                         ; $5e45: $0c
    rst $38                                       ; $5e46: $ff
    inc a                                         ; $5e47: $3c
    rst $38                                       ; $5e48: $ff
    ld l, h                                       ; $5e49: $6c
    rst $38                                       ; $5e4a: $ff
    ld l, h                                       ; $5e4b: $6c
    rst $38                                       ; $5e4c: $ff
    inc a                                         ; $5e4d: $3c
    rst $38                                       ; $5e4e: $ff
    nop                                           ; $5e4f: $00
    rst $38                                       ; $5e50: $ff
    nop                                           ; $5e51: $00
    rst $38                                       ; $5e52: $ff
    nop                                           ; $5e53: $00
    rst $38                                       ; $5e54: $ff
    jr c, @+$01                                   ; $5e55: $38 $ff

    ld l, h                                       ; $5e57: $6c
    rst $38                                       ; $5e58: $ff
    ld a, h                                       ; $5e59: $7c
    rst $38                                       ; $5e5a: $ff
    ld h, b                                       ; $5e5b: $60
    rst $38                                       ; $5e5c: $ff
    inc a                                         ; $5e5d: $3c
    rst $38                                       ; $5e5e: $ff
    nop                                           ; $5e5f: $00
    rst $38                                       ; $5e60: $ff
    nop                                           ; $5e61: $00
    rst $38                                       ; $5e62: $ff
    inc e                                         ; $5e63: $1c
    rst $38                                       ; $5e64: $ff
    jr nc, @+$01                                  ; $5e65: $30 $ff

    ld a, h                                       ; $5e67: $7c
    rst $38                                       ; $5e68: $ff
    jr nc, @+$01                                  ; $5e69: $30 $ff

    jr nc, @+$01                                  ; $5e6b: $30 $ff

    jr nc, @+$01                                  ; $5e6d: $30 $ff

    nop                                           ; $5e6f: $00
    rst $38                                       ; $5e70: $ff
    nop                                           ; $5e71: $00
    rst $38                                       ; $5e72: $ff
    inc a                                         ; $5e73: $3c
    rst $38                                       ; $5e74: $ff
    ld l, h                                       ; $5e75: $6c
    rst $38                                       ; $5e76: $ff
    ld l, h                                       ; $5e77: $6c
    rst $38                                       ; $5e78: $ff
    inc a                                         ; $5e79: $3c
    rst $38                                       ; $5e7a: $ff
    inc c                                         ; $5e7b: $0c
    rst $38                                       ; $5e7c: $ff
    ld l, h                                       ; $5e7d: $6c
    rst $38                                       ; $5e7e: $ff
    jr c, @+$01                                   ; $5e7f: $38 $ff

    nop                                           ; $5e81: $00
    rst $38                                       ; $5e82: $ff
    ld h, b                                       ; $5e83: $60
    rst $38                                       ; $5e84: $ff
    ld h, b                                       ; $5e85: $60
    rst $38                                       ; $5e86: $ff
    ld a, b                                       ; $5e87: $78
    rst $38                                       ; $5e88: $ff
    ld l, h                                       ; $5e89: $6c
    rst $38                                       ; $5e8a: $ff
    ld l, h                                       ; $5e8b: $6c
    rst $38                                       ; $5e8c: $ff
    ld l, h                                       ; $5e8d: $6c
    rst $38                                       ; $5e8e: $ff
    nop                                           ; $5e8f: $00
    rst $38                                       ; $5e90: $ff
    nop                                           ; $5e91: $00
    rst $38                                       ; $5e92: $ff
    ld h, b                                       ; $5e93: $60
    rst $38                                       ; $5e94: $ff
    nop                                           ; $5e95: $00
    rst $38                                       ; $5e96: $ff
    ld h, b                                       ; $5e97: $60
    rst $38                                       ; $5e98: $ff
    ld h, b                                       ; $5e99: $60
    rst $38                                       ; $5e9a: $ff
    ld h, b                                       ; $5e9b: $60
    rst $38                                       ; $5e9c: $ff
    ld h, b                                       ; $5e9d: $60
    rst $38                                       ; $5e9e: $ff
    nop                                           ; $5e9f: $00
    rst $38                                       ; $5ea0: $ff
    nop                                           ; $5ea1: $00
    rst $38                                       ; $5ea2: $ff
    inc c                                         ; $5ea3: $0c
    rst $38                                       ; $5ea4: $ff
    nop                                           ; $5ea5: $00
    rst $38                                       ; $5ea6: $ff
    inc c                                         ; $5ea7: $0c
    rst $38                                       ; $5ea8: $ff
    inc c                                         ; $5ea9: $0c
    rst $38                                       ; $5eaa: $ff
    inc c                                         ; $5eab: $0c
    rst $38                                       ; $5eac: $ff
    ld l, h                                       ; $5ead: $6c
    rst $38                                       ; $5eae: $ff
    jr c, @+$01                                   ; $5eaf: $38 $ff

    nop                                           ; $5eb1: $00
    rst $38                                       ; $5eb2: $ff
    ld h, b                                       ; $5eb3: $60
    rst $38                                       ; $5eb4: $ff
    ld h, b                                       ; $5eb5: $60
    rst $38                                       ; $5eb6: $ff
    ld l, h                                       ; $5eb7: $6c
    rst $38                                       ; $5eb8: $ff
    ld a, b                                       ; $5eb9: $78
    rst $38                                       ; $5eba: $ff
    ld l, h                                       ; $5ebb: $6c
    rst $38                                       ; $5ebc: $ff
    ld l, h                                       ; $5ebd: $6c
    rst $38                                       ; $5ebe: $ff
    nop                                           ; $5ebf: $00
    rst $38                                       ; $5ec0: $ff
    nop                                           ; $5ec1: $00
    rst $38                                       ; $5ec2: $ff
    ld [hl], b                                    ; $5ec3: $70
    rst $38                                       ; $5ec4: $ff
    jr nc, @+$01                                  ; $5ec5: $30 $ff

    jr nc, @+$01                                  ; $5ec7: $30 $ff

    jr nc, @+$01                                  ; $5ec9: $30 $ff

    jr nc, @+$01                                  ; $5ecb: $30 $ff

    jr nc, @+$01                                  ; $5ecd: $30 $ff

    nop                                           ; $5ecf: $00
    rst $38                                       ; $5ed0: $ff
    nop                                           ; $5ed1: $00
    rst $38                                       ; $5ed2: $ff
    nop                                           ; $5ed3: $00
    rst $38                                       ; $5ed4: $ff
    ld a, h                                       ; $5ed5: $7c
    rst $38                                       ; $5ed6: $ff
    ld l, d                                       ; $5ed7: $6a
    rst $38                                       ; $5ed8: $ff
    ld l, d                                       ; $5ed9: $6a
    rst $38                                       ; $5eda: $ff
    ld l, d                                       ; $5edb: $6a
    rst $38                                       ; $5edc: $ff
    ld l, d                                       ; $5edd: $6a
    rst $38                                       ; $5ede: $ff
    nop                                           ; $5edf: $00
    rst $38                                       ; $5ee0: $ff
    nop                                           ; $5ee1: $00
    rst $38                                       ; $5ee2: $ff
    nop                                           ; $5ee3: $00
    rst $38                                       ; $5ee4: $ff
    ld a, b                                       ; $5ee5: $78
    rst $38                                       ; $5ee6: $ff
    ld l, h                                       ; $5ee7: $6c
    rst $38                                       ; $5ee8: $ff
    ld l, h                                       ; $5ee9: $6c
    rst $38                                       ; $5eea: $ff
    ld l, h                                       ; $5eeb: $6c
    rst $38                                       ; $5eec: $ff
    ld l, h                                       ; $5eed: $6c
    rst $38                                       ; $5eee: $ff
    nop                                           ; $5eef: $00
    rst $38                                       ; $5ef0: $ff
    nop                                           ; $5ef1: $00
    rst $38                                       ; $5ef2: $ff
    nop                                           ; $5ef3: $00
    rst $38                                       ; $5ef4: $ff
    jr c, @+$01                                   ; $5ef5: $38 $ff

    ld l, h                                       ; $5ef7: $6c
    rst $38                                       ; $5ef8: $ff
    ld l, h                                       ; $5ef9: $6c
    rst $38                                       ; $5efa: $ff
    ld l, h                                       ; $5efb: $6c
    rst $38                                       ; $5efc: $ff
    jr c, @+$01                                   ; $5efd: $38 $ff

    nop                                           ; $5eff: $00
    rst $38                                       ; $5f00: $ff
    nop                                           ; $5f01: $00
    rst $38                                       ; $5f02: $ff
    ld a, b                                       ; $5f03: $78
    rst $38                                       ; $5f04: $ff
    ld l, h                                       ; $5f05: $6c
    rst $38                                       ; $5f06: $ff
    ld l, h                                       ; $5f07: $6c
    rst $38                                       ; $5f08: $ff
    ld l, h                                       ; $5f09: $6c
    rst $38                                       ; $5f0a: $ff
    ld a, b                                       ; $5f0b: $78
    rst $38                                       ; $5f0c: $ff
    ld h, b                                       ; $5f0d: $60
    rst $38                                       ; $5f0e: $ff
    ld h, b                                       ; $5f0f: $60
    rst $38                                       ; $5f10: $ff
    nop                                           ; $5f11: $00
    rst $38                                       ; $5f12: $ff
    inc a                                         ; $5f13: $3c
    rst $38                                       ; $5f14: $ff
    ld l, h                                       ; $5f15: $6c
    rst $38                                       ; $5f16: $ff
    ld l, h                                       ; $5f17: $6c
    rst $38                                       ; $5f18: $ff
    ld l, h                                       ; $5f19: $6c
    rst $38                                       ; $5f1a: $ff
    inc a                                         ; $5f1b: $3c
    rst $38                                       ; $5f1c: $ff
    inc c                                         ; $5f1d: $0c
    rst $38                                       ; $5f1e: $ff
    inc c                                         ; $5f1f: $0c
    rst $38                                       ; $5f20: $ff
    nop                                           ; $5f21: $00
    rst $38                                       ; $5f22: $ff
    nop                                           ; $5f23: $00
    rst $38                                       ; $5f24: $ff
    ld l, h                                       ; $5f25: $6c
    rst $38                                       ; $5f26: $ff
    ld [hl], b                                    ; $5f27: $70
    rst $38                                       ; $5f28: $ff
    ld h, b                                       ; $5f29: $60
    rst $38                                       ; $5f2a: $ff
    ld h, b                                       ; $5f2b: $60
    rst $38                                       ; $5f2c: $ff
    ld h, b                                       ; $5f2d: $60
    rst $38                                       ; $5f2e: $ff
    nop                                           ; $5f2f: $00
    rst $38                                       ; $5f30: $ff
    nop                                           ; $5f31: $00
    rst $38                                       ; $5f32: $ff
    nop                                           ; $5f33: $00
    rst $38                                       ; $5f34: $ff
    inc a                                         ; $5f35: $3c
    rst $38                                       ; $5f36: $ff
    ld h, b                                       ; $5f37: $60
    rst $38                                       ; $5f38: $ff
    jr c, @+$01                                   ; $5f39: $38 $ff

    inc e                                         ; $5f3b: $1c
    rst $38                                       ; $5f3c: $ff
    ld a, b                                       ; $5f3d: $78
    rst $38                                       ; $5f3e: $ff
    nop                                           ; $5f3f: $00
    rst $38                                       ; $5f40: $ff
    nop                                           ; $5f41: $00
    rst $38                                       ; $5f42: $ff
    jr nc, @+$01                                  ; $5f43: $30 $ff

    ld a, h                                       ; $5f45: $7c
    rst $38                                       ; $5f46: $ff
    jr nc, @+$01                                  ; $5f47: $30 $ff

    jr nc, @+$01                                  ; $5f49: $30 $ff

    inc [hl]                                      ; $5f4b: $34
    rst $38                                       ; $5f4c: $ff
    jr @+$01                                      ; $5f4d: $18 $ff

    nop                                           ; $5f4f: $00
    rst $38                                       ; $5f50: $ff
    nop                                           ; $5f51: $00
    rst $38                                       ; $5f52: $ff
    nop                                           ; $5f53: $00
    rst $38                                       ; $5f54: $ff
    ld l, h                                       ; $5f55: $6c
    rst $38                                       ; $5f56: $ff
    ld l, h                                       ; $5f57: $6c
    rst $38                                       ; $5f58: $ff
    ld l, h                                       ; $5f59: $6c
    rst $38                                       ; $5f5a: $ff
    ld l, h                                       ; $5f5b: $6c
    rst $38                                       ; $5f5c: $ff
    inc a                                         ; $5f5d: $3c
    rst $38                                       ; $5f5e: $ff
    nop                                           ; $5f5f: $00
    rst $38                                       ; $5f60: $ff
    nop                                           ; $5f61: $00
    rst $38                                       ; $5f62: $ff
    nop                                           ; $5f63: $00
    rst $38                                       ; $5f64: $ff
    ld l, h                                       ; $5f65: $6c
    rst $38                                       ; $5f66: $ff
    ld l, h                                       ; $5f67: $6c
    rst $38                                       ; $5f68: $ff
    ld l, h                                       ; $5f69: $6c
    rst $38                                       ; $5f6a: $ff
    jr c, @+$01                                   ; $5f6b: $38 $ff

    db $10                                        ; $5f6d: $10
    rst $38                                       ; $5f6e: $ff
    nop                                           ; $5f6f: $00
    rst $38                                       ; $5f70: $ff
    nop                                           ; $5f71: $00
    rst $38                                       ; $5f72: $ff
    nop                                           ; $5f73: $00
    rst $38                                       ; $5f74: $ff
    ld l, d                                       ; $5f75: $6a
    rst $38                                       ; $5f76: $ff
    ld l, d                                       ; $5f77: $6a
    rst $38                                       ; $5f78: $ff
    ld l, d                                       ; $5f79: $6a
    rst $38                                       ; $5f7a: $ff
    ld l, d                                       ; $5f7b: $6a
    rst $38                                       ; $5f7c: $ff
    inc [hl]                                      ; $5f7d: $34
    rst $38                                       ; $5f7e: $ff
    nop                                           ; $5f7f: $00
    rst $38                                       ; $5f80: $ff
    nop                                           ; $5f81: $00
    rst $38                                       ; $5f82: $ff
    nop                                           ; $5f83: $00
    rst $38                                       ; $5f84: $ff
    ld b, h                                       ; $5f85: $44
    rst $38                                       ; $5f86: $ff
    ld l, h                                       ; $5f87: $6c
    rst $38                                       ; $5f88: $ff
    jr c, @+$01                                   ; $5f89: $38 $ff

    ld l, h                                       ; $5f8b: $6c
    rst $38                                       ; $5f8c: $ff
    ld b, h                                       ; $5f8d: $44
    rst $38                                       ; $5f8e: $ff
    nop                                           ; $5f8f: $00
    rst $38                                       ; $5f90: $ff
    nop                                           ; $5f91: $00
    rst $38                                       ; $5f92: $ff
    ld l, h                                       ; $5f93: $6c
    rst $38                                       ; $5f94: $ff
    ld l, h                                       ; $5f95: $6c
    rst $38                                       ; $5f96: $ff
    ld l, h                                       ; $5f97: $6c
    rst $38                                       ; $5f98: $ff
    inc a                                         ; $5f99: $3c
    rst $38                                       ; $5f9a: $ff
    jr @+$01                                      ; $5f9b: $18 $ff

    ld [hl], b                                    ; $5f9d: $70
    rst $38                                       ; $5f9e: $ff
    nop                                           ; $5f9f: $00
    rst $38                                       ; $5fa0: $ff
    nop                                           ; $5fa1: $00
    rst $38                                       ; $5fa2: $ff
    nop                                           ; $5fa3: $00
    rst $38                                       ; $5fa4: $ff
    ld a, h                                       ; $5fa5: $7c
    rst $38                                       ; $5fa6: $ff
    jr @+$01                                      ; $5fa7: $18 $ff

    jr nc, @+$01                                  ; $5fa9: $30 $ff

    ld h, b                                       ; $5fab: $60
    rst $38                                       ; $5fac: $ff
    ld a, h                                       ; $5fad: $7c
    rst $38                                       ; $5fae: $ff
    nop                                           ; $5faf: $00
    rst $38                                       ; $5fb0: $ff
    nop                                           ; $5fb1: $00
    rst $38                                       ; $5fb2: $ff
    jr @+$01                                      ; $5fb3: $18 $ff

    jr nc, @+$01                                  ; $5fb5: $30 $ff

    jr nc, @+$01                                  ; $5fb7: $30 $ff

    ld h, b                                       ; $5fb9: $60
    rst $38                                       ; $5fba: $ff
    jr nc, @+$01                                  ; $5fbb: $30 $ff

    jr nc, @+$01                                  ; $5fbd: $30 $ff

    jr @+$01                                      ; $5fbf: $18 $ff

    nop                                           ; $5fc1: $00
    rst $38                                       ; $5fc2: $ff
    ld h, b                                       ; $5fc3: $60
    rst $38                                       ; $5fc4: $ff
    ld h, b                                       ; $5fc5: $60
    rst $38                                       ; $5fc6: $ff
    ld h, b                                       ; $5fc7: $60
    rst $38                                       ; $5fc8: $ff
    nop                                           ; $5fc9: $00
    rst $38                                       ; $5fca: $ff
    ld h, b                                       ; $5fcb: $60
    rst $38                                       ; $5fcc: $ff
    ld h, b                                       ; $5fcd: $60
    rst $38                                       ; $5fce: $ff
    ld h, b                                       ; $5fcf: $60
    rst $38                                       ; $5fd0: $ff
    nop                                           ; $5fd1: $00
    rst $38                                       ; $5fd2: $ff
    ld h, b                                       ; $5fd3: $60
    rst $38                                       ; $5fd4: $ff
    jr nc, @+$01                                  ; $5fd5: $30 $ff

    jr nc, @+$01                                  ; $5fd7: $30 $ff

    jr @+$01                                      ; $5fd9: $18 $ff

    jr nc, @+$01                                  ; $5fdb: $30 $ff

    jr nc, @+$01                                  ; $5fdd: $30 $ff

    ld h, b                                       ; $5fdf: $60
    rst $38                                       ; $5fe0: $ff
    nop                                           ; $5fe1: $00
    rst $38                                       ; $5fe2: $ff
    nop                                           ; $5fe3: $00
    rst $38                                       ; $5fe4: $ff
    nop                                           ; $5fe5: $00
    rst $38                                       ; $5fe6: $ff
    ld [hl-], a                                   ; $5fe7: $32
    rst $38                                       ; $5fe8: $ff
    ld a, [hl]                                    ; $5fe9: $7e
    rst $38                                       ; $5fea: $ff
    ld c, h                                       ; $5feb: $4c
    rst $38                                       ; $5fec: $ff
    nop                                           ; $5fed: $00
    rst $38                                       ; $5fee: $ff
    nop                                           ; $5fef: $00
    rst $38                                       ; $5ff0: $ff
    nop                                           ; $5ff1: $00
    rst $38                                       ; $5ff2: $ff
    nop                                           ; $5ff3: $00
    rst $38                                       ; $5ff4: $ff
    nop                                           ; $5ff5: $00
    rst $38                                       ; $5ff6: $ff
    nop                                           ; $5ff7: $00
    rst $38                                       ; $5ff8: $ff
    nop                                           ; $5ff9: $00
    rst $38                                       ; $5ffa: $ff
    nop                                           ; $5ffb: $00
    rst $38                                       ; $5ffc: $ff
    nop                                           ; $5ffd: $00
    rst $38                                       ; $5ffe: $ff
    nop                                           ; $5fff: $00
    rst $38                                       ; $6000: $ff
    nop                                           ; $6001: $00
    rst $38                                       ; $6002: $ff
    nop                                           ; $6003: $00
    rst $38                                       ; $6004: $ff
    nop                                           ; $6005: $00
    rst $38                                       ; $6006: $ff
    nop                                           ; $6007: $00
    rst $38                                       ; $6008: $ff
    nop                                           ; $6009: $00
    rst $38                                       ; $600a: $ff
    nop                                           ; $600b: $00
    rst $38                                       ; $600c: $ff
    nop                                           ; $600d: $00
    rst $38                                       ; $600e: $ff
    nop                                           ; $600f: $00
    ld hl, sp-$01                                 ; $6010: $f8 $ff
    add b                                         ; $6012: $80
    rst $38                                       ; $6013: $ff
    add b                                         ; $6014: $80
    rst $38                                       ; $6015: $ff
    add b                                         ; $6016: $80
    rst $38                                       ; $6017: $ff
    add b                                         ; $6018: $80
    rst $38                                       ; $6019: $ff
    nop                                           ; $601a: $00
    rst $38                                       ; $601b: $ff
    nop                                           ; $601c: $00
    rst $38                                       ; $601d: $ff
    nop                                           ; $601e: $00
    rst $38                                       ; $601f: $ff
    rst $38                                       ; $6020: $ff
    nop                                           ; $6021: $00
    xor a                                         ; $6022: $af
    ld d, b                                       ; $6023: $50
    rst RST_18                                    ; $6024: $df
    jr nz, @-$4f                                  ; $6025: $20 $af

    ld d, b                                       ; $6027: $50
    rst $38                                       ; $6028: $ff
    nop                                           ; $6029: $00
    rst $38                                       ; $602a: $ff
    nop                                           ; $602b: $00
    rst $38                                       ; $602c: $ff
    nop                                           ; $602d: $00
    rst $38                                       ; $602e: $ff
    nop                                           ; $602f: $00
    nop                                           ; $6030: $00
    rst $38                                       ; $6031: $ff
    nop                                           ; $6032: $00
    rst $38                                       ; $6033: $ff
    nop                                           ; $6034: $00
    rst $38                                       ; $6035: $ff
    nop                                           ; $6036: $00
    rst $38                                       ; $6037: $ff
    nop                                           ; $6038: $00
    rst $38                                       ; $6039: $ff
    nop                                           ; $603a: $00
    rst $38                                       ; $603b: $ff
    nop                                           ; $603c: $00
    rst $38                                       ; $603d: $ff
    nop                                           ; $603e: $00
    rst $38                                       ; $603f: $ff
    inc a                                         ; $6040: $3c
    rst $38                                       ; $6041: $ff
    ld a, [hl]                                    ; $6042: $7e
    ld b, d                                       ; $6043: $42
    rst $38                                       ; $6044: $ff
    sbc c                                         ; $6045: $99
    rst $38                                       ; $6046: $ff
    sbc c                                         ; $6047: $99
    rst $38                                       ; $6048: $ff
    sbc c                                         ; $6049: $99
    rst $38                                       ; $604a: $ff
    sbc c                                         ; $604b: $99
    ld a, [hl]                                    ; $604c: $7e
    jp $ff3c                                      ; $604d: $c3 $3c $ff


    jr @+$01                                      ; $6050: $18 $ff

    inc a                                         ; $6052: $3c
    inc h                                         ; $6053: $24
    rst $38                                       ; $6054: $ff
    ld b, h                                       ; $6055: $44
    rst $38                                       ; $6056: $ff
    inc h                                         ; $6057: $24
    inc a                                         ; $6058: $3c
    inc h                                         ; $6059: $24
    inc a                                         ; $605a: $3c
    inc h                                         ; $605b: $24
    inc a                                         ; $605c: $3c
    rst $20                                       ; $605d: $e7
    jr @+$01                                      ; $605e: $18 $ff

    inc a                                         ; $6060: $3c
    rst $38                                       ; $6061: $ff
    ld a, [hl]                                    ; $6062: $7e
    ld b, d                                       ; $6063: $42
    rst $38                                       ; $6064: $ff
    sbc c                                         ; $6065: $99
    rst $38                                       ; $6066: $ff
    ld a, c                                       ; $6067: $79
    ld a, [hl]                                    ; $6068: $7e
    ld b, d                                       ; $6069: $42
    cp $9e                                        ; $606a: $fe $9e
    rst $38                                       ; $606c: $ff
    add c                                         ; $606d: $81
    ld a, [hl]                                    ; $606e: $7e
    rst $38                                       ; $606f: $ff
    inc a                                         ; $6070: $3c
    rst $38                                       ; $6071: $ff
    ld a, [hl]                                    ; $6072: $7e
    ld b, d                                       ; $6073: $42
    rst $38                                       ; $6074: $ff
    sbc c                                         ; $6075: $99
    rst $38                                       ; $6076: $ff
    ld [hl], d                                    ; $6077: $72
    ld a, a                                       ; $6078: $7f
    ld a, c                                       ; $6079: $79
    rst $38                                       ; $607a: $ff
    sbc c                                         ; $607b: $99
    ld a, [hl]                                    ; $607c: $7e
    jp $ff3c                                      ; $607d: $c3 $3c $ff


    inc e                                         ; $6080: $1c
    rst $38                                       ; $6081: $ff
    ld a, $22                                     ; $6082: $3e $22
    rst $38                                       ; $6084: $ff
    ld b, d                                       ; $6085: $42
    rst $38                                       ; $6086: $ff
    sub d                                         ; $6087: $92
    cp $92                                        ; $6088: $fe $92
    rst $38                                       ; $608a: $ff
    add c                                         ; $608b: $81
    ld a, [hl]                                    ; $608c: $7e
    di                                            ; $608d: $f3
    inc c                                         ; $608e: $0c
    rst $38                                       ; $608f: $ff
    ld a, [hl]                                    ; $6090: $7e
    rst $38                                       ; $6091: $ff
    rst $38                                       ; $6092: $ff
    add c                                         ; $6093: $81
    rst $38                                       ; $6094: $ff
    sbc [hl]                                      ; $6095: $9e
    rst $38                                       ; $6096: $ff
    add d                                         ; $6097: $82
    ld a, a                                       ; $6098: $7f
    ld a, c                                       ; $6099: $79
    rst $38                                       ; $609a: $ff
    sbc c                                         ; $609b: $99
    ld a, [hl]                                    ; $609c: $7e
    jp $ff3c                                      ; $609d: $c3 $3c $ff


    inc a                                         ; $60a0: $3c
    rst $38                                       ; $60a1: $ff
    ld a, [hl]                                    ; $60a2: $7e
    ld b, d                                       ; $60a3: $42
    rst $38                                       ; $60a4: $ff
    sbc h                                         ; $60a5: $9c
    rst $38                                       ; $60a6: $ff
    add d                                         ; $60a7: $82
    rst $38                                       ; $60a8: $ff
    sbc c                                         ; $60a9: $99
    rst $38                                       ; $60aa: $ff
    sbc c                                         ; $60ab: $99
    ld a, [hl]                                    ; $60ac: $7e
    jp $ff3c                                      ; $60ad: $c3 $3c $ff


    ld a, [hl]                                    ; $60b0: $7e
    rst $38                                       ; $60b1: $ff
    rst $38                                       ; $60b2: $ff
    add c                                         ; $60b3: $81
    rst $38                                       ; $60b4: $ff
    sbc c                                         ; $60b5: $99
    rst $38                                       ; $60b6: $ff
    ld l, c                                       ; $60b7: $69
    ld e, $12                                     ; $60b8: $1e $12
    inc a                                         ; $60ba: $3c
    inc h                                         ; $60bb: $24
    inc a                                         ; $60bc: $3c
    rst $20                                       ; $60bd: $e7
    jr @+$01                                      ; $60be: $18 $ff

    inc a                                         ; $60c0: $3c
    rst $38                                       ; $60c1: $ff
    ld a, [hl]                                    ; $60c2: $7e
    ld b, d                                       ; $60c3: $42
    rst $38                                       ; $60c4: $ff
    sbc c                                         ; $60c5: $99
    rst $38                                       ; $60c6: $ff
    ld b, d                                       ; $60c7: $42
    rst $38                                       ; $60c8: $ff
    sbc c                                         ; $60c9: $99
    rst $38                                       ; $60ca: $ff
    sbc c                                         ; $60cb: $99
    ld a, [hl]                                    ; $60cc: $7e
    jp $ff3c                                      ; $60cd: $c3 $3c $ff


    inc a                                         ; $60d0: $3c
    rst $38                                       ; $60d1: $ff
    ld a, [hl]                                    ; $60d2: $7e
    ld b, d                                       ; $60d3: $42
    rst $38                                       ; $60d4: $ff
    sbc c                                         ; $60d5: $99
    rst $38                                       ; $60d6: $ff
    sbc c                                         ; $60d7: $99
    ld a, a                                       ; $60d8: $7f
    ld b, c                                       ; $60d9: $41
    ccf                                           ; $60da: $3f
    add hl, sp                                    ; $60db: $39
    ld a, [hl]                                    ; $60dc: $7e
    jp $ff3c                                      ; $60dd: $c3 $3c $ff


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
    rst $38                                       ; $6100: $ff
    nop                                           ; $6101: $00
    rst $38                                       ; $6102: $ff
    db $10                                        ; $6103: $10
    rst $38                                       ; $6104: $ff
    jr nc, @+$01                                  ; $6105: $30 $ff

    db $10                                        ; $6107: $10
    rst $38                                       ; $6108: $ff
    db $10                                        ; $6109: $10
    rst $38                                       ; $610a: $ff
    db $10                                        ; $610b: $10
    rst $38                                       ; $610c: $ff
    nop                                           ; $610d: $00
    rst $38                                       ; $610e: $ff
    nop                                           ; $610f: $00
    rst $38                                       ; $6110: $ff
    nop                                           ; $6111: $00
    rst $30                                       ; $6112: $f7
    ld [hl], b                                    ; $6113: $70
    rst $38                                       ; $6114: $ff
    ld [$30b7], sp                                ; $6115: $08 $b7 $30
    rst $38                                       ; $6118: $ff
    ld b, b                                       ; $6119: $40
    rst $38                                       ; $611a: $ff
    ld a, b                                       ; $611b: $78
    rst $38                                       ; $611c: $ff
    nop                                           ; $611d: $00
    rst $38                                       ; $611e: $ff
    nop                                           ; $611f: $00
    rst $38                                       ; $6120: $ff
    nop                                           ; $6121: $00
    rst $30                                       ; $6122: $f7
    ld [hl], b                                    ; $6123: $70
    rst $38                                       ; $6124: $ff
    ld [$30f7], sp                                ; $6125: $08 $f7 $30
    rst $38                                       ; $6128: $ff
    ld [$70f7], sp                                ; $6129: $08 $f7 $70
    rst $38                                       ; $612c: $ff
    nop                                           ; $612d: $00
    rst $38                                       ; $612e: $ff
    nop                                           ; $612f: $00
    rst $38                                       ; $6130: $ff
    nop                                           ; $6131: $00
    rst $38                                       ; $6132: $ff
    ld d, b                                       ; $6133: $50
    rst $38                                       ; $6134: $ff
    ld d, b                                       ; $6135: $50
    rst $38                                       ; $6136: $ff
    ld d, b                                       ; $6137: $50
    rst $38                                       ; $6138: $ff
    ld a, b                                       ; $6139: $78
    rst $38                                       ; $613a: $ff
    db $10                                        ; $613b: $10
    rst $38                                       ; $613c: $ff
    nop                                           ; $613d: $00
    rst $38                                       ; $613e: $ff
    nop                                           ; $613f: $00
    rst $38                                       ; $6140: $ff
    nop                                           ; $6141: $00
    rst $38                                       ; $6142: $ff
    ld a, b                                       ; $6143: $78
    rst $38                                       ; $6144: $ff
    ld b, b                                       ; $6145: $40
    rst $30                                       ; $6146: $f7
    ld [hl], b                                    ; $6147: $70
    rst $38                                       ; $6148: $ff
    ld [$70f7], sp                                ; $6149: $08 $f7 $70
    rst $38                                       ; $614c: $ff
    nop                                           ; $614d: $00
    rst $38                                       ; $614e: $ff
    nop                                           ; $614f: $00
    rst $38                                       ; $6150: $ff
    nop                                           ; $6151: $00
    cp a                                          ; $6152: $bf
    jr c, @+$01                                   ; $6153: $38 $ff

    ld b, b                                       ; $6155: $40
    rst $30                                       ; $6156: $f7
    ld [hl], b                                    ; $6157: $70
    rst $38                                       ; $6158: $ff
    ld c, b                                       ; $6159: $48
    or a                                          ; $615a: $b7
    jr nc, @+$01                                  ; $615b: $30 $ff

    nop                                           ; $615d: $00
    rst $38                                       ; $615e: $ff
    nop                                           ; $615f: $00
    rst $38                                       ; $6160: $ff
    nop                                           ; $6161: $00
    rst $38                                       ; $6162: $ff
    ld a, b                                       ; $6163: $78
    rst $38                                       ; $6164: $ff
    ld c, b                                       ; $6165: $48
    rst $38                                       ; $6166: $ff
    db $10                                        ; $6167: $10
    rst $38                                       ; $6168: $ff
    db $10                                        ; $6169: $10
    rst $38                                       ; $616a: $ff
    db $10                                        ; $616b: $10
    rst $38                                       ; $616c: $ff
    nop                                           ; $616d: $00
    rst $38                                       ; $616e: $ff
    nop                                           ; $616f: $00
    rst $38                                       ; $6170: $ff
    nop                                           ; $6171: $00
    or a                                          ; $6172: $b7
    jr nc, @+$01                                  ; $6173: $30 $ff

    ld c, b                                       ; $6175: $48
    or a                                          ; $6176: $b7
    jr nc, @+$01                                  ; $6177: $30 $ff

    ld c, b                                       ; $6179: $48
    or a                                          ; $617a: $b7
    jr nc, @+$01                                  ; $617b: $30 $ff

    nop                                           ; $617d: $00
    rst $38                                       ; $617e: $ff
    nop                                           ; $617f: $00
    rst $38                                       ; $6180: $ff
    nop                                           ; $6181: $00
    or a                                          ; $6182: $b7
    jr nc, @+$01                                  ; $6183: $30 $ff

    ld c, b                                       ; $6185: $48
    cp a                                          ; $6186: $bf
    jr c, @+$01                                   ; $6187: $38 $ff

    ld [$70f7], sp                                ; $6189: $08 $f7 $70
    rst $38                                       ; $618c: $ff
    nop                                           ; $618d: $00
    rst $38                                       ; $618e: $ff
    nop                                           ; $618f: $00
    rst $38                                       ; $6190: $ff
    nop                                           ; $6191: $00
    db $eb                                        ; $6192: $eb
    ld c, b                                       ; $6193: $48
    rst $38                                       ; $6194: $ff
    ld d, h                                       ; $6195: $54
    rst $38                                       ; $6196: $ff
    ld d, h                                       ; $6197: $54
    rst $38                                       ; $6198: $ff
    ld d, h                                       ; $6199: $54
    db $eb                                        ; $619a: $eb
    ld c, b                                       ; $619b: $48
    rst $38                                       ; $619c: $ff
    nop                                           ; $619d: $00
    rst $38                                       ; $619e: $ff
    nop                                           ; $619f: $00
    rst $38                                       ; $61a0: $ff
    nop                                           ; $61a1: $00
    rst $38                                       ; $61a2: $ff
    ld c, b                                       ; $61a3: $48
    rst $38                                       ; $61a4: $ff
    ld c, b                                       ; $61a5: $48
    rst $38                                       ; $61a6: $ff
    ld c, b                                       ; $61a7: $48
    rst $38                                       ; $61a8: $ff
    ld c, b                                       ; $61a9: $48
    rst $38                                       ; $61aa: $ff
    ld c, b                                       ; $61ab: $48
    rst $38                                       ; $61ac: $ff
    nop                                           ; $61ad: $00
    rst $38                                       ; $61ae: $ff
    nop                                           ; $61af: $00
    rst $38                                       ; $61b0: $ff
    nop                                           ; $61b1: $00
    ei                                            ; $61b2: $fb
    ld e, b                                       ; $61b3: $58
    rst $38                                       ; $61b4: $ff
    ld b, h                                       ; $61b5: $44
    rst $38                                       ; $61b6: $ff
    ld c, b                                       ; $61b7: $48
    rst $38                                       ; $61b8: $ff
    ld d, b                                       ; $61b9: $50
    rst $38                                       ; $61ba: $ff
    ld e, h                                       ; $61bb: $5c
    rst $38                                       ; $61bc: $ff
    nop                                           ; $61bd: $00
    rst $38                                       ; $61be: $ff
    nop                                           ; $61bf: $00
    rst $38                                       ; $61c0: $ff
    nop                                           ; $61c1: $00
    ei                                            ; $61c2: $fb
    ld e, b                                       ; $61c3: $58
    rst $38                                       ; $61c4: $ff
    ld b, h                                       ; $61c5: $44
    ei                                            ; $61c6: $fb
    ld e, b                                       ; $61c7: $58
    rst $38                                       ; $61c8: $ff
    ld b, h                                       ; $61c9: $44
    ei                                            ; $61ca: $fb
    ld e, b                                       ; $61cb: $58
    rst $38                                       ; $61cc: $ff
    nop                                           ; $61cd: $00
    rst $38                                       ; $61ce: $ff
    nop                                           ; $61cf: $00
    rst $38                                       ; $61d0: $ff
    nop                                           ; $61d1: $00
    rst $38                                       ; $61d2: $ff
    ld d, h                                       ; $61d3: $54
    rst $38                                       ; $61d4: $ff
    ld d, h                                       ; $61d5: $54
    rst $38                                       ; $61d6: $ff
    ld d, h                                       ; $61d7: $54
    rst $38                                       ; $61d8: $ff
    ld e, h                                       ; $61d9: $5c
    rst $38                                       ; $61da: $ff
    ld b, h                                       ; $61db: $44
    rst $38                                       ; $61dc: $ff
    nop                                           ; $61dd: $00
    rst $38                                       ; $61de: $ff
    nop                                           ; $61df: $00
    rst $38                                       ; $61e0: $ff
    nop                                           ; $61e1: $00
    rst $38                                       ; $61e2: $ff
    ld e, h                                       ; $61e3: $5c
    rst $38                                       ; $61e4: $ff
    ld d, b                                       ; $61e5: $50
    ei                                            ; $61e6: $fb
    ld e, b                                       ; $61e7: $58
    rst $38                                       ; $61e8: $ff
    ld b, h                                       ; $61e9: $44
    ei                                            ; $61ea: $fb
    ld e, b                                       ; $61eb: $58
    rst $38                                       ; $61ec: $ff
    nop                                           ; $61ed: $00
    rst $38                                       ; $61ee: $ff
    nop                                           ; $61ef: $00
    rst $38                                       ; $61f0: $ff
    nop                                           ; $61f1: $00
    rst $38                                       ; $61f2: $ff
    jr nc, @+$01                                  ; $61f3: $30 $ff

    ld c, b                                       ; $61f5: $48
    rst $38                                       ; $61f6: $ff
    ld c, b                                       ; $61f7: $48
    rst $38                                       ; $61f8: $ff
    ld c, b                                       ; $61f9: $48
    rst $38                                       ; $61fa: $ff
    jr nc, @+$01                                  ; $61fb: $30 $ff

    nop                                           ; $61fd: $00
    rst $38                                       ; $61fe: $ff
    nop                                           ; $61ff: $00
    nop                                           ; $6200: $00
    nop                                           ; $6201: $00
    db $10                                        ; $6202: $10
    db $10                                        ; $6203: $10
    jr nc, jr_007_6236                            ; $6204: $30 $30

    db $10                                        ; $6206: $10
    db $10                                        ; $6207: $10
    db $10                                        ; $6208: $10
    db $10                                        ; $6209: $10
    db $10                                        ; $620a: $10
    stop                                          ; $620b: $10 $00
    nop                                           ; $620d: $00
    nop                                           ; $620e: $00
    nop                                           ; $620f: $00
    nop                                           ; $6210: $00
    nop                                           ; $6211: $00
    ld [hl], b                                    ; $6212: $70
    ld [hl], b                                    ; $6213: $70
    ld [$3008], sp                                ; $6214: $08 $08 $30
    jr nc, jr_007_6259                            ; $6217: $30 $40

    ld b, b                                       ; $6219: $40
    ld a, b                                       ; $621a: $78
    ld a, b                                       ; $621b: $78
    nop                                           ; $621c: $00
    nop                                           ; $621d: $00
    nop                                           ; $621e: $00
    nop                                           ; $621f: $00
    nop                                           ; $6220: $00
    nop                                           ; $6221: $00
    ld [hl], b                                    ; $6222: $70
    ld [hl], b                                    ; $6223: $70
    ld [$3008], sp                                ; $6224: $08 $08 $30
    jr nc, jr_007_6231                            ; $6227: $30 $08

    ld [$7070], sp                                ; $6229: $08 $70 $70
    nop                                           ; $622c: $00
    nop                                           ; $622d: $00
    nop                                           ; $622e: $00
    nop                                           ; $622f: $00
    nop                                           ; $6230: $00

jr_007_6231:
    nop                                           ; $6231: $00
    ld d, b                                       ; $6232: $50
    ld d, b                                       ; $6233: $50
    ld d, b                                       ; $6234: $50
    ld d, b                                       ; $6235: $50

jr_007_6236:
    ld d, b                                       ; $6236: $50
    ld d, b                                       ; $6237: $50
    ld a, b                                       ; $6238: $78
    ld a, b                                       ; $6239: $78
    db $10                                        ; $623a: $10
    stop                                          ; $623b: $10 $00
    nop                                           ; $623d: $00
    nop                                           ; $623e: $00
    nop                                           ; $623f: $00
    nop                                           ; $6240: $00
    nop                                           ; $6241: $00
    ld a, b                                       ; $6242: $78
    ld a, b                                       ; $6243: $78
    ld b, b                                       ; $6244: $40
    ld b, b                                       ; $6245: $40
    ld [hl], b                                    ; $6246: $70
    ld [hl], b                                    ; $6247: $70
    ld [$7008], sp                                ; $6248: $08 $08 $70
    ld [hl], b                                    ; $624b: $70
    nop                                           ; $624c: $00
    nop                                           ; $624d: $00
    nop                                           ; $624e: $00
    nop                                           ; $624f: $00
    nop                                           ; $6250: $00
    nop                                           ; $6251: $00
    jr c, jr_007_628c                             ; $6252: $38 $38

    ld b, b                                       ; $6254: $40
    ld b, b                                       ; $6255: $40
    ld [hl], b                                    ; $6256: $70
    ld [hl], b                                    ; $6257: $70
    ld c, b                                       ; $6258: $48

jr_007_6259:
    ld c, b                                       ; $6259: $48
    jr nc, jr_007_628c                            ; $625a: $30 $30

    nop                                           ; $625c: $00
    nop                                           ; $625d: $00
    nop                                           ; $625e: $00
    nop                                           ; $625f: $00
    nop                                           ; $6260: $00
    nop                                           ; $6261: $00
    ld a, b                                       ; $6262: $78
    ld a, b                                       ; $6263: $78
    ld c, b                                       ; $6264: $48
    ld c, b                                       ; $6265: $48
    db $10                                        ; $6266: $10
    db $10                                        ; $6267: $10
    db $10                                        ; $6268: $10
    db $10                                        ; $6269: $10
    db $10                                        ; $626a: $10
    stop                                          ; $626b: $10 $00
    nop                                           ; $626d: $00
    nop                                           ; $626e: $00
    nop                                           ; $626f: $00
    nop                                           ; $6270: $00
    nop                                           ; $6271: $00
    jr nc, jr_007_62a4                            ; $6272: $30 $30

    ld c, b                                       ; $6274: $48
    ld c, b                                       ; $6275: $48
    jr nc, jr_007_62a8                            ; $6276: $30 $30

    ld c, b                                       ; $6278: $48
    ld c, b                                       ; $6279: $48
    jr nc, jr_007_62ac                            ; $627a: $30 $30

    nop                                           ; $627c: $00
    nop                                           ; $627d: $00
    nop                                           ; $627e: $00
    nop                                           ; $627f: $00
    nop                                           ; $6280: $00
    nop                                           ; $6281: $00
    jr nc, jr_007_62b4                            ; $6282: $30 $30

    ld c, b                                       ; $6284: $48
    ld c, b                                       ; $6285: $48
    jr c, jr_007_62c0                             ; $6286: $38 $38

    ld [$7008], sp                                ; $6288: $08 $08 $70
    ld [hl], b                                    ; $628b: $70

jr_007_628c:
    nop                                           ; $628c: $00
    nop                                           ; $628d: $00
    nop                                           ; $628e: $00
    nop                                           ; $628f: $00
    nop                                           ; $6290: $00
    nop                                           ; $6291: $00
    ld c, b                                       ; $6292: $48
    ld c, b                                       ; $6293: $48
    ld d, h                                       ; $6294: $54
    ld d, h                                       ; $6295: $54
    ld d, h                                       ; $6296: $54
    ld d, h                                       ; $6297: $54
    ld d, h                                       ; $6298: $54
    ld d, h                                       ; $6299: $54
    ld c, b                                       ; $629a: $48
    ld c, b                                       ; $629b: $48
    nop                                           ; $629c: $00
    nop                                           ; $629d: $00
    nop                                           ; $629e: $00
    nop                                           ; $629f: $00
    nop                                           ; $62a0: $00
    nop                                           ; $62a1: $00
    ld c, b                                       ; $62a2: $48
    ld c, b                                       ; $62a3: $48

jr_007_62a4:
    ld c, b                                       ; $62a4: $48
    ld c, b                                       ; $62a5: $48
    ld c, b                                       ; $62a6: $48
    ld c, b                                       ; $62a7: $48

jr_007_62a8:
    ld c, b                                       ; $62a8: $48
    ld c, b                                       ; $62a9: $48
    ld c, b                                       ; $62aa: $48
    ld c, b                                       ; $62ab: $48

jr_007_62ac:
    nop                                           ; $62ac: $00
    nop                                           ; $62ad: $00
    nop                                           ; $62ae: $00
    nop                                           ; $62af: $00
    nop                                           ; $62b0: $00
    nop                                           ; $62b1: $00
    ld e, b                                       ; $62b2: $58
    ld e, b                                       ; $62b3: $58

jr_007_62b4:
    ld b, h                                       ; $62b4: $44
    ld b, h                                       ; $62b5: $44
    ld c, b                                       ; $62b6: $48
    ld c, b                                       ; $62b7: $48
    ld d, b                                       ; $62b8: $50
    ld d, b                                       ; $62b9: $50
    ld e, h                                       ; $62ba: $5c
    ld e, h                                       ; $62bb: $5c
    nop                                           ; $62bc: $00
    nop                                           ; $62bd: $00
    nop                                           ; $62be: $00
    nop                                           ; $62bf: $00

jr_007_62c0:
    nop                                           ; $62c0: $00
    nop                                           ; $62c1: $00
    ld e, b                                       ; $62c2: $58
    ld e, b                                       ; $62c3: $58
    ld b, h                                       ; $62c4: $44
    ld b, h                                       ; $62c5: $44
    ld e, b                                       ; $62c6: $58
    ld e, b                                       ; $62c7: $58
    ld b, h                                       ; $62c8: $44
    ld b, h                                       ; $62c9: $44
    ld e, b                                       ; $62ca: $58
    ld e, b                                       ; $62cb: $58
    nop                                           ; $62cc: $00
    nop                                           ; $62cd: $00
    nop                                           ; $62ce: $00
    nop                                           ; $62cf: $00
    nop                                           ; $62d0: $00
    nop                                           ; $62d1: $00
    ld d, h                                       ; $62d2: $54
    ld d, h                                       ; $62d3: $54
    ld d, h                                       ; $62d4: $54
    ld d, h                                       ; $62d5: $54
    ld d, h                                       ; $62d6: $54
    ld d, h                                       ; $62d7: $54
    ld e, h                                       ; $62d8: $5c
    ld e, h                                       ; $62d9: $5c
    ld b, h                                       ; $62da: $44
    ld b, h                                       ; $62db: $44
    nop                                           ; $62dc: $00
    nop                                           ; $62dd: $00
    nop                                           ; $62de: $00
    nop                                           ; $62df: $00
    nop                                           ; $62e0: $00
    nop                                           ; $62e1: $00
    ld e, h                                       ; $62e2: $5c
    ld e, h                                       ; $62e3: $5c
    ld d, b                                       ; $62e4: $50
    ld d, b                                       ; $62e5: $50
    ld e, b                                       ; $62e6: $58
    ld e, b                                       ; $62e7: $58
    ld b, h                                       ; $62e8: $44
    ld b, h                                       ; $62e9: $44
    ld e, b                                       ; $62ea: $58
    ld e, b                                       ; $62eb: $58
    nop                                           ; $62ec: $00
    nop                                           ; $62ed: $00
    nop                                           ; $62ee: $00
    nop                                           ; $62ef: $00
    nop                                           ; $62f0: $00
    nop                                           ; $62f1: $00
    jr nc, jr_007_6324                            ; $62f2: $30 $30

    ld c, b                                       ; $62f4: $48
    ld c, b                                       ; $62f5: $48
    ld c, b                                       ; $62f6: $48
    ld c, b                                       ; $62f7: $48
    ld c, b                                       ; $62f8: $48
    ld c, b                                       ; $62f9: $48
    jr nc, jr_007_632c                            ; $62fa: $30 $30

    nop                                           ; $62fc: $00
    nop                                           ; $62fd: $00
    nop                                           ; $62fe: $00
    nop                                           ; $62ff: $00
    rst $38                                       ; $6300: $ff
    rst $38                                       ; $6301: $ff
    rst $38                                       ; $6302: $ff
    add b                                         ; $6303: $80
    adc $9e                                       ; $6304: $ce $9e
    ret nc                                        ; $6306: $d0

    sub b                                         ; $6307: $90
    sub $96                                       ; $6308: $d6 $96
    jp nc, $cc92                                  ; $630a: $d2 $92 $cc

    sbc [hl]                                      ; $630d: $9e
    ret nz                                        ; $630e: $c0

    add b                                         ; $630f: $80
    rst $38                                       ; $6310: $ff
    rst $38                                       ; $6311: $ff
    rst $38                                       ; $6312: $ff
    nop                                           ; $6313: $00
    ld h, h                                       ; $6314: $64
    or $96                                        ; $6315: $f6 $96
    sub a                                         ; $6317: $97
    push af                                       ; $6318: $f5
    push af                                       ; $6319: $f5
    sub h                                         ; $631a: $94
    sub h                                         ; $631b: $94
    sub h                                         ; $631c: $94
    sub h                                         ; $631d: $94
    nop                                           ; $631e: $00
    nop                                           ; $631f: $00
    rst $38                                       ; $6320: $ff
    rst $38                                       ; $6321: $ff
    rst $38                                       ; $6322: $ff
    nop                                           ; $6323: $00

jr_007_6324:
    ld e, [hl]                                    ; $6324: $5e
    sbc $d0                                       ; $6325: $de $d0
    ret nc                                        ; $6327: $d0

    ld e, h                                       ; $6328: $5c
    ld e, h                                       ; $6329: $5c
    ld d, b                                       ; $632a: $50
    ld d, b                                       ; $632b: $50

jr_007_632c:
    ld e, [hl]                                    ; $632c: $5e
    ld e, [hl]                                    ; $632d: $5e
    nop                                           ; $632e: $00
    nop                                           ; $632f: $00
    rst $38                                       ; $6330: $ff
    ldh [rIE], a                                  ; $6331: $e0 $ff
    jr nz, jr_007_6374                            ; $6333: $20 $3f

    ld h, b                                       ; $6335: $60
    ccf                                           ; $6336: $3f
    ld h, b                                       ; $6337: $60
    ccf                                           ; $6338: $3f
    ld h, b                                       ; $6339: $60
    ccf                                           ; $633a: $3f
    ld h, b                                       ; $633b: $60
    ccf                                           ; $633c: $3f
    ld h, b                                       ; $633d: $60
    ccf                                           ; $633e: $3f
    ld h, b                                       ; $633f: $60
    nop                                           ; $6340: $00
    nop                                           ; $6341: $00
    nop                                           ; $6342: $00
    nop                                           ; $6343: $00
    nop                                           ; $6344: $00
    nop                                           ; $6345: $00
    nop                                           ; $6346: $00
    nop                                           ; $6347: $00
    nop                                           ; $6348: $00
    nop                                           ; $6349: $00
    nop                                           ; $634a: $00
    nop                                           ; $634b: $00
    nop                                           ; $634c: $00
    ld bc, $0200                                  ; $634d: $01 $00 $02
    nop                                           ; $6350: $00
    nop                                           ; $6351: $00
    nop                                           ; $6352: $00
    nop                                           ; $6353: $00
    nop                                           ; $6354: $00
    nop                                           ; $6355: $00
    nop                                           ; $6356: $00
    nop                                           ; $6357: $00
    nop                                           ; $6358: $00
    nop                                           ; $6359: $00
    nop                                           ; $635a: $00
    nop                                           ; $635b: $00
    nop                                           ; $635c: $00
    rst $38                                       ; $635d: $ff
    nop                                           ; $635e: $00
    nop                                           ; $635f: $00
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
    ld hl, sp+$00                                 ; $636d: $f8 $00
    inc b                                         ; $636f: $04
    rlca                                          ; $6370: $07
    nop                                           ; $6371: $00
    rlca                                          ; $6372: $07
    nop                                           ; $6373: $00

jr_007_6374:
    rlca                                          ; $6374: $07
    nop                                           ; $6375: $00
    rlca                                          ; $6376: $07
    nop                                           ; $6377: $00
    rlca                                          ; $6378: $07
    nop                                           ; $6379: $00
    rlca                                          ; $637a: $07
    nop                                           ; $637b: $00
    rlca                                          ; $637c: $07
    nop                                           ; $637d: $00
    rlca                                          ; $637e: $07
    nop                                           ; $637f: $00
    rst $38                                       ; $6380: $ff
    nop                                           ; $6381: $00
    rst $38                                       ; $6382: $ff
    nop                                           ; $6383: $00
    rst $38                                       ; $6384: $ff
    nop                                           ; $6385: $00
    rst $38                                       ; $6386: $ff
    nop                                           ; $6387: $00
    rst $38                                       ; $6388: $ff
    nop                                           ; $6389: $00
    rst $38                                       ; $638a: $ff
    nop                                           ; $638b: $00
    rst $38                                       ; $638c: $ff
    nop                                           ; $638d: $00
    rst $38                                       ; $638e: $ff
    nop                                           ; $638f: $00
    rst $38                                       ; $6390: $ff
    nop                                           ; $6391: $00
    rst $38                                       ; $6392: $ff
    nop                                           ; $6393: $00
    rst $38                                       ; $6394: $ff
    nop                                           ; $6395: $00
    rst $38                                       ; $6396: $ff
    nop                                           ; $6397: $00
    rst $38                                       ; $6398: $ff
    nop                                           ; $6399: $00
    rst $38                                       ; $639a: $ff
    nop                                           ; $639b: $00
    rst $38                                       ; $639c: $ff
    nop                                           ; $639d: $00
    rst $38                                       ; $639e: $ff
    nop                                           ; $639f: $00
    rst $38                                       ; $63a0: $ff
    nop                                           ; $63a1: $00
    rst $38                                       ; $63a2: $ff
    nop                                           ; $63a3: $00
    rst $38                                       ; $63a4: $ff
    nop                                           ; $63a5: $00
    rst $38                                       ; $63a6: $ff
    nop                                           ; $63a7: $00
    rst $38                                       ; $63a8: $ff
    nop                                           ; $63a9: $00
    rst $38                                       ; $63aa: $ff
    nop                                           ; $63ab: $00
    rst $38                                       ; $63ac: $ff
    nop                                           ; $63ad: $00
    rst $38                                       ; $63ae: $ff
    nop                                           ; $63af: $00
    rst $38                                       ; $63b0: $ff
    nop                                           ; $63b1: $00
    rst $38                                       ; $63b2: $ff
    nop                                           ; $63b3: $00
    rst $38                                       ; $63b4: $ff
    nop                                           ; $63b5: $00
    rst $38                                       ; $63b6: $ff
    nop                                           ; $63b7: $00
    rst $38                                       ; $63b8: $ff
    nop                                           ; $63b9: $00
    rst $38                                       ; $63ba: $ff
    nop                                           ; $63bb: $00
    rst $38                                       ; $63bc: $ff
    nop                                           ; $63bd: $00
    rst $38                                       ; $63be: $ff
    nop                                           ; $63bf: $00
    rst $38                                       ; $63c0: $ff
    nop                                           ; $63c1: $00
    rst $38                                       ; $63c2: $ff
    nop                                           ; $63c3: $00
    rst $38                                       ; $63c4: $ff
    nop                                           ; $63c5: $00
    rst $38                                       ; $63c6: $ff
    nop                                           ; $63c7: $00
    rst $38                                       ; $63c8: $ff
    nop                                           ; $63c9: $00
    rst $38                                       ; $63ca: $ff
    nop                                           ; $63cb: $00
    rst $38                                       ; $63cc: $ff
    nop                                           ; $63cd: $00
    rst $38                                       ; $63ce: $ff
    nop                                           ; $63cf: $00
    rst $38                                       ; $63d0: $ff
    nop                                           ; $63d1: $00
    rst $38                                       ; $63d2: $ff
    nop                                           ; $63d3: $00
    rst $38                                       ; $63d4: $ff
    nop                                           ; $63d5: $00
    rst $38                                       ; $63d6: $ff
    nop                                           ; $63d7: $00
    rst $38                                       ; $63d8: $ff
    nop                                           ; $63d9: $00
    rst $38                                       ; $63da: $ff
    nop                                           ; $63db: $00
    rst $38                                       ; $63dc: $ff
    nop                                           ; $63dd: $00
    rst $38                                       ; $63de: $ff
    nop                                           ; $63df: $00
    rst $38                                       ; $63e0: $ff
    nop                                           ; $63e1: $00
    rst $38                                       ; $63e2: $ff
    nop                                           ; $63e3: $00
    rst $38                                       ; $63e4: $ff
    nop                                           ; $63e5: $00
    rst $38                                       ; $63e6: $ff
    nop                                           ; $63e7: $00
    rst $38                                       ; $63e8: $ff
    nop                                           ; $63e9: $00
    rst $38                                       ; $63ea: $ff
    nop                                           ; $63eb: $00
    rst $38                                       ; $63ec: $ff
    nop                                           ; $63ed: $00
    rst $38                                       ; $63ee: $ff
    nop                                           ; $63ef: $00
    rst $38                                       ; $63f0: $ff
    nop                                           ; $63f1: $00
    rst $38                                       ; $63f2: $ff
    nop                                           ; $63f3: $00
    rst $38                                       ; $63f4: $ff
    nop                                           ; $63f5: $00
    rst $38                                       ; $63f6: $ff
    nop                                           ; $63f7: $00
    rst $38                                       ; $63f8: $ff
    nop                                           ; $63f9: $00
    rst $38                                       ; $63fa: $ff
    nop                                           ; $63fb: $00
    rst $38                                       ; $63fc: $ff
    nop                                           ; $63fd: $00
    rst $38                                       ; $63fe: $ff
    nop                                           ; $63ff: $00
    call z, $d29e                                 ; $6400: $cc $9e $d2
    sub d                                         ; $6403: $92
    jp nc, $d292                                  ; $6404: $d2 $92 $d2

    sub d                                         ; $6407: $92
    call z, $c09e                                 ; $6408: $cc $9e $c0
    add b                                         ; $640b: $80
    add b                                         ; $640c: $80
    cp a                                          ; $640d: $bf
    rst $38                                       ; $640e: $ff
    rst $38                                       ; $640f: $ff
    adc e                                         ; $6410: $8b
    adc e                                         ; $6411: $8b
    adc d                                         ; $6412: $8a
    adc d                                         ; $6413: $8a
    adc e                                         ; $6414: $8b
    adc e                                         ; $6415: $8b
    ld d, d                                       ; $6416: $52
    jp c, Jump_007_7323                           ; $6417: $da $23 $73

    nop                                           ; $641a: $00
    nop                                           ; $641b: $00
    nop                                           ; $641c: $00
    rst $38                                       ; $641d: $ff
    rst $38                                       ; $641e: $ff
    rst $38                                       ; $641f: $ff
    call c, Call_000_12de                         ; $6420: $dc $de $12
    ld [de], a                                    ; $6423: $12
    sbc h                                         ; $6424: $9c
    sbc [hl]                                      ; $6425: $9e
    ld [de], a                                    ; $6426: $12
    ld [de], a                                    ; $6427: $12
    jp nc, $00d2                                  ; $6428: $d2 $d2 $00

    nop                                           ; $642b: $00
    nop                                           ; $642c: $00
    rst $38                                       ; $642d: $ff
    rst $38                                       ; $642e: $ff
    rst $38                                       ; $642f: $ff
    ccf                                           ; $6430: $3f
    ld h, b                                       ; $6431: $60
    ccf                                           ; $6432: $3f
    ld h, b                                       ; $6433: $60
    ccf                                           ; $6434: $3f
    ld h, b                                       ; $6435: $60
    ccf                                           ; $6436: $3f
    ld h, b                                       ; $6437: $60
    ccf                                           ; $6438: $3f
    ld h, b                                       ; $6439: $60
    ccf                                           ; $643a: $3f
    ld h, b                                       ; $643b: $60
    ccf                                           ; $643c: $3f
    ldh [rIE], a                                  ; $643d: $e0 $ff
    ldh [rP1], a                                  ; $643f: $e0 $00
    ld [bc], a                                    ; $6441: $02
    nop                                           ; $6442: $00
    ld [bc], a                                    ; $6443: $02
    nop                                           ; $6444: $00
    ld [bc], a                                    ; $6445: $02
    nop                                           ; $6446: $00
    ld [bc], a                                    ; $6447: $02
    nop                                           ; $6448: $00
    ld [bc], a                                    ; $6449: $02
    nop                                           ; $644a: $00
    ld [bc], a                                    ; $644b: $02
    nop                                           ; $644c: $00
    ld [bc], a                                    ; $644d: $02
    nop                                           ; $644e: $00
    ld [bc], a                                    ; $644f: $02
    rst $38                                       ; $6450: $ff
    nop                                           ; $6451: $00
    rst $38                                       ; $6452: $ff
    nop                                           ; $6453: $00
    rst $38                                       ; $6454: $ff
    nop                                           ; $6455: $00
    rst $38                                       ; $6456: $ff
    nop                                           ; $6457: $00
    rst $38                                       ; $6458: $ff
    nop                                           ; $6459: $00
    rst $38                                       ; $645a: $ff
    nop                                           ; $645b: $00
    rst $38                                       ; $645c: $ff
    nop                                           ; $645d: $00
    rst $38                                       ; $645e: $ff
    nop                                           ; $645f: $00
    ldh a, [rDIV]                                 ; $6460: $f0 $04
    ldh a, [rDIV]                                 ; $6462: $f0 $04
    ldh a, [rDIV]                                 ; $6464: $f0 $04
    ldh a, [rDIV]                                 ; $6466: $f0 $04
    ldh a, [rDIV]                                 ; $6468: $f0 $04
    ldh a, [rDIV]                                 ; $646a: $f0 $04
    ldh a, [rDIV]                                 ; $646c: $f0 $04
    ldh a, [rDIV]                                 ; $646e: $f0 $04
    rlca                                          ; $6470: $07
    nop                                           ; $6471: $00
    rlca                                          ; $6472: $07
    nop                                           ; $6473: $00
    rlca                                          ; $6474: $07
    nop                                           ; $6475: $00
    rlca                                          ; $6476: $07
    nop                                           ; $6477: $00
    rlca                                          ; $6478: $07
    nop                                           ; $6479: $00
    rlca                                          ; $647a: $07
    nop                                           ; $647b: $00
    rlca                                          ; $647c: $07
    nop                                           ; $647d: $00
    rlca                                          ; $647e: $07
    nop                                           ; $647f: $00
    rst $38                                       ; $6480: $ff
    nop                                           ; $6481: $00
    rst $38                                       ; $6482: $ff
    nop                                           ; $6483: $00
    rst $38                                       ; $6484: $ff
    nop                                           ; $6485: $00
    rst $38                                       ; $6486: $ff
    nop                                           ; $6487: $00
    rst $38                                       ; $6488: $ff
    nop                                           ; $6489: $00
    rst $38                                       ; $648a: $ff
    nop                                           ; $648b: $00
    rst $38                                       ; $648c: $ff
    nop                                           ; $648d: $00
    rst $38                                       ; $648e: $ff
    nop                                           ; $648f: $00
    rst $38                                       ; $6490: $ff
    nop                                           ; $6491: $00
    rst $38                                       ; $6492: $ff
    nop                                           ; $6493: $00
    rst $38                                       ; $6494: $ff
    nop                                           ; $6495: $00
    rst $38                                       ; $6496: $ff
    nop                                           ; $6497: $00
    rst $38                                       ; $6498: $ff
    nop                                           ; $6499: $00
    rst $38                                       ; $649a: $ff
    nop                                           ; $649b: $00
    rst $38                                       ; $649c: $ff
    nop                                           ; $649d: $00
    rst $38                                       ; $649e: $ff
    nop                                           ; $649f: $00
    rst $38                                       ; $64a0: $ff
    nop                                           ; $64a1: $00
    rst $38                                       ; $64a2: $ff
    nop                                           ; $64a3: $00
    rst $38                                       ; $64a4: $ff
    nop                                           ; $64a5: $00
    rst $38                                       ; $64a6: $ff
    nop                                           ; $64a7: $00
    rst $38                                       ; $64a8: $ff
    nop                                           ; $64a9: $00
    rst $38                                       ; $64aa: $ff
    nop                                           ; $64ab: $00
    rst $38                                       ; $64ac: $ff
    nop                                           ; $64ad: $00
    rst $38                                       ; $64ae: $ff
    nop                                           ; $64af: $00
    rst $38                                       ; $64b0: $ff
    nop                                           ; $64b1: $00
    rst $38                                       ; $64b2: $ff
    nop                                           ; $64b3: $00
    rst $38                                       ; $64b4: $ff
    nop                                           ; $64b5: $00
    rst $38                                       ; $64b6: $ff
    nop                                           ; $64b7: $00
    rst $38                                       ; $64b8: $ff
    nop                                           ; $64b9: $00
    rst $38                                       ; $64ba: $ff
    nop                                           ; $64bb: $00
    rst $38                                       ; $64bc: $ff
    nop                                           ; $64bd: $00
    rst $38                                       ; $64be: $ff
    nop                                           ; $64bf: $00
    rst $38                                       ; $64c0: $ff
    nop                                           ; $64c1: $00
    rst $38                                       ; $64c2: $ff
    nop                                           ; $64c3: $00
    rst $38                                       ; $64c4: $ff
    nop                                           ; $64c5: $00
    rst $38                                       ; $64c6: $ff
    nop                                           ; $64c7: $00
    rst $38                                       ; $64c8: $ff
    nop                                           ; $64c9: $00
    rst $38                                       ; $64ca: $ff
    nop                                           ; $64cb: $00
    rst $38                                       ; $64cc: $ff
    nop                                           ; $64cd: $00
    rst $38                                       ; $64ce: $ff
    nop                                           ; $64cf: $00
    rst $38                                       ; $64d0: $ff
    nop                                           ; $64d1: $00
    rst $38                                       ; $64d2: $ff
    nop                                           ; $64d3: $00
    rst $38                                       ; $64d4: $ff
    nop                                           ; $64d5: $00
    rst $38                                       ; $64d6: $ff
    nop                                           ; $64d7: $00
    rst $38                                       ; $64d8: $ff
    nop                                           ; $64d9: $00
    rst $38                                       ; $64da: $ff
    nop                                           ; $64db: $00
    rst $38                                       ; $64dc: $ff
    nop                                           ; $64dd: $00
    rst $38                                       ; $64de: $ff
    nop                                           ; $64df: $00
    rst $38                                       ; $64e0: $ff
    nop                                           ; $64e1: $00
    rst $38                                       ; $64e2: $ff
    nop                                           ; $64e3: $00
    rst $38                                       ; $64e4: $ff
    nop                                           ; $64e5: $00
    rst $38                                       ; $64e6: $ff
    nop                                           ; $64e7: $00
    rst $38                                       ; $64e8: $ff
    nop                                           ; $64e9: $00
    rst $38                                       ; $64ea: $ff
    nop                                           ; $64eb: $00
    rst $38                                       ; $64ec: $ff
    nop                                           ; $64ed: $00
    rst $38                                       ; $64ee: $ff
    nop                                           ; $64ef: $00
    rst $38                                       ; $64f0: $ff
    nop                                           ; $64f1: $00
    rst $38                                       ; $64f2: $ff
    nop                                           ; $64f3: $00
    rst $38                                       ; $64f4: $ff
    nop                                           ; $64f5: $00
    rst $38                                       ; $64f6: $ff
    nop                                           ; $64f7: $00
    rst $38                                       ; $64f8: $ff
    nop                                           ; $64f9: $00
    rst $38                                       ; $64fa: $ff
    nop                                           ; $64fb: $00
    rst $38                                       ; $64fc: $ff
    nop                                           ; $64fd: $00
    rst $38                                       ; $64fe: $ff
    nop                                           ; $64ff: $00
    rst $38                                       ; $6500: $ff
    nop                                           ; $6501: $00
    rst $38                                       ; $6502: $ff
    nop                                           ; $6503: $00
    rst $38                                       ; $6504: $ff
    nop                                           ; $6505: $00
    rst $38                                       ; $6506: $ff
    nop                                           ; $6507: $00
    rst $38                                       ; $6508: $ff
    nop                                           ; $6509: $00
    rst $38                                       ; $650a: $ff
    nop                                           ; $650b: $00
    rst $38                                       ; $650c: $ff
    nop                                           ; $650d: $00
    rst $38                                       ; $650e: $ff
    nop                                           ; $650f: $00
    rst $38                                       ; $6510: $ff
    nop                                           ; $6511: $00
    rst $38                                       ; $6512: $ff
    nop                                           ; $6513: $00
    rst $38                                       ; $6514: $ff
    nop                                           ; $6515: $00
    rst $38                                       ; $6516: $ff
    nop                                           ; $6517: $00
    rst $38                                       ; $6518: $ff
    nop                                           ; $6519: $00
    rst $38                                       ; $651a: $ff
    nop                                           ; $651b: $00
    rst $38                                       ; $651c: $ff
    nop                                           ; $651d: $00
    rst $38                                       ; $651e: $ff
    nop                                           ; $651f: $00
    rst $38                                       ; $6520: $ff
    nop                                           ; $6521: $00
    rst $38                                       ; $6522: $ff
    nop                                           ; $6523: $00
    rst $38                                       ; $6524: $ff
    nop                                           ; $6525: $00
    rst $38                                       ; $6526: $ff
    nop                                           ; $6527: $00
    rst $38                                       ; $6528: $ff
    nop                                           ; $6529: $00
    rst $38                                       ; $652a: $ff
    nop                                           ; $652b: $00
    rst $38                                       ; $652c: $ff
    nop                                           ; $652d: $00
    rst $38                                       ; $652e: $ff
    nop                                           ; $652f: $00
    rst $38                                       ; $6530: $ff
    nop                                           ; $6531: $00
    rst $38                                       ; $6532: $ff
    nop                                           ; $6533: $00
    rst $38                                       ; $6534: $ff
    nop                                           ; $6535: $00
    rst $38                                       ; $6536: $ff
    nop                                           ; $6537: $00
    rst $38                                       ; $6538: $ff
    nop                                           ; $6539: $00
    rst $38                                       ; $653a: $ff
    nop                                           ; $653b: $00
    rst $38                                       ; $653c: $ff
    nop                                           ; $653d: $00
    rst $38                                       ; $653e: $ff
    nop                                           ; $653f: $00
    nop                                           ; $6540: $00
    ld [bc], a                                    ; $6541: $02
    nop                                           ; $6542: $00
    ld [bc], a                                    ; $6543: $02
    nop                                           ; $6544: $00
    ld [bc], a                                    ; $6545: $02
    nop                                           ; $6546: $00
    ld [bc], a                                    ; $6547: $02
    nop                                           ; $6548: $00
    ld [bc], a                                    ; $6549: $02
    nop                                           ; $654a: $00
    ld bc, $0000                                  ; $654b: $01 $00 $00
    nop                                           ; $654e: $00
    nop                                           ; $654f: $00
    rst $38                                       ; $6550: $ff
    nop                                           ; $6551: $00
    rst $38                                       ; $6552: $ff
    nop                                           ; $6553: $00
    rst $38                                       ; $6554: $ff
    nop                                           ; $6555: $00
    rst $38                                       ; $6556: $ff
    nop                                           ; $6557: $00
    nop                                           ; $6558: $00
    nop                                           ; $6559: $00
    nop                                           ; $655a: $00
    rst $38                                       ; $655b: $ff
    nop                                           ; $655c: $00
    nop                                           ; $655d: $00
    nop                                           ; $655e: $00
    nop                                           ; $655f: $00
    ldh a, [rDIV]                                 ; $6560: $f0 $04
    ldh a, [rDIV]                                 ; $6562: $f0 $04
    ldh a, [rDIV]                                 ; $6564: $f0 $04
    ldh a, [rDIV]                                 ; $6566: $f0 $04
    nop                                           ; $6568: $00
    inc b                                         ; $6569: $04
    nop                                           ; $656a: $00
    ld hl, sp+$00                                 ; $656b: $f8 $00
    nop                                           ; $656d: $00
    nop                                           ; $656e: $00
    nop                                           ; $656f: $00
    rlca                                          ; $6570: $07
    nop                                           ; $6571: $00
    rlca                                          ; $6572: $07
    nop                                           ; $6573: $00
    rlca                                          ; $6574: $07
    nop                                           ; $6575: $00
    rlca                                          ; $6576: $07
    nop                                           ; $6577: $00
    rlca                                          ; $6578: $07
    nop                                           ; $6579: $00
    rlca                                          ; $657a: $07
    nop                                           ; $657b: $00
    rlca                                          ; $657c: $07
    nop                                           ; $657d: $00
    rlca                                          ; $657e: $07
    nop                                           ; $657f: $00
    rst $38                                       ; $6580: $ff
    nop                                           ; $6581: $00
    rst $38                                       ; $6582: $ff
    nop                                           ; $6583: $00
    rst $38                                       ; $6584: $ff
    nop                                           ; $6585: $00
    rst $38                                       ; $6586: $ff
    nop                                           ; $6587: $00
    rst $38                                       ; $6588: $ff
    nop                                           ; $6589: $00
    rst $38                                       ; $658a: $ff
    nop                                           ; $658b: $00
    rst $38                                       ; $658c: $ff
    nop                                           ; $658d: $00
    rst $38                                       ; $658e: $ff
    nop                                           ; $658f: $00
    rst $38                                       ; $6590: $ff
    nop                                           ; $6591: $00
    rst $38                                       ; $6592: $ff
    nop                                           ; $6593: $00
    rst $38                                       ; $6594: $ff
    nop                                           ; $6595: $00
    rst $38                                       ; $6596: $ff
    nop                                           ; $6597: $00
    rst $38                                       ; $6598: $ff
    nop                                           ; $6599: $00
    rst $38                                       ; $659a: $ff
    nop                                           ; $659b: $00
    rst $38                                       ; $659c: $ff
    nop                                           ; $659d: $00
    rst $38                                       ; $659e: $ff
    nop                                           ; $659f: $00
    rst $38                                       ; $65a0: $ff
    nop                                           ; $65a1: $00
    rst $38                                       ; $65a2: $ff
    nop                                           ; $65a3: $00
    rst $38                                       ; $65a4: $ff
    nop                                           ; $65a5: $00
    rst $38                                       ; $65a6: $ff
    nop                                           ; $65a7: $00
    rst $38                                       ; $65a8: $ff
    nop                                           ; $65a9: $00
    rst $38                                       ; $65aa: $ff
    nop                                           ; $65ab: $00
    rst $38                                       ; $65ac: $ff
    nop                                           ; $65ad: $00
    rst $38                                       ; $65ae: $ff
    nop                                           ; $65af: $00
    rst $38                                       ; $65b0: $ff
    nop                                           ; $65b1: $00
    rst $38                                       ; $65b2: $ff
    nop                                           ; $65b3: $00
    rst $38                                       ; $65b4: $ff
    nop                                           ; $65b5: $00
    rst $38                                       ; $65b6: $ff
    nop                                           ; $65b7: $00
    rst $38                                       ; $65b8: $ff
    nop                                           ; $65b9: $00
    rst $38                                       ; $65ba: $ff
    nop                                           ; $65bb: $00
    rst $38                                       ; $65bc: $ff
    nop                                           ; $65bd: $00
    rst $38                                       ; $65be: $ff
    nop                                           ; $65bf: $00
    rst $38                                       ; $65c0: $ff
    nop                                           ; $65c1: $00
    rst $38                                       ; $65c2: $ff
    nop                                           ; $65c3: $00
    rst $38                                       ; $65c4: $ff
    nop                                           ; $65c5: $00
    rst $38                                       ; $65c6: $ff
    nop                                           ; $65c7: $00
    rst $38                                       ; $65c8: $ff
    nop                                           ; $65c9: $00
    rst $38                                       ; $65ca: $ff
    nop                                           ; $65cb: $00
    rst $38                                       ; $65cc: $ff
    nop                                           ; $65cd: $00
    rst $38                                       ; $65ce: $ff
    nop                                           ; $65cf: $00
    rst $38                                       ; $65d0: $ff
    nop                                           ; $65d1: $00
    rst $38                                       ; $65d2: $ff
    nop                                           ; $65d3: $00
    rst $38                                       ; $65d4: $ff
    nop                                           ; $65d5: $00
    rst $38                                       ; $65d6: $ff
    nop                                           ; $65d7: $00
    rst $38                                       ; $65d8: $ff
    nop                                           ; $65d9: $00
    rst $38                                       ; $65da: $ff
    nop                                           ; $65db: $00
    rst $38                                       ; $65dc: $ff
    nop                                           ; $65dd: $00
    rst $38                                       ; $65de: $ff
    nop                                           ; $65df: $00
    rst $38                                       ; $65e0: $ff
    nop                                           ; $65e1: $00
    rst $38                                       ; $65e2: $ff
    nop                                           ; $65e3: $00
    rst $38                                       ; $65e4: $ff
    nop                                           ; $65e5: $00
    rst $38                                       ; $65e6: $ff
    nop                                           ; $65e7: $00
    rst $38                                       ; $65e8: $ff
    nop                                           ; $65e9: $00
    rst $38                                       ; $65ea: $ff
    nop                                           ; $65eb: $00
    rst $38                                       ; $65ec: $ff
    nop                                           ; $65ed: $00
    rst $38                                       ; $65ee: $ff
    nop                                           ; $65ef: $00
    rst $38                                       ; $65f0: $ff
    nop                                           ; $65f1: $00
    rst $38                                       ; $65f2: $ff
    nop                                           ; $65f3: $00
    rst $38                                       ; $65f4: $ff
    nop                                           ; $65f5: $00
    rst $38                                       ; $65f6: $ff
    nop                                           ; $65f7: $00
    rst $38                                       ; $65f8: $ff
    nop                                           ; $65f9: $00
    rst $38                                       ; $65fa: $ff
    nop                                           ; $65fb: $00
    rst $38                                       ; $65fc: $ff
    nop                                           ; $65fd: $00
    rst $38                                       ; $65fe: $ff
    nop                                           ; $65ff: $00
    rst $38                                       ; $6600: $ff
    nop                                           ; $6601: $00
    rst $38                                       ; $6602: $ff
    nop                                           ; $6603: $00
    rst $38                                       ; $6604: $ff
    nop                                           ; $6605: $00
    rst $38                                       ; $6606: $ff
    nop                                           ; $6607: $00
    rst $38                                       ; $6608: $ff
    nop                                           ; $6609: $00
    rst $38                                       ; $660a: $ff
    nop                                           ; $660b: $00
    rst $38                                       ; $660c: $ff
    nop                                           ; $660d: $00
    rst $38                                       ; $660e: $ff
    nop                                           ; $660f: $00
    rst $38                                       ; $6610: $ff
    nop                                           ; $6611: $00
    rst $38                                       ; $6612: $ff
    nop                                           ; $6613: $00
    rst $38                                       ; $6614: $ff
    nop                                           ; $6615: $00
    rst $38                                       ; $6616: $ff
    nop                                           ; $6617: $00
    rst $38                                       ; $6618: $ff
    nop                                           ; $6619: $00
    rst $38                                       ; $661a: $ff
    nop                                           ; $661b: $00
    rst $38                                       ; $661c: $ff
    nop                                           ; $661d: $00
    rst $38                                       ; $661e: $ff
    nop                                           ; $661f: $00
    rst $38                                       ; $6620: $ff
    nop                                           ; $6621: $00
    rst $38                                       ; $6622: $ff
    nop                                           ; $6623: $00
    rst $38                                       ; $6624: $ff
    nop                                           ; $6625: $00
    rst $38                                       ; $6626: $ff
    nop                                           ; $6627: $00
    rst $38                                       ; $6628: $ff
    nop                                           ; $6629: $00
    rst $38                                       ; $662a: $ff
    nop                                           ; $662b: $00
    rst $38                                       ; $662c: $ff
    nop                                           ; $662d: $00
    rst $38                                       ; $662e: $ff
    nop                                           ; $662f: $00
    rst $38                                       ; $6630: $ff
    nop                                           ; $6631: $00
    rst $38                                       ; $6632: $ff
    nop                                           ; $6633: $00
    rst $38                                       ; $6634: $ff
    nop                                           ; $6635: $00
    rst $38                                       ; $6636: $ff
    nop                                           ; $6637: $00
    rst $38                                       ; $6638: $ff
    nop                                           ; $6639: $00
    rst $38                                       ; $663a: $ff
    nop                                           ; $663b: $00
    rst $38                                       ; $663c: $ff
    nop                                           ; $663d: $00
    rst $38                                       ; $663e: $ff
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
    rst $38                                       ; $664a: $ff
    nop                                           ; $664b: $00
    rst $38                                       ; $664c: $ff
    nop                                           ; $664d: $00
    rst $38                                       ; $664e: $ff
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
    rst $38                                       ; $665a: $ff
    nop                                           ; $665b: $00
    rst $38                                       ; $665c: $ff
    nop                                           ; $665d: $00
    rst $38                                       ; $665e: $ff
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
    rst $38                                       ; $666a: $ff
    nop                                           ; $666b: $00
    rst $38                                       ; $666c: $ff
    nop                                           ; $666d: $00
    rst $38                                       ; $666e: $ff
    nop                                           ; $666f: $00
    rlca                                          ; $6670: $07
    nop                                           ; $6671: $00
    rlca                                          ; $6672: $07
    nop                                           ; $6673: $00
    rlca                                          ; $6674: $07
    nop                                           ; $6675: $00
    rlca                                          ; $6676: $07
    nop                                           ; $6677: $00
    rlca                                          ; $6678: $07
    nop                                           ; $6679: $00
    rst $38                                       ; $667a: $ff
    nop                                           ; $667b: $00
    rst $38                                       ; $667c: $ff
    nop                                           ; $667d: $00
    rst $38                                       ; $667e: $ff
    nop                                           ; $667f: $00
    rst $38                                       ; $6680: $ff
    nop                                           ; $6681: $00
    rst $38                                       ; $6682: $ff
    nop                                           ; $6683: $00
    rst $38                                       ; $6684: $ff
    nop                                           ; $6685: $00
    rst $38                                       ; $6686: $ff
    nop                                           ; $6687: $00
    rst $38                                       ; $6688: $ff
    nop                                           ; $6689: $00
    rst $38                                       ; $668a: $ff
    nop                                           ; $668b: $00
    rst $38                                       ; $668c: $ff
    nop                                           ; $668d: $00
    rst $38                                       ; $668e: $ff
    nop                                           ; $668f: $00
    rst $38                                       ; $6690: $ff
    nop                                           ; $6691: $00
    rst $38                                       ; $6692: $ff
    nop                                           ; $6693: $00
    rst $38                                       ; $6694: $ff
    nop                                           ; $6695: $00
    rst $38                                       ; $6696: $ff
    nop                                           ; $6697: $00
    rst $38                                       ; $6698: $ff
    nop                                           ; $6699: $00
    rst $38                                       ; $669a: $ff
    nop                                           ; $669b: $00
    rst $38                                       ; $669c: $ff
    nop                                           ; $669d: $00
    rst $38                                       ; $669e: $ff
    nop                                           ; $669f: $00
    rst $38                                       ; $66a0: $ff
    nop                                           ; $66a1: $00
    rst $38                                       ; $66a2: $ff
    nop                                           ; $66a3: $00
    rst $38                                       ; $66a4: $ff
    nop                                           ; $66a5: $00
    rst $38                                       ; $66a6: $ff
    nop                                           ; $66a7: $00
    rst $38                                       ; $66a8: $ff
    nop                                           ; $66a9: $00
    rst $38                                       ; $66aa: $ff
    nop                                           ; $66ab: $00
    rst $38                                       ; $66ac: $ff
    nop                                           ; $66ad: $00
    rst $38                                       ; $66ae: $ff
    nop                                           ; $66af: $00
    rst $38                                       ; $66b0: $ff
    nop                                           ; $66b1: $00
    rst $38                                       ; $66b2: $ff
    nop                                           ; $66b3: $00
    rst $38                                       ; $66b4: $ff
    nop                                           ; $66b5: $00
    rst $38                                       ; $66b6: $ff
    nop                                           ; $66b7: $00
    rst $38                                       ; $66b8: $ff
    nop                                           ; $66b9: $00
    rst $38                                       ; $66ba: $ff
    nop                                           ; $66bb: $00
    rst $38                                       ; $66bc: $ff
    nop                                           ; $66bd: $00
    rst $38                                       ; $66be: $ff
    nop                                           ; $66bf: $00
    rst $38                                       ; $66c0: $ff
    nop                                           ; $66c1: $00
    rst $38                                       ; $66c2: $ff
    nop                                           ; $66c3: $00
    rst $38                                       ; $66c4: $ff
    nop                                           ; $66c5: $00
    rst $38                                       ; $66c6: $ff
    nop                                           ; $66c7: $00
    rst $38                                       ; $66c8: $ff
    nop                                           ; $66c9: $00
    rst $38                                       ; $66ca: $ff
    nop                                           ; $66cb: $00
    rst $38                                       ; $66cc: $ff
    nop                                           ; $66cd: $00
    rst $38                                       ; $66ce: $ff
    nop                                           ; $66cf: $00
    rst $38                                       ; $66d0: $ff
    nop                                           ; $66d1: $00
    rst $38                                       ; $66d2: $ff
    nop                                           ; $66d3: $00
    rst $38                                       ; $66d4: $ff
    nop                                           ; $66d5: $00
    rst $38                                       ; $66d6: $ff
    nop                                           ; $66d7: $00
    rst $38                                       ; $66d8: $ff
    nop                                           ; $66d9: $00
    rst $38                                       ; $66da: $ff
    nop                                           ; $66db: $00
    rst $38                                       ; $66dc: $ff
    nop                                           ; $66dd: $00
    rst $38                                       ; $66de: $ff
    nop                                           ; $66df: $00
    rst $38                                       ; $66e0: $ff
    nop                                           ; $66e1: $00
    rst $38                                       ; $66e2: $ff
    nop                                           ; $66e3: $00
    rst $38                                       ; $66e4: $ff
    nop                                           ; $66e5: $00
    rst $38                                       ; $66e6: $ff
    nop                                           ; $66e7: $00
    rst $38                                       ; $66e8: $ff
    nop                                           ; $66e9: $00
    rst $38                                       ; $66ea: $ff
    nop                                           ; $66eb: $00
    rst $38                                       ; $66ec: $ff
    nop                                           ; $66ed: $00
    rst $38                                       ; $66ee: $ff
    nop                                           ; $66ef: $00
    rst $38                                       ; $66f0: $ff
    nop                                           ; $66f1: $00
    rst $38                                       ; $66f2: $ff
    nop                                           ; $66f3: $00
    rst $38                                       ; $66f4: $ff
    nop                                           ; $66f5: $00
    rst $38                                       ; $66f6: $ff
    nop                                           ; $66f7: $00
    rst $38                                       ; $66f8: $ff
    nop                                           ; $66f9: $00
    rst $38                                       ; $66fa: $ff
    nop                                           ; $66fb: $00
    rst $38                                       ; $66fc: $ff
    nop                                           ; $66fd: $00
    rst $38                                       ; $66fe: $ff
    nop                                           ; $66ff: $00
    rst $38                                       ; $6700: $ff
    nop                                           ; $6701: $00
    rst $38                                       ; $6702: $ff
    nop                                           ; $6703: $00
    rst $38                                       ; $6704: $ff
    nop                                           ; $6705: $00
    rst $38                                       ; $6706: $ff
    nop                                           ; $6707: $00
    rst $38                                       ; $6708: $ff
    nop                                           ; $6709: $00
    rst $38                                       ; $670a: $ff
    nop                                           ; $670b: $00
    rst $38                                       ; $670c: $ff
    nop                                           ; $670d: $00
    rst $38                                       ; $670e: $ff
    nop                                           ; $670f: $00
    rst $38                                       ; $6710: $ff
    nop                                           ; $6711: $00
    rst $38                                       ; $6712: $ff
    nop                                           ; $6713: $00
    rst $38                                       ; $6714: $ff
    nop                                           ; $6715: $00
    rst $38                                       ; $6716: $ff
    nop                                           ; $6717: $00
    rst $38                                       ; $6718: $ff
    nop                                           ; $6719: $00
    rst $38                                       ; $671a: $ff
    nop                                           ; $671b: $00
    rst $38                                       ; $671c: $ff
    nop                                           ; $671d: $00
    rst $38                                       ; $671e: $ff
    nop                                           ; $671f: $00
    rst $38                                       ; $6720: $ff
    nop                                           ; $6721: $00
    rst $38                                       ; $6722: $ff
    nop                                           ; $6723: $00
    rst $38                                       ; $6724: $ff
    nop                                           ; $6725: $00
    rst $38                                       ; $6726: $ff
    nop                                           ; $6727: $00
    rst $38                                       ; $6728: $ff
    nop                                           ; $6729: $00
    rst $38                                       ; $672a: $ff
    nop                                           ; $672b: $00
    rst $38                                       ; $672c: $ff
    nop                                           ; $672d: $00
    rst $38                                       ; $672e: $ff
    nop                                           ; $672f: $00
    rst $38                                       ; $6730: $ff
    nop                                           ; $6731: $00
    rst $38                                       ; $6732: $ff
    nop                                           ; $6733: $00
    rst $38                                       ; $6734: $ff
    nop                                           ; $6735: $00
    rst $38                                       ; $6736: $ff
    nop                                           ; $6737: $00
    rst $38                                       ; $6738: $ff
    nop                                           ; $6739: $00
    rst $38                                       ; $673a: $ff
    nop                                           ; $673b: $00
    rst $38                                       ; $673c: $ff
    nop                                           ; $673d: $00
    rst $38                                       ; $673e: $ff
    nop                                           ; $673f: $00
    rst $38                                       ; $6740: $ff
    nop                                           ; $6741: $00
    rst $38                                       ; $6742: $ff
    nop                                           ; $6743: $00
    rst $38                                       ; $6744: $ff
    nop                                           ; $6745: $00
    rst $38                                       ; $6746: $ff
    nop                                           ; $6747: $00
    rst $38                                       ; $6748: $ff
    nop                                           ; $6749: $00
    rst $38                                       ; $674a: $ff
    nop                                           ; $674b: $00
    rst $38                                       ; $674c: $ff
    nop                                           ; $674d: $00
    rst $38                                       ; $674e: $ff
    nop                                           ; $674f: $00
    rst $38                                       ; $6750: $ff
    nop                                           ; $6751: $00
    rst $38                                       ; $6752: $ff
    nop                                           ; $6753: $00
    rst $38                                       ; $6754: $ff
    nop                                           ; $6755: $00
    rst $38                                       ; $6756: $ff
    nop                                           ; $6757: $00
    rst $38                                       ; $6758: $ff
    nop                                           ; $6759: $00
    rst $38                                       ; $675a: $ff
    nop                                           ; $675b: $00
    rst $38                                       ; $675c: $ff
    nop                                           ; $675d: $00
    rst $38                                       ; $675e: $ff
    nop                                           ; $675f: $00
    rst $38                                       ; $6760: $ff
    nop                                           ; $6761: $00
    rst $38                                       ; $6762: $ff
    nop                                           ; $6763: $00
    rst $38                                       ; $6764: $ff
    nop                                           ; $6765: $00
    rst $38                                       ; $6766: $ff
    nop                                           ; $6767: $00
    rst $38                                       ; $6768: $ff
    nop                                           ; $6769: $00
    rst $38                                       ; $676a: $ff
    nop                                           ; $676b: $00
    rst $38                                       ; $676c: $ff
    nop                                           ; $676d: $00
    rst $38                                       ; $676e: $ff
    nop                                           ; $676f: $00
    rst $38                                       ; $6770: $ff
    nop                                           ; $6771: $00
    rst $38                                       ; $6772: $ff
    nop                                           ; $6773: $00
    rst $38                                       ; $6774: $ff
    nop                                           ; $6775: $00
    rst $38                                       ; $6776: $ff
    nop                                           ; $6777: $00
    rst $38                                       ; $6778: $ff
    nop                                           ; $6779: $00
    rst $38                                       ; $677a: $ff
    nop                                           ; $677b: $00
    rst $38                                       ; $677c: $ff
    nop                                           ; $677d: $00
    rst $38                                       ; $677e: $ff
    nop                                           ; $677f: $00
    rst $38                                       ; $6780: $ff
    nop                                           ; $6781: $00
    rst $38                                       ; $6782: $ff
    nop                                           ; $6783: $00
    rst $38                                       ; $6784: $ff
    nop                                           ; $6785: $00
    rst $38                                       ; $6786: $ff
    nop                                           ; $6787: $00
    rst $38                                       ; $6788: $ff
    nop                                           ; $6789: $00
    rst $38                                       ; $678a: $ff
    nop                                           ; $678b: $00
    rst $38                                       ; $678c: $ff
    nop                                           ; $678d: $00
    rst $38                                       ; $678e: $ff
    nop                                           ; $678f: $00
    rst $38                                       ; $6790: $ff
    nop                                           ; $6791: $00
    rst $38                                       ; $6792: $ff
    nop                                           ; $6793: $00
    rst $38                                       ; $6794: $ff
    nop                                           ; $6795: $00
    rst $38                                       ; $6796: $ff
    nop                                           ; $6797: $00
    rst $38                                       ; $6798: $ff
    nop                                           ; $6799: $00
    rst $38                                       ; $679a: $ff
    nop                                           ; $679b: $00
    rst $38                                       ; $679c: $ff
    nop                                           ; $679d: $00
    rst $38                                       ; $679e: $ff
    nop                                           ; $679f: $00
    rst $38                                       ; $67a0: $ff
    nop                                           ; $67a1: $00
    rst $38                                       ; $67a2: $ff
    nop                                           ; $67a3: $00
    rst $38                                       ; $67a4: $ff
    nop                                           ; $67a5: $00
    rst $38                                       ; $67a6: $ff
    nop                                           ; $67a7: $00
    rst $38                                       ; $67a8: $ff
    nop                                           ; $67a9: $00
    rst $38                                       ; $67aa: $ff
    nop                                           ; $67ab: $00
    rst $38                                       ; $67ac: $ff
    nop                                           ; $67ad: $00
    rst $38                                       ; $67ae: $ff
    nop                                           ; $67af: $00
    rst $38                                       ; $67b0: $ff
    nop                                           ; $67b1: $00
    rst $38                                       ; $67b2: $ff
    nop                                           ; $67b3: $00
    rst $38                                       ; $67b4: $ff
    nop                                           ; $67b5: $00
    rst $38                                       ; $67b6: $ff
    nop                                           ; $67b7: $00
    rst $38                                       ; $67b8: $ff
    nop                                           ; $67b9: $00
    rst $38                                       ; $67ba: $ff
    nop                                           ; $67bb: $00
    rst $38                                       ; $67bc: $ff
    nop                                           ; $67bd: $00
    rst $38                                       ; $67be: $ff
    nop                                           ; $67bf: $00
    rst $38                                       ; $67c0: $ff
    nop                                           ; $67c1: $00
    rst $38                                       ; $67c2: $ff
    nop                                           ; $67c3: $00
    rst $38                                       ; $67c4: $ff
    nop                                           ; $67c5: $00
    rst $38                                       ; $67c6: $ff
    nop                                           ; $67c7: $00
    rst $38                                       ; $67c8: $ff
    nop                                           ; $67c9: $00
    rst $38                                       ; $67ca: $ff
    nop                                           ; $67cb: $00
    rst $38                                       ; $67cc: $ff
    nop                                           ; $67cd: $00
    rst $38                                       ; $67ce: $ff
    nop                                           ; $67cf: $00
    rst $38                                       ; $67d0: $ff
    nop                                           ; $67d1: $00
    rst $38                                       ; $67d2: $ff
    nop                                           ; $67d3: $00
    rst $38                                       ; $67d4: $ff
    nop                                           ; $67d5: $00
    rst $38                                       ; $67d6: $ff
    nop                                           ; $67d7: $00
    rst $38                                       ; $67d8: $ff
    nop                                           ; $67d9: $00
    rst $38                                       ; $67da: $ff
    nop                                           ; $67db: $00
    rst $38                                       ; $67dc: $ff
    nop                                           ; $67dd: $00
    rst $38                                       ; $67de: $ff
    nop                                           ; $67df: $00
    rst $38                                       ; $67e0: $ff
    nop                                           ; $67e1: $00
    rst $38                                       ; $67e2: $ff
    nop                                           ; $67e3: $00
    rst $38                                       ; $67e4: $ff
    nop                                           ; $67e5: $00
    rst $38                                       ; $67e6: $ff
    nop                                           ; $67e7: $00
    rst $38                                       ; $67e8: $ff
    nop                                           ; $67e9: $00
    rst $38                                       ; $67ea: $ff
    nop                                           ; $67eb: $00
    rst $38                                       ; $67ec: $ff
    nop                                           ; $67ed: $00
    rst $38                                       ; $67ee: $ff
    nop                                           ; $67ef: $00
    rst $38                                       ; $67f0: $ff
    nop                                           ; $67f1: $00
    rst $38                                       ; $67f2: $ff
    nop                                           ; $67f3: $00
    rst $38                                       ; $67f4: $ff
    nop                                           ; $67f5: $00
    rst $38                                       ; $67f6: $ff
    nop                                           ; $67f7: $00
    rst $38                                       ; $67f8: $ff
    nop                                           ; $67f9: $00
    rst $38                                       ; $67fa: $ff
    nop                                           ; $67fb: $00
    rst $38                                       ; $67fc: $ff
    nop                                           ; $67fd: $00
    rst $38                                       ; $67fe: $ff
    nop                                           ; $67ff: $00
    nop                                           ; $6800: $00
    nop                                           ; $6801: $00
    nop                                           ; $6802: $00
    ld a, a                                       ; $6803: $7f
    ccf                                           ; $6804: $3f
    ld a, a                                       ; $6805: $7f
    ccf                                           ; $6806: $3f
    ld h, b                                       ; $6807: $60
    ccf                                           ; $6808: $3f
    ld h, b                                       ; $6809: $60
    ccf                                           ; $680a: $3f
    ld h, b                                       ; $680b: $60
    ccf                                           ; $680c: $3f
    ld h, b                                       ; $680d: $60
    ccf                                           ; $680e: $3f
    ld h, b                                       ; $680f: $60
    nop                                           ; $6810: $00
    nop                                           ; $6811: $00
    nop                                           ; $6812: $00
    rst $38                                       ; $6813: $ff
    rst $38                                       ; $6814: $ff
    rst $38                                       ; $6815: $ff
    ld a, l                                       ; $6816: $7d
    nop                                           ; $6817: $00
    ld a, l                                       ; $6818: $7d
    nop                                           ; $6819: $00
    ld a, l                                       ; $681a: $7d
    nop                                           ; $681b: $00
    ld a, l                                       ; $681c: $7d
    nop                                           ; $681d: $00
    ld a, l                                       ; $681e: $7d
    nop                                           ; $681f: $00
    nop                                           ; $6820: $00
    nop                                           ; $6821: $00
    nop                                           ; $6822: $00
    rst $38                                       ; $6823: $ff
    rst $38                                       ; $6824: $ff
    rst $38                                       ; $6825: $ff
    rst $30                                       ; $6826: $f7
    nop                                           ; $6827: $00
    rst $30                                       ; $6828: $f7
    nop                                           ; $6829: $00
    rst $30                                       ; $682a: $f7
    nop                                           ; $682b: $00
    rst $30                                       ; $682c: $f7
    nop                                           ; $682d: $00
    rst $30                                       ; $682e: $f7
    nop                                           ; $682f: $00
    nop                                           ; $6830: $00
    nop                                           ; $6831: $00
    nop                                           ; $6832: $00
    rst $38                                       ; $6833: $ff
    rst $38                                       ; $6834: $ff
    rst $38                                       ; $6835: $ff
    rst RST_18                                    ; $6836: $df
    nop                                           ; $6837: $00
    rst RST_18                                    ; $6838: $df
    nop                                           ; $6839: $00
    rst RST_18                                    ; $683a: $df
    nop                                           ; $683b: $00
    rst RST_18                                    ; $683c: $df
    nop                                           ; $683d: $00
    rst RST_18                                    ; $683e: $df
    nop                                           ; $683f: $00
    rst $38                                       ; $6840: $ff
    nop                                           ; $6841: $00
    rst $38                                       ; $6842: $ff
    nop                                           ; $6843: $00
    rst $38                                       ; $6844: $ff
    nop                                           ; $6845: $00
    rst $38                                       ; $6846: $ff
    nop                                           ; $6847: $00
    rst $38                                       ; $6848: $ff
    nop                                           ; $6849: $00
    rst $38                                       ; $684a: $ff
    nop                                           ; $684b: $00
    rst $38                                       ; $684c: $ff
    nop                                           ; $684d: $00
    rst $38                                       ; $684e: $ff
    nop                                           ; $684f: $00
    rst $38                                       ; $6850: $ff
    nop                                           ; $6851: $00
    rst $38                                       ; $6852: $ff
    nop                                           ; $6853: $00
    rst $38                                       ; $6854: $ff
    nop                                           ; $6855: $00
    rst $38                                       ; $6856: $ff
    nop                                           ; $6857: $00
    rst $38                                       ; $6858: $ff
    nop                                           ; $6859: $00
    rst $38                                       ; $685a: $ff
    nop                                           ; $685b: $00
    rst $38                                       ; $685c: $ff
    nop                                           ; $685d: $00
    rst $38                                       ; $685e: $ff
    nop                                           ; $685f: $00
    rst $38                                       ; $6860: $ff
    nop                                           ; $6861: $00
    rst $38                                       ; $6862: $ff
    nop                                           ; $6863: $00
    rst $38                                       ; $6864: $ff
    nop                                           ; $6865: $00
    rst $38                                       ; $6866: $ff
    nop                                           ; $6867: $00
    rst $38                                       ; $6868: $ff
    nop                                           ; $6869: $00
    rst $38                                       ; $686a: $ff
    nop                                           ; $686b: $00
    rst $38                                       ; $686c: $ff
    nop                                           ; $686d: $00
    rst $38                                       ; $686e: $ff
    nop                                           ; $686f: $00
    rst $38                                       ; $6870: $ff
    nop                                           ; $6871: $00
    rst $38                                       ; $6872: $ff
    nop                                           ; $6873: $00
    rst $38                                       ; $6874: $ff
    nop                                           ; $6875: $00
    rst $38                                       ; $6876: $ff
    nop                                           ; $6877: $00
    rst $38                                       ; $6878: $ff
    nop                                           ; $6879: $00
    rst $38                                       ; $687a: $ff
    nop                                           ; $687b: $00
    rst $38                                       ; $687c: $ff
    nop                                           ; $687d: $00
    rst $38                                       ; $687e: $ff
    nop                                           ; $687f: $00
    rst $38                                       ; $6880: $ff
    nop                                           ; $6881: $00
    rst $38                                       ; $6882: $ff
    nop                                           ; $6883: $00
    rst $38                                       ; $6884: $ff
    nop                                           ; $6885: $00
    rst $38                                       ; $6886: $ff
    nop                                           ; $6887: $00
    rst $38                                       ; $6888: $ff
    nop                                           ; $6889: $00
    rst $38                                       ; $688a: $ff
    nop                                           ; $688b: $00
    rst $38                                       ; $688c: $ff
    nop                                           ; $688d: $00
    rst $38                                       ; $688e: $ff
    nop                                           ; $688f: $00
    rst $38                                       ; $6890: $ff
    nop                                           ; $6891: $00
    rst $38                                       ; $6892: $ff
    nop                                           ; $6893: $00
    rst $38                                       ; $6894: $ff
    nop                                           ; $6895: $00
    rst $38                                       ; $6896: $ff
    nop                                           ; $6897: $00
    rst $38                                       ; $6898: $ff
    nop                                           ; $6899: $00
    rst $38                                       ; $689a: $ff
    nop                                           ; $689b: $00
    rst $38                                       ; $689c: $ff
    nop                                           ; $689d: $00
    rst $38                                       ; $689e: $ff
    nop                                           ; $689f: $00
    rst $38                                       ; $68a0: $ff
    nop                                           ; $68a1: $00
    rst $38                                       ; $68a2: $ff
    nop                                           ; $68a3: $00
    rst $38                                       ; $68a4: $ff
    nop                                           ; $68a5: $00
    rst $38                                       ; $68a6: $ff
    nop                                           ; $68a7: $00
    rst $38                                       ; $68a8: $ff
    nop                                           ; $68a9: $00
    rst $38                                       ; $68aa: $ff
    nop                                           ; $68ab: $00
    rst $38                                       ; $68ac: $ff
    nop                                           ; $68ad: $00
    rst $38                                       ; $68ae: $ff
    nop                                           ; $68af: $00
    rst $38                                       ; $68b0: $ff
    nop                                           ; $68b1: $00
    rst $38                                       ; $68b2: $ff
    nop                                           ; $68b3: $00
    rst $38                                       ; $68b4: $ff
    nop                                           ; $68b5: $00
    rst $38                                       ; $68b6: $ff
    nop                                           ; $68b7: $00
    rst $38                                       ; $68b8: $ff
    nop                                           ; $68b9: $00
    rst $38                                       ; $68ba: $ff
    nop                                           ; $68bb: $00
    rst $38                                       ; $68bc: $ff
    nop                                           ; $68bd: $00
    rst $38                                       ; $68be: $ff
    nop                                           ; $68bf: $00
    rst $38                                       ; $68c0: $ff
    nop                                           ; $68c1: $00
    rst $38                                       ; $68c2: $ff
    nop                                           ; $68c3: $00
    rst $38                                       ; $68c4: $ff
    nop                                           ; $68c5: $00
    rst $38                                       ; $68c6: $ff
    nop                                           ; $68c7: $00
    rst $38                                       ; $68c8: $ff
    nop                                           ; $68c9: $00
    rst $38                                       ; $68ca: $ff
    nop                                           ; $68cb: $00
    rst $38                                       ; $68cc: $ff
    nop                                           ; $68cd: $00
    rst $38                                       ; $68ce: $ff
    nop                                           ; $68cf: $00
    rst $38                                       ; $68d0: $ff
    nop                                           ; $68d1: $00
    rst $38                                       ; $68d2: $ff
    nop                                           ; $68d3: $00
    rst $38                                       ; $68d4: $ff
    nop                                           ; $68d5: $00
    rst $38                                       ; $68d6: $ff
    nop                                           ; $68d7: $00
    rst $38                                       ; $68d8: $ff
    nop                                           ; $68d9: $00
    rst $38                                       ; $68da: $ff
    nop                                           ; $68db: $00
    rst $38                                       ; $68dc: $ff
    nop                                           ; $68dd: $00
    rst $38                                       ; $68de: $ff
    nop                                           ; $68df: $00
    rst $38                                       ; $68e0: $ff
    nop                                           ; $68e1: $00
    rst $38                                       ; $68e2: $ff
    nop                                           ; $68e3: $00
    rst $38                                       ; $68e4: $ff
    nop                                           ; $68e5: $00
    rst $38                                       ; $68e6: $ff
    nop                                           ; $68e7: $00
    rst $38                                       ; $68e8: $ff
    nop                                           ; $68e9: $00
    rst $38                                       ; $68ea: $ff
    nop                                           ; $68eb: $00
    rst $38                                       ; $68ec: $ff
    nop                                           ; $68ed: $00
    rst $38                                       ; $68ee: $ff
    nop                                           ; $68ef: $00
    rst $38                                       ; $68f0: $ff
    nop                                           ; $68f1: $00
    rst $38                                       ; $68f2: $ff
    nop                                           ; $68f3: $00
    rst $38                                       ; $68f4: $ff
    nop                                           ; $68f5: $00
    rst $38                                       ; $68f6: $ff
    nop                                           ; $68f7: $00
    rst $38                                       ; $68f8: $ff
    nop                                           ; $68f9: $00
    rst $38                                       ; $68fa: $ff
    nop                                           ; $68fb: $00
    rst $38                                       ; $68fc: $ff
    nop                                           ; $68fd: $00
    rst $38                                       ; $68fe: $ff
    nop                                           ; $68ff: $00
    jr nz, jr_007_6962                            ; $6900: $20 $60

    ccf                                           ; $6902: $3f
    ld a, a                                       ; $6903: $7f
    jr nc, jr_007_6985                            ; $6904: $30 $7f

    jr nc, jr_007_6987                            ; $6906: $30 $7f

    jr nc, jr_007_6989                            ; $6908: $30 $7f

    jr nc, jr_007_698b                            ; $690a: $30 $7f

    jr nz, jr_007_696e                            ; $690c: $20 $60

    ccf                                           ; $690e: $3f
    ld h, b                                       ; $690f: $60
    nop                                           ; $6910: $00
    nop                                           ; $6911: $00
    ld a, l                                       ; $6912: $7d
    ld a, l                                       ; $6913: $7d
    ld b, c                                       ; $6914: $41
    ld a, l                                       ; $6915: $7d
    ld b, c                                       ; $6916: $41
    ld a, l                                       ; $6917: $7d
    ld b, c                                       ; $6918: $41
    ld a, l                                       ; $6919: $7d
    ld b, c                                       ; $691a: $41
    ld a, l                                       ; $691b: $7d
    nop                                           ; $691c: $00
    nop                                           ; $691d: $00
    ld a, l                                       ; $691e: $7d
    nop                                           ; $691f: $00
    nop                                           ; $6920: $00
    nop                                           ; $6921: $00
    rst $30                                       ; $6922: $f7
    ldh a, [rTAC]                                 ; $6923: $f0 $07
    ldh a, [rTAC]                                 ; $6925: $f0 $07
    ldh a, [rTAC]                                 ; $6927: $f0 $07
    ldh a, [rTAC]                                 ; $6929: $f0 $07
    ldh a, [rP1]                                  ; $692b: $f0 $00
    nop                                           ; $692d: $00
    rst $30                                       ; $692e: $f7
    nop                                           ; $692f: $00
    nop                                           ; $6930: $00
    nop                                           ; $6931: $00
    rst RST_18                                    ; $6932: $df
    rra                                           ; $6933: $1f
    ret nc                                        ; $6934: $d0

    rra                                           ; $6935: $1f
    ret nc                                        ; $6936: $d0

    rra                                           ; $6937: $1f
    ret nc                                        ; $6938: $d0

    rra                                           ; $6939: $1f
    ret nc                                        ; $693a: $d0

    rra                                           ; $693b: $1f
    nop                                           ; $693c: $00
    nop                                           ; $693d: $00
    rst RST_18                                    ; $693e: $df
    nop                                           ; $693f: $00
    rst $38                                       ; $6940: $ff
    nop                                           ; $6941: $00
    rst $38                                       ; $6942: $ff
    nop                                           ; $6943: $00
    rst $38                                       ; $6944: $ff
    nop                                           ; $6945: $00
    rst $38                                       ; $6946: $ff
    nop                                           ; $6947: $00
    rst $38                                       ; $6948: $ff
    nop                                           ; $6949: $00
    rst $38                                       ; $694a: $ff
    nop                                           ; $694b: $00
    rst $38                                       ; $694c: $ff
    nop                                           ; $694d: $00
    rst $38                                       ; $694e: $ff
    nop                                           ; $694f: $00
    rst $38                                       ; $6950: $ff
    nop                                           ; $6951: $00
    rst $38                                       ; $6952: $ff
    nop                                           ; $6953: $00
    rst $38                                       ; $6954: $ff
    nop                                           ; $6955: $00
    rst $38                                       ; $6956: $ff
    nop                                           ; $6957: $00
    rst $38                                       ; $6958: $ff
    nop                                           ; $6959: $00
    rst $38                                       ; $695a: $ff
    nop                                           ; $695b: $00
    rst $38                                       ; $695c: $ff
    nop                                           ; $695d: $00
    rst $38                                       ; $695e: $ff
    nop                                           ; $695f: $00
    rst $38                                       ; $6960: $ff
    nop                                           ; $6961: $00

jr_007_6962:
    rst $38                                       ; $6962: $ff
    nop                                           ; $6963: $00
    rst $38                                       ; $6964: $ff
    nop                                           ; $6965: $00
    rst $38                                       ; $6966: $ff
    nop                                           ; $6967: $00
    rst $38                                       ; $6968: $ff
    nop                                           ; $6969: $00
    rst $38                                       ; $696a: $ff
    nop                                           ; $696b: $00
    rst $38                                       ; $696c: $ff
    nop                                           ; $696d: $00

jr_007_696e:
    rst $38                                       ; $696e: $ff
    nop                                           ; $696f: $00
    rst $38                                       ; $6970: $ff
    nop                                           ; $6971: $00
    rst $38                                       ; $6972: $ff
    nop                                           ; $6973: $00
    rst $38                                       ; $6974: $ff
    nop                                           ; $6975: $00
    rst $38                                       ; $6976: $ff
    nop                                           ; $6977: $00
    rst $38                                       ; $6978: $ff
    nop                                           ; $6979: $00
    rst $38                                       ; $697a: $ff
    nop                                           ; $697b: $00
    rst $38                                       ; $697c: $ff
    nop                                           ; $697d: $00
    rst $38                                       ; $697e: $ff
    nop                                           ; $697f: $00
    rst $38                                       ; $6980: $ff
    nop                                           ; $6981: $00
    rst $38                                       ; $6982: $ff
    nop                                           ; $6983: $00
    rst $38                                       ; $6984: $ff

jr_007_6985:
    nop                                           ; $6985: $00
    rst $38                                       ; $6986: $ff

jr_007_6987:
    nop                                           ; $6987: $00
    rst $38                                       ; $6988: $ff

jr_007_6989:
    nop                                           ; $6989: $00
    rst $38                                       ; $698a: $ff

jr_007_698b:
    nop                                           ; $698b: $00
    rst $38                                       ; $698c: $ff
    nop                                           ; $698d: $00
    rst $38                                       ; $698e: $ff
    nop                                           ; $698f: $00
    rst $38                                       ; $6990: $ff
    nop                                           ; $6991: $00
    rst $38                                       ; $6992: $ff
    nop                                           ; $6993: $00
    rst $38                                       ; $6994: $ff
    nop                                           ; $6995: $00
    rst $38                                       ; $6996: $ff
    nop                                           ; $6997: $00
    rst $38                                       ; $6998: $ff
    nop                                           ; $6999: $00
    rst $38                                       ; $699a: $ff
    nop                                           ; $699b: $00
    rst $38                                       ; $699c: $ff
    nop                                           ; $699d: $00
    rst $38                                       ; $699e: $ff
    nop                                           ; $699f: $00
    rst $38                                       ; $69a0: $ff
    nop                                           ; $69a1: $00
    rst $38                                       ; $69a2: $ff
    nop                                           ; $69a3: $00
    rst $38                                       ; $69a4: $ff
    nop                                           ; $69a5: $00
    rst $38                                       ; $69a6: $ff
    nop                                           ; $69a7: $00
    rst $38                                       ; $69a8: $ff
    nop                                           ; $69a9: $00
    rst $38                                       ; $69aa: $ff
    nop                                           ; $69ab: $00
    rst $38                                       ; $69ac: $ff
    nop                                           ; $69ad: $00
    rst $38                                       ; $69ae: $ff
    nop                                           ; $69af: $00
    rst $38                                       ; $69b0: $ff
    nop                                           ; $69b1: $00
    rst $38                                       ; $69b2: $ff
    nop                                           ; $69b3: $00
    rst $38                                       ; $69b4: $ff
    nop                                           ; $69b5: $00
    rst $38                                       ; $69b6: $ff
    nop                                           ; $69b7: $00
    rst $38                                       ; $69b8: $ff
    nop                                           ; $69b9: $00
    rst $38                                       ; $69ba: $ff
    nop                                           ; $69bb: $00
    rst $38                                       ; $69bc: $ff
    nop                                           ; $69bd: $00
    rst $38                                       ; $69be: $ff
    nop                                           ; $69bf: $00
    rst $38                                       ; $69c0: $ff
    nop                                           ; $69c1: $00
    rst $38                                       ; $69c2: $ff
    nop                                           ; $69c3: $00
    rst $38                                       ; $69c4: $ff
    nop                                           ; $69c5: $00
    rst $38                                       ; $69c6: $ff
    nop                                           ; $69c7: $00
    rst $38                                       ; $69c8: $ff
    nop                                           ; $69c9: $00
    rst $38                                       ; $69ca: $ff
    nop                                           ; $69cb: $00
    rst $38                                       ; $69cc: $ff
    nop                                           ; $69cd: $00
    rst $38                                       ; $69ce: $ff
    nop                                           ; $69cf: $00
    rst $38                                       ; $69d0: $ff
    nop                                           ; $69d1: $00
    rst $38                                       ; $69d2: $ff
    nop                                           ; $69d3: $00
    rst $38                                       ; $69d4: $ff
    nop                                           ; $69d5: $00
    rst $38                                       ; $69d6: $ff
    nop                                           ; $69d7: $00
    rst $38                                       ; $69d8: $ff
    nop                                           ; $69d9: $00
    rst $38                                       ; $69da: $ff
    nop                                           ; $69db: $00
    rst $38                                       ; $69dc: $ff
    nop                                           ; $69dd: $00
    rst $38                                       ; $69de: $ff
    nop                                           ; $69df: $00
    rst $38                                       ; $69e0: $ff
    nop                                           ; $69e1: $00
    rst $38                                       ; $69e2: $ff
    nop                                           ; $69e3: $00
    rst $38                                       ; $69e4: $ff
    nop                                           ; $69e5: $00
    rst $38                                       ; $69e6: $ff
    nop                                           ; $69e7: $00
    rst $38                                       ; $69e8: $ff
    nop                                           ; $69e9: $00
    rst $38                                       ; $69ea: $ff
    nop                                           ; $69eb: $00
    rst $38                                       ; $69ec: $ff
    nop                                           ; $69ed: $00
    rst $38                                       ; $69ee: $ff
    nop                                           ; $69ef: $00
    rst $38                                       ; $69f0: $ff
    nop                                           ; $69f1: $00
    rst $38                                       ; $69f2: $ff
    nop                                           ; $69f3: $00
    rst $38                                       ; $69f4: $ff
    nop                                           ; $69f5: $00
    rst $38                                       ; $69f6: $ff
    nop                                           ; $69f7: $00
    rst $38                                       ; $69f8: $ff
    nop                                           ; $69f9: $00
    rst $38                                       ; $69fa: $ff
    nop                                           ; $69fb: $00
    rst $38                                       ; $69fc: $ff
    nop                                           ; $69fd: $00
    rst $38                                       ; $69fe: $ff
    nop                                           ; $69ff: $00
    ccf                                           ; $6a00: $3f
    ld h, b                                       ; $6a01: $60
    ccf                                           ; $6a02: $3f
    ld h, b                                       ; $6a03: $60
    ccf                                           ; $6a04: $3f
    ld h, b                                       ; $6a05: $60
    ccf                                           ; $6a06: $3f
    ld h, b                                       ; $6a07: $60
    jr nz, jr_007_6a6a                            ; $6a08: $20 $60

    ccf                                           ; $6a0a: $3f
    ld h, b                                       ; $6a0b: $60
    ccf                                           ; $6a0c: $3f
    ld h, b                                       ; $6a0d: $60
    ccf                                           ; $6a0e: $3f
    ld h, b                                       ; $6a0f: $60
    ld a, l                                       ; $6a10: $7d
    nop                                           ; $6a11: $00
    ld a, l                                       ; $6a12: $7d
    nop                                           ; $6a13: $00
    ld a, l                                       ; $6a14: $7d
    nop                                           ; $6a15: $00
    ld a, l                                       ; $6a16: $7d
    nop                                           ; $6a17: $00
    nop                                           ; $6a18: $00
    nop                                           ; $6a19: $00
    ld a, l                                       ; $6a1a: $7d
    nop                                           ; $6a1b: $00
    ld a, l                                       ; $6a1c: $7d
    nop                                           ; $6a1d: $00
    ld a, l                                       ; $6a1e: $7d
    nop                                           ; $6a1f: $00
    rst $30                                       ; $6a20: $f7
    nop                                           ; $6a21: $00
    rst $30                                       ; $6a22: $f7
    nop                                           ; $6a23: $00
    rst $30                                       ; $6a24: $f7
    nop                                           ; $6a25: $00
    rst $30                                       ; $6a26: $f7
    nop                                           ; $6a27: $00
    nop                                           ; $6a28: $00
    nop                                           ; $6a29: $00
    rst $30                                       ; $6a2a: $f7
    nop                                           ; $6a2b: $00
    rst $30                                       ; $6a2c: $f7
    nop                                           ; $6a2d: $00
    rst $30                                       ; $6a2e: $f7
    nop                                           ; $6a2f: $00
    rst RST_18                                    ; $6a30: $df
    nop                                           ; $6a31: $00
    rst RST_18                                    ; $6a32: $df
    nop                                           ; $6a33: $00
    rst RST_18                                    ; $6a34: $df
    nop                                           ; $6a35: $00
    rst RST_18                                    ; $6a36: $df
    nop                                           ; $6a37: $00
    nop                                           ; $6a38: $00
    nop                                           ; $6a39: $00
    rst RST_18                                    ; $6a3a: $df
    nop                                           ; $6a3b: $00
    rst RST_18                                    ; $6a3c: $df
    nop                                           ; $6a3d: $00
    rst RST_18                                    ; $6a3e: $df
    nop                                           ; $6a3f: $00
    rst $38                                       ; $6a40: $ff
    nop                                           ; $6a41: $00
    rst $38                                       ; $6a42: $ff
    nop                                           ; $6a43: $00
    rst $38                                       ; $6a44: $ff
    nop                                           ; $6a45: $00
    rst $38                                       ; $6a46: $ff
    nop                                           ; $6a47: $00
    rst $38                                       ; $6a48: $ff
    nop                                           ; $6a49: $00
    rst $38                                       ; $6a4a: $ff
    nop                                           ; $6a4b: $00
    rst $38                                       ; $6a4c: $ff
    nop                                           ; $6a4d: $00
    rst $38                                       ; $6a4e: $ff
    nop                                           ; $6a4f: $00
    rst $38                                       ; $6a50: $ff
    nop                                           ; $6a51: $00
    rst $38                                       ; $6a52: $ff
    nop                                           ; $6a53: $00
    rst $38                                       ; $6a54: $ff
    nop                                           ; $6a55: $00
    rst $38                                       ; $6a56: $ff
    nop                                           ; $6a57: $00
    rst $38                                       ; $6a58: $ff
    nop                                           ; $6a59: $00
    rst $38                                       ; $6a5a: $ff
    nop                                           ; $6a5b: $00
    rst $38                                       ; $6a5c: $ff
    nop                                           ; $6a5d: $00
    rst $38                                       ; $6a5e: $ff
    nop                                           ; $6a5f: $00
    rst $38                                       ; $6a60: $ff
    nop                                           ; $6a61: $00
    rst $38                                       ; $6a62: $ff
    nop                                           ; $6a63: $00
    rst $38                                       ; $6a64: $ff
    nop                                           ; $6a65: $00
    rst $38                                       ; $6a66: $ff
    nop                                           ; $6a67: $00
    rst $38                                       ; $6a68: $ff
    nop                                           ; $6a69: $00

jr_007_6a6a:
    rst $38                                       ; $6a6a: $ff
    nop                                           ; $6a6b: $00
    rst $38                                       ; $6a6c: $ff
    nop                                           ; $6a6d: $00
    rst $38                                       ; $6a6e: $ff
    nop                                           ; $6a6f: $00
    rst $38                                       ; $6a70: $ff
    nop                                           ; $6a71: $00
    rst $38                                       ; $6a72: $ff
    nop                                           ; $6a73: $00
    rst $38                                       ; $6a74: $ff
    nop                                           ; $6a75: $00
    rst $38                                       ; $6a76: $ff
    nop                                           ; $6a77: $00
    rst $38                                       ; $6a78: $ff
    nop                                           ; $6a79: $00
    rst $38                                       ; $6a7a: $ff
    nop                                           ; $6a7b: $00
    rst $38                                       ; $6a7c: $ff
    nop                                           ; $6a7d: $00
    rst $38                                       ; $6a7e: $ff
    nop                                           ; $6a7f: $00
    rst $38                                       ; $6a80: $ff
    nop                                           ; $6a81: $00
    rst $38                                       ; $6a82: $ff
    nop                                           ; $6a83: $00
    rst $38                                       ; $6a84: $ff
    nop                                           ; $6a85: $00
    rst $38                                       ; $6a86: $ff
    nop                                           ; $6a87: $00
    rst $38                                       ; $6a88: $ff
    nop                                           ; $6a89: $00
    rst $38                                       ; $6a8a: $ff
    nop                                           ; $6a8b: $00
    rst $38                                       ; $6a8c: $ff
    nop                                           ; $6a8d: $00
    rst $38                                       ; $6a8e: $ff
    nop                                           ; $6a8f: $00
    rst $38                                       ; $6a90: $ff
    nop                                           ; $6a91: $00
    rst $38                                       ; $6a92: $ff
    nop                                           ; $6a93: $00
    rst $38                                       ; $6a94: $ff
    nop                                           ; $6a95: $00
    rst $38                                       ; $6a96: $ff
    nop                                           ; $6a97: $00
    rst $38                                       ; $6a98: $ff
    nop                                           ; $6a99: $00
    rst $38                                       ; $6a9a: $ff
    nop                                           ; $6a9b: $00
    rst $38                                       ; $6a9c: $ff
    nop                                           ; $6a9d: $00
    rst $38                                       ; $6a9e: $ff
    nop                                           ; $6a9f: $00
    rst $38                                       ; $6aa0: $ff
    nop                                           ; $6aa1: $00
    rst $38                                       ; $6aa2: $ff
    nop                                           ; $6aa3: $00
    rst $38                                       ; $6aa4: $ff
    nop                                           ; $6aa5: $00
    rst $38                                       ; $6aa6: $ff
    nop                                           ; $6aa7: $00
    rst $38                                       ; $6aa8: $ff
    nop                                           ; $6aa9: $00
    rst $38                                       ; $6aaa: $ff
    nop                                           ; $6aab: $00
    rst $38                                       ; $6aac: $ff
    nop                                           ; $6aad: $00
    rst $38                                       ; $6aae: $ff
    nop                                           ; $6aaf: $00
    rst $38                                       ; $6ab0: $ff
    nop                                           ; $6ab1: $00
    rst $38                                       ; $6ab2: $ff
    nop                                           ; $6ab3: $00
    rst $38                                       ; $6ab4: $ff
    nop                                           ; $6ab5: $00
    rst $38                                       ; $6ab6: $ff
    nop                                           ; $6ab7: $00
    rst $38                                       ; $6ab8: $ff
    nop                                           ; $6ab9: $00
    rst $38                                       ; $6aba: $ff
    nop                                           ; $6abb: $00
    rst $38                                       ; $6abc: $ff
    nop                                           ; $6abd: $00
    rst $38                                       ; $6abe: $ff
    nop                                           ; $6abf: $00
    rst $38                                       ; $6ac0: $ff
    nop                                           ; $6ac1: $00
    rst $38                                       ; $6ac2: $ff
    nop                                           ; $6ac3: $00
    rst $38                                       ; $6ac4: $ff
    nop                                           ; $6ac5: $00
    rst $38                                       ; $6ac6: $ff
    nop                                           ; $6ac7: $00
    rst $38                                       ; $6ac8: $ff
    nop                                           ; $6ac9: $00
    rst $38                                       ; $6aca: $ff
    nop                                           ; $6acb: $00
    rst $38                                       ; $6acc: $ff
    nop                                           ; $6acd: $00
    rst $38                                       ; $6ace: $ff
    nop                                           ; $6acf: $00
    rst $38                                       ; $6ad0: $ff
    nop                                           ; $6ad1: $00
    rst $38                                       ; $6ad2: $ff
    nop                                           ; $6ad3: $00
    rst $38                                       ; $6ad4: $ff
    nop                                           ; $6ad5: $00
    rst $38                                       ; $6ad6: $ff
    nop                                           ; $6ad7: $00
    rst $38                                       ; $6ad8: $ff
    nop                                           ; $6ad9: $00
    rst $38                                       ; $6ada: $ff
    nop                                           ; $6adb: $00
    rst $38                                       ; $6adc: $ff
    nop                                           ; $6add: $00
    rst $38                                       ; $6ade: $ff
    nop                                           ; $6adf: $00
    rst $38                                       ; $6ae0: $ff
    nop                                           ; $6ae1: $00
    rst $38                                       ; $6ae2: $ff
    nop                                           ; $6ae3: $00
    rst $38                                       ; $6ae4: $ff
    nop                                           ; $6ae5: $00
    rst $38                                       ; $6ae6: $ff
    nop                                           ; $6ae7: $00
    rst $38                                       ; $6ae8: $ff
    nop                                           ; $6ae9: $00
    rst $38                                       ; $6aea: $ff
    nop                                           ; $6aeb: $00
    rst $38                                       ; $6aec: $ff
    nop                                           ; $6aed: $00
    rst $38                                       ; $6aee: $ff
    nop                                           ; $6aef: $00
    rst $38                                       ; $6af0: $ff
    nop                                           ; $6af1: $00
    rst $38                                       ; $6af2: $ff
    nop                                           ; $6af3: $00
    rst $38                                       ; $6af4: $ff
    nop                                           ; $6af5: $00
    rst $38                                       ; $6af6: $ff
    nop                                           ; $6af7: $00
    rst $38                                       ; $6af8: $ff
    nop                                           ; $6af9: $00
    rst $38                                       ; $6afa: $ff
    nop                                           ; $6afb: $00
    rst $38                                       ; $6afc: $ff
    nop                                           ; $6afd: $00
    rst $38                                       ; $6afe: $ff
    nop                                           ; $6aff: $00
    ccf                                           ; $6b00: $3f
    ld h, b                                       ; $6b01: $60
    ccf                                           ; $6b02: $3f
    ld h, b                                       ; $6b03: $60
    jr nz, jr_007_6b66                            ; $6b04: $20 $60

    ccf                                           ; $6b06: $3f
    ld h, b                                       ; $6b07: $60
    ccf                                           ; $6b08: $3f
    ld h, b                                       ; $6b09: $60
    ccf                                           ; $6b0a: $3f
    ld h, b                                       ; $6b0b: $60
    ccf                                           ; $6b0c: $3f
    ld h, b                                       ; $6b0d: $60
    ccf                                           ; $6b0e: $3f
    ld h, b                                       ; $6b0f: $60
    ld a, l                                       ; $6b10: $7d
    nop                                           ; $6b11: $00
    ld a, l                                       ; $6b12: $7d
    nop                                           ; $6b13: $00
    nop                                           ; $6b14: $00
    nop                                           ; $6b15: $00
    ld a, l                                       ; $6b16: $7d
    nop                                           ; $6b17: $00
    ld a, l                                       ; $6b18: $7d
    nop                                           ; $6b19: $00
    ld a, l                                       ; $6b1a: $7d
    nop                                           ; $6b1b: $00
    ld a, l                                       ; $6b1c: $7d
    nop                                           ; $6b1d: $00
    ld a, l                                       ; $6b1e: $7d
    nop                                           ; $6b1f: $00
    rst $30                                       ; $6b20: $f7
    nop                                           ; $6b21: $00
    rst $30                                       ; $6b22: $f7
    nop                                           ; $6b23: $00
    nop                                           ; $6b24: $00
    nop                                           ; $6b25: $00
    rst $30                                       ; $6b26: $f7
    nop                                           ; $6b27: $00
    rst $30                                       ; $6b28: $f7
    nop                                           ; $6b29: $00
    rst $30                                       ; $6b2a: $f7
    nop                                           ; $6b2b: $00
    rst $30                                       ; $6b2c: $f7
    nop                                           ; $6b2d: $00
    rst $30                                       ; $6b2e: $f7
    nop                                           ; $6b2f: $00
    rst RST_18                                    ; $6b30: $df
    nop                                           ; $6b31: $00
    rst RST_18                                    ; $6b32: $df
    nop                                           ; $6b33: $00
    nop                                           ; $6b34: $00
    nop                                           ; $6b35: $00
    rst RST_18                                    ; $6b36: $df
    nop                                           ; $6b37: $00
    rst RST_18                                    ; $6b38: $df
    nop                                           ; $6b39: $00
    rst RST_18                                    ; $6b3a: $df
    nop                                           ; $6b3b: $00
    rst RST_18                                    ; $6b3c: $df
    nop                                           ; $6b3d: $00
    rst RST_18                                    ; $6b3e: $df
    nop                                           ; $6b3f: $00
    rst $38                                       ; $6b40: $ff
    nop                                           ; $6b41: $00
    rst $38                                       ; $6b42: $ff
    nop                                           ; $6b43: $00
    rst $38                                       ; $6b44: $ff
    nop                                           ; $6b45: $00
    rst $38                                       ; $6b46: $ff
    nop                                           ; $6b47: $00
    rst $38                                       ; $6b48: $ff
    nop                                           ; $6b49: $00
    rst $38                                       ; $6b4a: $ff
    nop                                           ; $6b4b: $00
    rst $38                                       ; $6b4c: $ff
    nop                                           ; $6b4d: $00
    rst $38                                       ; $6b4e: $ff
    nop                                           ; $6b4f: $00
    rst $38                                       ; $6b50: $ff
    nop                                           ; $6b51: $00
    rst $38                                       ; $6b52: $ff
    nop                                           ; $6b53: $00
    rst $38                                       ; $6b54: $ff
    nop                                           ; $6b55: $00
    rst $38                                       ; $6b56: $ff
    nop                                           ; $6b57: $00
    rst $38                                       ; $6b58: $ff
    nop                                           ; $6b59: $00
    rst $38                                       ; $6b5a: $ff
    nop                                           ; $6b5b: $00
    rst $38                                       ; $6b5c: $ff
    nop                                           ; $6b5d: $00
    rst $38                                       ; $6b5e: $ff
    nop                                           ; $6b5f: $00
    rst $38                                       ; $6b60: $ff
    nop                                           ; $6b61: $00
    rst $38                                       ; $6b62: $ff
    nop                                           ; $6b63: $00
    rst $38                                       ; $6b64: $ff
    nop                                           ; $6b65: $00

jr_007_6b66:
    rst $38                                       ; $6b66: $ff
    nop                                           ; $6b67: $00
    rst $38                                       ; $6b68: $ff
    nop                                           ; $6b69: $00
    rst $38                                       ; $6b6a: $ff
    nop                                           ; $6b6b: $00
    rst $38                                       ; $6b6c: $ff
    nop                                           ; $6b6d: $00
    rst $38                                       ; $6b6e: $ff
    nop                                           ; $6b6f: $00
    rst $38                                       ; $6b70: $ff
    nop                                           ; $6b71: $00
    rst $38                                       ; $6b72: $ff
    nop                                           ; $6b73: $00
    rst $38                                       ; $6b74: $ff
    nop                                           ; $6b75: $00
    rst $38                                       ; $6b76: $ff
    nop                                           ; $6b77: $00
    rst $38                                       ; $6b78: $ff
    nop                                           ; $6b79: $00
    rst $38                                       ; $6b7a: $ff
    nop                                           ; $6b7b: $00
    rst $38                                       ; $6b7c: $ff
    nop                                           ; $6b7d: $00
    rst $38                                       ; $6b7e: $ff
    nop                                           ; $6b7f: $00
    rst $38                                       ; $6b80: $ff
    nop                                           ; $6b81: $00
    rst $38                                       ; $6b82: $ff
    nop                                           ; $6b83: $00
    rst $38                                       ; $6b84: $ff
    nop                                           ; $6b85: $00
    rst $38                                       ; $6b86: $ff
    nop                                           ; $6b87: $00
    rst $38                                       ; $6b88: $ff
    nop                                           ; $6b89: $00
    rst $38                                       ; $6b8a: $ff
    nop                                           ; $6b8b: $00
    rst $38                                       ; $6b8c: $ff
    nop                                           ; $6b8d: $00
    rst $38                                       ; $6b8e: $ff
    nop                                           ; $6b8f: $00
    rst $38                                       ; $6b90: $ff
    nop                                           ; $6b91: $00
    rst $38                                       ; $6b92: $ff
    nop                                           ; $6b93: $00
    rst $38                                       ; $6b94: $ff
    nop                                           ; $6b95: $00
    rst $38                                       ; $6b96: $ff
    nop                                           ; $6b97: $00
    rst $38                                       ; $6b98: $ff
    nop                                           ; $6b99: $00
    rst $38                                       ; $6b9a: $ff
    nop                                           ; $6b9b: $00
    rst $38                                       ; $6b9c: $ff
    nop                                           ; $6b9d: $00
    rst $38                                       ; $6b9e: $ff
    nop                                           ; $6b9f: $00
    rst $38                                       ; $6ba0: $ff
    nop                                           ; $6ba1: $00
    rst $38                                       ; $6ba2: $ff
    nop                                           ; $6ba3: $00
    rst $38                                       ; $6ba4: $ff
    nop                                           ; $6ba5: $00
    rst $38                                       ; $6ba6: $ff
    nop                                           ; $6ba7: $00
    rst $38                                       ; $6ba8: $ff
    nop                                           ; $6ba9: $00
    rst $38                                       ; $6baa: $ff
    nop                                           ; $6bab: $00
    rst $38                                       ; $6bac: $ff
    nop                                           ; $6bad: $00
    rst $38                                       ; $6bae: $ff
    nop                                           ; $6baf: $00
    rst $38                                       ; $6bb0: $ff
    nop                                           ; $6bb1: $00
    rst $38                                       ; $6bb2: $ff
    nop                                           ; $6bb3: $00
    rst $38                                       ; $6bb4: $ff
    nop                                           ; $6bb5: $00
    rst $38                                       ; $6bb6: $ff
    nop                                           ; $6bb7: $00
    rst $38                                       ; $6bb8: $ff
    nop                                           ; $6bb9: $00
    rst $38                                       ; $6bba: $ff
    nop                                           ; $6bbb: $00
    rst $38                                       ; $6bbc: $ff
    nop                                           ; $6bbd: $00
    rst $38                                       ; $6bbe: $ff
    nop                                           ; $6bbf: $00
    rst $38                                       ; $6bc0: $ff
    nop                                           ; $6bc1: $00
    rst $38                                       ; $6bc2: $ff
    nop                                           ; $6bc3: $00
    rst $38                                       ; $6bc4: $ff
    nop                                           ; $6bc5: $00
    rst $38                                       ; $6bc6: $ff
    nop                                           ; $6bc7: $00
    rst $38                                       ; $6bc8: $ff
    nop                                           ; $6bc9: $00
    rst $38                                       ; $6bca: $ff
    nop                                           ; $6bcb: $00
    rst $38                                       ; $6bcc: $ff
    nop                                           ; $6bcd: $00
    rst $38                                       ; $6bce: $ff
    nop                                           ; $6bcf: $00
    rst $38                                       ; $6bd0: $ff
    nop                                           ; $6bd1: $00
    rst $38                                       ; $6bd2: $ff
    nop                                           ; $6bd3: $00
    rst $38                                       ; $6bd4: $ff
    nop                                           ; $6bd5: $00
    rst $38                                       ; $6bd6: $ff
    nop                                           ; $6bd7: $00
    rst $38                                       ; $6bd8: $ff
    nop                                           ; $6bd9: $00
    rst $38                                       ; $6bda: $ff
    nop                                           ; $6bdb: $00
    rst $38                                       ; $6bdc: $ff
    nop                                           ; $6bdd: $00
    rst $38                                       ; $6bde: $ff
    nop                                           ; $6bdf: $00
    rst $38                                       ; $6be0: $ff
    nop                                           ; $6be1: $00
    rst $38                                       ; $6be2: $ff
    nop                                           ; $6be3: $00
    rst $38                                       ; $6be4: $ff
    nop                                           ; $6be5: $00
    rst $38                                       ; $6be6: $ff
    nop                                           ; $6be7: $00
    rst $38                                       ; $6be8: $ff
    nop                                           ; $6be9: $00
    rst $38                                       ; $6bea: $ff
    nop                                           ; $6beb: $00
    rst $38                                       ; $6bec: $ff
    nop                                           ; $6bed: $00
    rst $38                                       ; $6bee: $ff
    nop                                           ; $6bef: $00
    rst $38                                       ; $6bf0: $ff
    nop                                           ; $6bf1: $00
    rst $38                                       ; $6bf2: $ff
    nop                                           ; $6bf3: $00
    rst $38                                       ; $6bf4: $ff
    nop                                           ; $6bf5: $00
    rst $38                                       ; $6bf6: $ff
    nop                                           ; $6bf7: $00
    rst $38                                       ; $6bf8: $ff
    nop                                           ; $6bf9: $00
    rst $38                                       ; $6bfa: $ff
    nop                                           ; $6bfb: $00
    rst $38                                       ; $6bfc: $ff
    nop                                           ; $6bfd: $00
    rst $38                                       ; $6bfe: $ff
    nop                                           ; $6bff: $00
    rst $38                                       ; $6c00: $ff
    nop                                           ; $6c01: $00
    rst $38                                       ; $6c02: $ff
    nop                                           ; $6c03: $00
    rst $38                                       ; $6c04: $ff
    nop                                           ; $6c05: $00
    rst $38                                       ; $6c06: $ff
    nop                                           ; $6c07: $00
    rst $38                                       ; $6c08: $ff
    nop                                           ; $6c09: $00
    rst $38                                       ; $6c0a: $ff
    nop                                           ; $6c0b: $00
    rst $38                                       ; $6c0c: $ff
    nop                                           ; $6c0d: $00
    rst $38                                       ; $6c0e: $ff
    nop                                           ; $6c0f: $00
    rst $38                                       ; $6c10: $ff
    nop                                           ; $6c11: $00
    rst $38                                       ; $6c12: $ff
    nop                                           ; $6c13: $00
    rst $38                                       ; $6c14: $ff
    nop                                           ; $6c15: $00
    rst $38                                       ; $6c16: $ff
    nop                                           ; $6c17: $00
    rst $38                                       ; $6c18: $ff
    nop                                           ; $6c19: $00
    rst $38                                       ; $6c1a: $ff
    nop                                           ; $6c1b: $00
    rst $38                                       ; $6c1c: $ff
    nop                                           ; $6c1d: $00
    rst $38                                       ; $6c1e: $ff
    nop                                           ; $6c1f: $00
    rst $38                                       ; $6c20: $ff
    nop                                           ; $6c21: $00
    rst $38                                       ; $6c22: $ff
    nop                                           ; $6c23: $00
    rst $38                                       ; $6c24: $ff
    nop                                           ; $6c25: $00
    rst $38                                       ; $6c26: $ff
    nop                                           ; $6c27: $00
    rst $38                                       ; $6c28: $ff
    nop                                           ; $6c29: $00
    rst $38                                       ; $6c2a: $ff
    nop                                           ; $6c2b: $00
    rst $38                                       ; $6c2c: $ff
    nop                                           ; $6c2d: $00
    rst $38                                       ; $6c2e: $ff
    nop                                           ; $6c2f: $00
    rst $38                                       ; $6c30: $ff
    nop                                           ; $6c31: $00
    rst $38                                       ; $6c32: $ff
    nop                                           ; $6c33: $00
    rst $38                                       ; $6c34: $ff
    nop                                           ; $6c35: $00
    rst $38                                       ; $6c36: $ff
    nop                                           ; $6c37: $00
    rst $38                                       ; $6c38: $ff
    nop                                           ; $6c39: $00
    rst $38                                       ; $6c3a: $ff
    nop                                           ; $6c3b: $00
    rst $38                                       ; $6c3c: $ff
    nop                                           ; $6c3d: $00
    rst $38                                       ; $6c3e: $ff
    nop                                           ; $6c3f: $00
    rst $38                                       ; $6c40: $ff
    nop                                           ; $6c41: $00
    rst $38                                       ; $6c42: $ff
    nop                                           ; $6c43: $00
    rst $38                                       ; $6c44: $ff
    nop                                           ; $6c45: $00
    rst $38                                       ; $6c46: $ff
    nop                                           ; $6c47: $00
    rst $38                                       ; $6c48: $ff
    nop                                           ; $6c49: $00
    rst $38                                       ; $6c4a: $ff
    nop                                           ; $6c4b: $00
    rst $38                                       ; $6c4c: $ff
    nop                                           ; $6c4d: $00
    rst $38                                       ; $6c4e: $ff
    nop                                           ; $6c4f: $00
    rst $38                                       ; $6c50: $ff
    nop                                           ; $6c51: $00
    rst $38                                       ; $6c52: $ff
    nop                                           ; $6c53: $00
    rst $38                                       ; $6c54: $ff
    nop                                           ; $6c55: $00
    rst $38                                       ; $6c56: $ff
    nop                                           ; $6c57: $00
    rst $38                                       ; $6c58: $ff
    nop                                           ; $6c59: $00
    rst $38                                       ; $6c5a: $ff
    nop                                           ; $6c5b: $00
    rst $38                                       ; $6c5c: $ff
    nop                                           ; $6c5d: $00
    rst $38                                       ; $6c5e: $ff
    nop                                           ; $6c5f: $00
    rst $38                                       ; $6c60: $ff
    nop                                           ; $6c61: $00
    rst $38                                       ; $6c62: $ff
    nop                                           ; $6c63: $00
    rst $38                                       ; $6c64: $ff
    nop                                           ; $6c65: $00
    rst $38                                       ; $6c66: $ff
    nop                                           ; $6c67: $00
    rst $38                                       ; $6c68: $ff
    nop                                           ; $6c69: $00
    rst $38                                       ; $6c6a: $ff
    nop                                           ; $6c6b: $00
    rst $38                                       ; $6c6c: $ff
    nop                                           ; $6c6d: $00
    rst $38                                       ; $6c6e: $ff
    nop                                           ; $6c6f: $00
    rst $38                                       ; $6c70: $ff
    nop                                           ; $6c71: $00
    rst $38                                       ; $6c72: $ff
    nop                                           ; $6c73: $00
    rst $38                                       ; $6c74: $ff
    nop                                           ; $6c75: $00
    rst $38                                       ; $6c76: $ff
    nop                                           ; $6c77: $00
    rst $38                                       ; $6c78: $ff
    nop                                           ; $6c79: $00
    rst $38                                       ; $6c7a: $ff
    nop                                           ; $6c7b: $00
    rst $38                                       ; $6c7c: $ff
    nop                                           ; $6c7d: $00
    rst $38                                       ; $6c7e: $ff
    nop                                           ; $6c7f: $00
    rst $38                                       ; $6c80: $ff
    nop                                           ; $6c81: $00
    rst $38                                       ; $6c82: $ff
    nop                                           ; $6c83: $00
    rst $38                                       ; $6c84: $ff
    nop                                           ; $6c85: $00
    rst $38                                       ; $6c86: $ff
    nop                                           ; $6c87: $00
    rst $38                                       ; $6c88: $ff
    nop                                           ; $6c89: $00
    rst $38                                       ; $6c8a: $ff
    nop                                           ; $6c8b: $00
    rst $38                                       ; $6c8c: $ff
    nop                                           ; $6c8d: $00
    rst $38                                       ; $6c8e: $ff
    nop                                           ; $6c8f: $00
    rst $38                                       ; $6c90: $ff
    nop                                           ; $6c91: $00
    rst $38                                       ; $6c92: $ff
    nop                                           ; $6c93: $00
    rst $38                                       ; $6c94: $ff
    nop                                           ; $6c95: $00
    rst $38                                       ; $6c96: $ff
    nop                                           ; $6c97: $00
    rst $38                                       ; $6c98: $ff
    nop                                           ; $6c99: $00
    rst $38                                       ; $6c9a: $ff
    nop                                           ; $6c9b: $00
    rst $38                                       ; $6c9c: $ff
    nop                                           ; $6c9d: $00
    rst $38                                       ; $6c9e: $ff
    nop                                           ; $6c9f: $00
    rst $38                                       ; $6ca0: $ff
    nop                                           ; $6ca1: $00
    rst $38                                       ; $6ca2: $ff
    nop                                           ; $6ca3: $00
    rst $38                                       ; $6ca4: $ff
    nop                                           ; $6ca5: $00
    rst $38                                       ; $6ca6: $ff
    nop                                           ; $6ca7: $00
    rst $38                                       ; $6ca8: $ff
    nop                                           ; $6ca9: $00
    rst $38                                       ; $6caa: $ff
    nop                                           ; $6cab: $00
    rst $38                                       ; $6cac: $ff
    nop                                           ; $6cad: $00
    rst $38                                       ; $6cae: $ff
    nop                                           ; $6caf: $00
    rst $38                                       ; $6cb0: $ff
    nop                                           ; $6cb1: $00
    rst $38                                       ; $6cb2: $ff
    nop                                           ; $6cb3: $00
    rst $38                                       ; $6cb4: $ff
    nop                                           ; $6cb5: $00
    rst $38                                       ; $6cb6: $ff
    nop                                           ; $6cb7: $00
    rst $38                                       ; $6cb8: $ff
    nop                                           ; $6cb9: $00
    rst $38                                       ; $6cba: $ff
    nop                                           ; $6cbb: $00
    rst $38                                       ; $6cbc: $ff
    nop                                           ; $6cbd: $00
    rst $38                                       ; $6cbe: $ff
    nop                                           ; $6cbf: $00
    rst $38                                       ; $6cc0: $ff
    nop                                           ; $6cc1: $00
    rst $38                                       ; $6cc2: $ff
    nop                                           ; $6cc3: $00
    rst $38                                       ; $6cc4: $ff
    nop                                           ; $6cc5: $00
    rst $38                                       ; $6cc6: $ff
    nop                                           ; $6cc7: $00
    rst $38                                       ; $6cc8: $ff
    nop                                           ; $6cc9: $00
    rst $38                                       ; $6cca: $ff
    nop                                           ; $6ccb: $00
    rst $38                                       ; $6ccc: $ff
    nop                                           ; $6ccd: $00
    rst $38                                       ; $6cce: $ff
    nop                                           ; $6ccf: $00
    rst $38                                       ; $6cd0: $ff
    nop                                           ; $6cd1: $00
    rst $38                                       ; $6cd2: $ff
    nop                                           ; $6cd3: $00
    rst $38                                       ; $6cd4: $ff
    nop                                           ; $6cd5: $00
    rst $38                                       ; $6cd6: $ff
    nop                                           ; $6cd7: $00
    rst $38                                       ; $6cd8: $ff
    nop                                           ; $6cd9: $00
    rst $38                                       ; $6cda: $ff
    nop                                           ; $6cdb: $00
    rst $38                                       ; $6cdc: $ff
    nop                                           ; $6cdd: $00
    rst $38                                       ; $6cde: $ff
    nop                                           ; $6cdf: $00
    rst $38                                       ; $6ce0: $ff
    nop                                           ; $6ce1: $00
    rst $38                                       ; $6ce2: $ff
    nop                                           ; $6ce3: $00
    rst $38                                       ; $6ce4: $ff
    nop                                           ; $6ce5: $00
    rst $38                                       ; $6ce6: $ff
    nop                                           ; $6ce7: $00
    rst $38                                       ; $6ce8: $ff
    nop                                           ; $6ce9: $00
    rst $38                                       ; $6cea: $ff
    nop                                           ; $6ceb: $00
    rst $38                                       ; $6cec: $ff
    nop                                           ; $6ced: $00
    rst $38                                       ; $6cee: $ff
    nop                                           ; $6cef: $00
    rst $38                                       ; $6cf0: $ff
    nop                                           ; $6cf1: $00
    rst $38                                       ; $6cf2: $ff
    nop                                           ; $6cf3: $00
    rst $38                                       ; $6cf4: $ff
    nop                                           ; $6cf5: $00
    rst $38                                       ; $6cf6: $ff
    nop                                           ; $6cf7: $00
    rst $38                                       ; $6cf8: $ff
    nop                                           ; $6cf9: $00
    rst $38                                       ; $6cfa: $ff
    nop                                           ; $6cfb: $00
    rst $38                                       ; $6cfc: $ff
    nop                                           ; $6cfd: $00
    rst $38                                       ; $6cfe: $ff
    nop                                           ; $6cff: $00
    rst $38                                       ; $6d00: $ff
    nop                                           ; $6d01: $00
    rst $38                                       ; $6d02: $ff
    nop                                           ; $6d03: $00
    rst $38                                       ; $6d04: $ff
    nop                                           ; $6d05: $00
    rst $38                                       ; $6d06: $ff
    nop                                           ; $6d07: $00
    rst $38                                       ; $6d08: $ff
    nop                                           ; $6d09: $00
    rst $38                                       ; $6d0a: $ff
    nop                                           ; $6d0b: $00
    rst $38                                       ; $6d0c: $ff
    nop                                           ; $6d0d: $00
    rst $38                                       ; $6d0e: $ff
    nop                                           ; $6d0f: $00
    rst $38                                       ; $6d10: $ff
    nop                                           ; $6d11: $00
    rst $38                                       ; $6d12: $ff
    nop                                           ; $6d13: $00
    rst $38                                       ; $6d14: $ff
    nop                                           ; $6d15: $00
    rst $38                                       ; $6d16: $ff
    nop                                           ; $6d17: $00
    rst $38                                       ; $6d18: $ff
    nop                                           ; $6d19: $00
    rst $38                                       ; $6d1a: $ff
    nop                                           ; $6d1b: $00
    rst $38                                       ; $6d1c: $ff
    nop                                           ; $6d1d: $00
    rst $38                                       ; $6d1e: $ff
    nop                                           ; $6d1f: $00
    rst $38                                       ; $6d20: $ff
    nop                                           ; $6d21: $00
    rst $38                                       ; $6d22: $ff
    nop                                           ; $6d23: $00
    rst $38                                       ; $6d24: $ff
    nop                                           ; $6d25: $00
    rst $38                                       ; $6d26: $ff
    nop                                           ; $6d27: $00
    rst $38                                       ; $6d28: $ff
    nop                                           ; $6d29: $00
    rst $38                                       ; $6d2a: $ff
    nop                                           ; $6d2b: $00
    rst $38                                       ; $6d2c: $ff
    nop                                           ; $6d2d: $00
    rst $38                                       ; $6d2e: $ff
    nop                                           ; $6d2f: $00
    rst $38                                       ; $6d30: $ff
    nop                                           ; $6d31: $00
    rst $38                                       ; $6d32: $ff
    nop                                           ; $6d33: $00
    rst $38                                       ; $6d34: $ff
    nop                                           ; $6d35: $00
    rst $38                                       ; $6d36: $ff
    nop                                           ; $6d37: $00
    rst $38                                       ; $6d38: $ff
    nop                                           ; $6d39: $00
    rst $38                                       ; $6d3a: $ff
    nop                                           ; $6d3b: $00
    rst $38                                       ; $6d3c: $ff
    nop                                           ; $6d3d: $00
    rst $38                                       ; $6d3e: $ff
    nop                                           ; $6d3f: $00
    rst $38                                       ; $6d40: $ff
    nop                                           ; $6d41: $00
    rst $38                                       ; $6d42: $ff
    nop                                           ; $6d43: $00
    rst $38                                       ; $6d44: $ff
    nop                                           ; $6d45: $00
    rst $38                                       ; $6d46: $ff
    nop                                           ; $6d47: $00
    rst $38                                       ; $6d48: $ff
    nop                                           ; $6d49: $00
    rst $38                                       ; $6d4a: $ff
    nop                                           ; $6d4b: $00
    rst $38                                       ; $6d4c: $ff
    nop                                           ; $6d4d: $00
    rst $38                                       ; $6d4e: $ff
    nop                                           ; $6d4f: $00
    rst $38                                       ; $6d50: $ff
    nop                                           ; $6d51: $00
    rst $38                                       ; $6d52: $ff
    nop                                           ; $6d53: $00
    rst $38                                       ; $6d54: $ff
    nop                                           ; $6d55: $00
    rst $38                                       ; $6d56: $ff
    nop                                           ; $6d57: $00
    rst $38                                       ; $6d58: $ff
    nop                                           ; $6d59: $00
    rst $38                                       ; $6d5a: $ff
    nop                                           ; $6d5b: $00
    rst $38                                       ; $6d5c: $ff
    nop                                           ; $6d5d: $00
    rst $38                                       ; $6d5e: $ff
    nop                                           ; $6d5f: $00
    rst $38                                       ; $6d60: $ff
    nop                                           ; $6d61: $00
    rst $38                                       ; $6d62: $ff
    nop                                           ; $6d63: $00
    rst $38                                       ; $6d64: $ff
    nop                                           ; $6d65: $00
    rst $38                                       ; $6d66: $ff
    nop                                           ; $6d67: $00
    rst $38                                       ; $6d68: $ff
    nop                                           ; $6d69: $00
    rst $38                                       ; $6d6a: $ff
    nop                                           ; $6d6b: $00
    rst $38                                       ; $6d6c: $ff
    nop                                           ; $6d6d: $00
    rst $38                                       ; $6d6e: $ff
    nop                                           ; $6d6f: $00
    rst $38                                       ; $6d70: $ff
    nop                                           ; $6d71: $00
    rst $38                                       ; $6d72: $ff
    nop                                           ; $6d73: $00
    rst $38                                       ; $6d74: $ff
    nop                                           ; $6d75: $00
    rst $38                                       ; $6d76: $ff
    nop                                           ; $6d77: $00
    rst $38                                       ; $6d78: $ff
    nop                                           ; $6d79: $00
    rst $38                                       ; $6d7a: $ff
    nop                                           ; $6d7b: $00
    rst $38                                       ; $6d7c: $ff
    nop                                           ; $6d7d: $00
    rst $38                                       ; $6d7e: $ff
    nop                                           ; $6d7f: $00
    rst $38                                       ; $6d80: $ff
    nop                                           ; $6d81: $00
    rst $38                                       ; $6d82: $ff
    nop                                           ; $6d83: $00
    rst $38                                       ; $6d84: $ff
    nop                                           ; $6d85: $00
    rst $38                                       ; $6d86: $ff
    nop                                           ; $6d87: $00
    rst $38                                       ; $6d88: $ff
    nop                                           ; $6d89: $00
    rst $38                                       ; $6d8a: $ff
    nop                                           ; $6d8b: $00
    rst $38                                       ; $6d8c: $ff
    nop                                           ; $6d8d: $00
    rst $38                                       ; $6d8e: $ff
    nop                                           ; $6d8f: $00
    rst $38                                       ; $6d90: $ff
    nop                                           ; $6d91: $00
    rst $38                                       ; $6d92: $ff
    nop                                           ; $6d93: $00
    rst $38                                       ; $6d94: $ff
    nop                                           ; $6d95: $00
    rst $38                                       ; $6d96: $ff
    nop                                           ; $6d97: $00
    rst $38                                       ; $6d98: $ff
    nop                                           ; $6d99: $00
    rst $38                                       ; $6d9a: $ff
    nop                                           ; $6d9b: $00
    rst $38                                       ; $6d9c: $ff
    nop                                           ; $6d9d: $00
    rst $38                                       ; $6d9e: $ff
    nop                                           ; $6d9f: $00
    rst $38                                       ; $6da0: $ff
    nop                                           ; $6da1: $00
    rst $38                                       ; $6da2: $ff
    nop                                           ; $6da3: $00
    rst $38                                       ; $6da4: $ff
    nop                                           ; $6da5: $00
    rst $38                                       ; $6da6: $ff
    nop                                           ; $6da7: $00
    rst $38                                       ; $6da8: $ff
    nop                                           ; $6da9: $00
    rst $38                                       ; $6daa: $ff
    nop                                           ; $6dab: $00
    rst $38                                       ; $6dac: $ff
    nop                                           ; $6dad: $00
    rst $38                                       ; $6dae: $ff
    nop                                           ; $6daf: $00
    rst $38                                       ; $6db0: $ff
    nop                                           ; $6db1: $00
    rst $38                                       ; $6db2: $ff
    nop                                           ; $6db3: $00
    rst $38                                       ; $6db4: $ff
    nop                                           ; $6db5: $00
    rst $38                                       ; $6db6: $ff
    nop                                           ; $6db7: $00
    rst $38                                       ; $6db8: $ff
    nop                                           ; $6db9: $00
    rst $38                                       ; $6dba: $ff
    nop                                           ; $6dbb: $00
    rst $38                                       ; $6dbc: $ff
    nop                                           ; $6dbd: $00
    rst $38                                       ; $6dbe: $ff
    nop                                           ; $6dbf: $00
    rst $38                                       ; $6dc0: $ff
    nop                                           ; $6dc1: $00
    rst $38                                       ; $6dc2: $ff
    nop                                           ; $6dc3: $00
    rst $38                                       ; $6dc4: $ff
    nop                                           ; $6dc5: $00
    rst $38                                       ; $6dc6: $ff
    nop                                           ; $6dc7: $00
    rst $38                                       ; $6dc8: $ff
    nop                                           ; $6dc9: $00
    rst $38                                       ; $6dca: $ff
    nop                                           ; $6dcb: $00
    rst $38                                       ; $6dcc: $ff
    nop                                           ; $6dcd: $00
    rst $38                                       ; $6dce: $ff
    nop                                           ; $6dcf: $00
    rst $38                                       ; $6dd0: $ff
    nop                                           ; $6dd1: $00
    rst $38                                       ; $6dd2: $ff
    nop                                           ; $6dd3: $00
    rst $38                                       ; $6dd4: $ff
    nop                                           ; $6dd5: $00
    rst $38                                       ; $6dd6: $ff
    nop                                           ; $6dd7: $00
    rst $38                                       ; $6dd8: $ff
    nop                                           ; $6dd9: $00
    rst $38                                       ; $6dda: $ff
    nop                                           ; $6ddb: $00
    rst $38                                       ; $6ddc: $ff
    nop                                           ; $6ddd: $00
    rst $38                                       ; $6dde: $ff
    nop                                           ; $6ddf: $00
    rst $38                                       ; $6de0: $ff
    nop                                           ; $6de1: $00
    rst $38                                       ; $6de2: $ff
    nop                                           ; $6de3: $00
    rst $38                                       ; $6de4: $ff
    nop                                           ; $6de5: $00
    rst $38                                       ; $6de6: $ff
    nop                                           ; $6de7: $00
    rst $38                                       ; $6de8: $ff
    nop                                           ; $6de9: $00
    rst $38                                       ; $6dea: $ff
    nop                                           ; $6deb: $00
    rst $38                                       ; $6dec: $ff
    nop                                           ; $6ded: $00
    rst $38                                       ; $6dee: $ff
    nop                                           ; $6def: $00
    rst $38                                       ; $6df0: $ff
    nop                                           ; $6df1: $00
    rst $38                                       ; $6df2: $ff
    nop                                           ; $6df3: $00
    rst $38                                       ; $6df4: $ff
    nop                                           ; $6df5: $00
    rst $38                                       ; $6df6: $ff
    nop                                           ; $6df7: $00
    rst $38                                       ; $6df8: $ff
    nop                                           ; $6df9: $00
    rst $38                                       ; $6dfa: $ff
    nop                                           ; $6dfb: $00
    rst $38                                       ; $6dfc: $ff
    nop                                           ; $6dfd: $00
    rst $38                                       ; $6dfe: $ff
    nop                                           ; $6dff: $00
    rst $38                                       ; $6e00: $ff
    nop                                           ; $6e01: $00
    rst $38                                       ; $6e02: $ff
    nop                                           ; $6e03: $00
    rst $38                                       ; $6e04: $ff
    nop                                           ; $6e05: $00
    rst $38                                       ; $6e06: $ff
    nop                                           ; $6e07: $00
    rst $38                                       ; $6e08: $ff
    nop                                           ; $6e09: $00
    rst $38                                       ; $6e0a: $ff
    nop                                           ; $6e0b: $00
    rst $38                                       ; $6e0c: $ff
    nop                                           ; $6e0d: $00
    rst $38                                       ; $6e0e: $ff
    nop                                           ; $6e0f: $00
    rst $38                                       ; $6e10: $ff
    nop                                           ; $6e11: $00
    rst $38                                       ; $6e12: $ff
    nop                                           ; $6e13: $00
    rst $38                                       ; $6e14: $ff
    nop                                           ; $6e15: $00
    rst $38                                       ; $6e16: $ff
    nop                                           ; $6e17: $00
    rst $38                                       ; $6e18: $ff
    nop                                           ; $6e19: $00
    rst $38                                       ; $6e1a: $ff
    nop                                           ; $6e1b: $00
    rst $38                                       ; $6e1c: $ff
    nop                                           ; $6e1d: $00
    rst $38                                       ; $6e1e: $ff
    nop                                           ; $6e1f: $00
    rst $38                                       ; $6e20: $ff
    nop                                           ; $6e21: $00
    rst $38                                       ; $6e22: $ff
    nop                                           ; $6e23: $00
    rst $38                                       ; $6e24: $ff
    nop                                           ; $6e25: $00
    rst $38                                       ; $6e26: $ff
    nop                                           ; $6e27: $00
    rst $38                                       ; $6e28: $ff
    nop                                           ; $6e29: $00
    rst $38                                       ; $6e2a: $ff
    nop                                           ; $6e2b: $00
    rst $38                                       ; $6e2c: $ff
    nop                                           ; $6e2d: $00
    rst $38                                       ; $6e2e: $ff
    nop                                           ; $6e2f: $00
    rst $38                                       ; $6e30: $ff
    nop                                           ; $6e31: $00
    rst $38                                       ; $6e32: $ff
    nop                                           ; $6e33: $00
    rst $38                                       ; $6e34: $ff
    nop                                           ; $6e35: $00
    rst $38                                       ; $6e36: $ff
    nop                                           ; $6e37: $00
    rst $38                                       ; $6e38: $ff
    nop                                           ; $6e39: $00
    rst $38                                       ; $6e3a: $ff
    nop                                           ; $6e3b: $00
    rst $38                                       ; $6e3c: $ff
    nop                                           ; $6e3d: $00
    rst $38                                       ; $6e3e: $ff
    nop                                           ; $6e3f: $00
    rst $38                                       ; $6e40: $ff
    nop                                           ; $6e41: $00
    rst $38                                       ; $6e42: $ff
    nop                                           ; $6e43: $00
    rst $38                                       ; $6e44: $ff
    nop                                           ; $6e45: $00
    rst $38                                       ; $6e46: $ff
    nop                                           ; $6e47: $00
    rst $38                                       ; $6e48: $ff
    nop                                           ; $6e49: $00
    rst $38                                       ; $6e4a: $ff
    nop                                           ; $6e4b: $00
    rst $38                                       ; $6e4c: $ff
    nop                                           ; $6e4d: $00
    rst $38                                       ; $6e4e: $ff
    nop                                           ; $6e4f: $00
    rst $38                                       ; $6e50: $ff
    nop                                           ; $6e51: $00
    rst $38                                       ; $6e52: $ff
    nop                                           ; $6e53: $00
    rst $38                                       ; $6e54: $ff
    nop                                           ; $6e55: $00
    rst $38                                       ; $6e56: $ff
    nop                                           ; $6e57: $00
    rst $38                                       ; $6e58: $ff
    nop                                           ; $6e59: $00
    rst $38                                       ; $6e5a: $ff
    nop                                           ; $6e5b: $00
    rst $38                                       ; $6e5c: $ff
    nop                                           ; $6e5d: $00
    rst $38                                       ; $6e5e: $ff
    nop                                           ; $6e5f: $00
    rst $38                                       ; $6e60: $ff
    nop                                           ; $6e61: $00
    rst $38                                       ; $6e62: $ff
    nop                                           ; $6e63: $00
    rst $38                                       ; $6e64: $ff
    nop                                           ; $6e65: $00
    rst $38                                       ; $6e66: $ff
    nop                                           ; $6e67: $00
    rst $38                                       ; $6e68: $ff
    nop                                           ; $6e69: $00
    rst $38                                       ; $6e6a: $ff
    nop                                           ; $6e6b: $00
    rst $38                                       ; $6e6c: $ff
    nop                                           ; $6e6d: $00
    rst $38                                       ; $6e6e: $ff
    nop                                           ; $6e6f: $00
    rst $38                                       ; $6e70: $ff
    nop                                           ; $6e71: $00
    rst $38                                       ; $6e72: $ff
    nop                                           ; $6e73: $00
    rst $38                                       ; $6e74: $ff
    nop                                           ; $6e75: $00
    rst $38                                       ; $6e76: $ff
    nop                                           ; $6e77: $00
    rst $38                                       ; $6e78: $ff
    nop                                           ; $6e79: $00
    rst $38                                       ; $6e7a: $ff
    nop                                           ; $6e7b: $00
    rst $38                                       ; $6e7c: $ff
    nop                                           ; $6e7d: $00
    rst $38                                       ; $6e7e: $ff
    nop                                           ; $6e7f: $00
    rst $38                                       ; $6e80: $ff
    nop                                           ; $6e81: $00
    rst $38                                       ; $6e82: $ff
    nop                                           ; $6e83: $00
    rst $38                                       ; $6e84: $ff
    nop                                           ; $6e85: $00
    rst $38                                       ; $6e86: $ff
    nop                                           ; $6e87: $00
    rst $38                                       ; $6e88: $ff
    nop                                           ; $6e89: $00
    rst $38                                       ; $6e8a: $ff
    nop                                           ; $6e8b: $00
    rst $38                                       ; $6e8c: $ff
    nop                                           ; $6e8d: $00
    rst $38                                       ; $6e8e: $ff
    nop                                           ; $6e8f: $00
    rst $38                                       ; $6e90: $ff
    nop                                           ; $6e91: $00
    rst $38                                       ; $6e92: $ff
    nop                                           ; $6e93: $00
    rst $38                                       ; $6e94: $ff
    nop                                           ; $6e95: $00
    rst $38                                       ; $6e96: $ff
    nop                                           ; $6e97: $00
    rst $38                                       ; $6e98: $ff
    nop                                           ; $6e99: $00
    rst $38                                       ; $6e9a: $ff
    nop                                           ; $6e9b: $00
    rst $38                                       ; $6e9c: $ff
    nop                                           ; $6e9d: $00
    rst $38                                       ; $6e9e: $ff
    nop                                           ; $6e9f: $00
    rst $38                                       ; $6ea0: $ff
    nop                                           ; $6ea1: $00
    rst $38                                       ; $6ea2: $ff
    nop                                           ; $6ea3: $00
    rst $38                                       ; $6ea4: $ff
    nop                                           ; $6ea5: $00
    rst $38                                       ; $6ea6: $ff
    nop                                           ; $6ea7: $00
    rst $38                                       ; $6ea8: $ff
    nop                                           ; $6ea9: $00
    rst $38                                       ; $6eaa: $ff
    nop                                           ; $6eab: $00
    rst $38                                       ; $6eac: $ff
    nop                                           ; $6ead: $00
    rst $38                                       ; $6eae: $ff
    nop                                           ; $6eaf: $00
    rst $38                                       ; $6eb0: $ff
    nop                                           ; $6eb1: $00
    rst $38                                       ; $6eb2: $ff
    nop                                           ; $6eb3: $00
    rst $38                                       ; $6eb4: $ff
    nop                                           ; $6eb5: $00
    rst $38                                       ; $6eb6: $ff
    nop                                           ; $6eb7: $00
    rst $38                                       ; $6eb8: $ff
    nop                                           ; $6eb9: $00
    rst $38                                       ; $6eba: $ff
    nop                                           ; $6ebb: $00
    rst $38                                       ; $6ebc: $ff
    nop                                           ; $6ebd: $00
    rst $38                                       ; $6ebe: $ff
    nop                                           ; $6ebf: $00
    rst $38                                       ; $6ec0: $ff
    nop                                           ; $6ec1: $00
    rst $38                                       ; $6ec2: $ff
    nop                                           ; $6ec3: $00
    rst $38                                       ; $6ec4: $ff
    nop                                           ; $6ec5: $00
    rst $38                                       ; $6ec6: $ff
    nop                                           ; $6ec7: $00
    rst $38                                       ; $6ec8: $ff
    nop                                           ; $6ec9: $00
    rst $38                                       ; $6eca: $ff
    nop                                           ; $6ecb: $00
    rst $38                                       ; $6ecc: $ff
    nop                                           ; $6ecd: $00
    rst $38                                       ; $6ece: $ff
    nop                                           ; $6ecf: $00
    rst $38                                       ; $6ed0: $ff
    nop                                           ; $6ed1: $00
    rst $38                                       ; $6ed2: $ff
    nop                                           ; $6ed3: $00
    rst $38                                       ; $6ed4: $ff
    nop                                           ; $6ed5: $00
    rst $38                                       ; $6ed6: $ff
    nop                                           ; $6ed7: $00
    rst $38                                       ; $6ed8: $ff
    nop                                           ; $6ed9: $00
    rst $38                                       ; $6eda: $ff
    nop                                           ; $6edb: $00
    rst $38                                       ; $6edc: $ff
    nop                                           ; $6edd: $00
    rst $38                                       ; $6ede: $ff
    nop                                           ; $6edf: $00
    rst $38                                       ; $6ee0: $ff
    nop                                           ; $6ee1: $00
    rst $38                                       ; $6ee2: $ff
    nop                                           ; $6ee3: $00
    rst $38                                       ; $6ee4: $ff
    nop                                           ; $6ee5: $00
    rst $38                                       ; $6ee6: $ff
    nop                                           ; $6ee7: $00
    rst $38                                       ; $6ee8: $ff
    nop                                           ; $6ee9: $00
    rst $38                                       ; $6eea: $ff
    nop                                           ; $6eeb: $00
    rst $38                                       ; $6eec: $ff
    nop                                           ; $6eed: $00
    rst $38                                       ; $6eee: $ff
    nop                                           ; $6eef: $00
    rst $38                                       ; $6ef0: $ff
    nop                                           ; $6ef1: $00
    rst $38                                       ; $6ef2: $ff
    nop                                           ; $6ef3: $00
    rst $38                                       ; $6ef4: $ff
    nop                                           ; $6ef5: $00
    rst $38                                       ; $6ef6: $ff
    nop                                           ; $6ef7: $00
    rst $38                                       ; $6ef8: $ff
    nop                                           ; $6ef9: $00
    rst $38                                       ; $6efa: $ff
    nop                                           ; $6efb: $00
    rst $38                                       ; $6efc: $ff
    nop                                           ; $6efd: $00
    rst $38                                       ; $6efe: $ff
    nop                                           ; $6eff: $00
    rst $38                                       ; $6f00: $ff
    nop                                           ; $6f01: $00
    rst $38                                       ; $6f02: $ff
    nop                                           ; $6f03: $00
    rst $38                                       ; $6f04: $ff
    nop                                           ; $6f05: $00
    rst $38                                       ; $6f06: $ff
    nop                                           ; $6f07: $00
    rst $38                                       ; $6f08: $ff
    nop                                           ; $6f09: $00
    rst $38                                       ; $6f0a: $ff
    nop                                           ; $6f0b: $00
    rst $38                                       ; $6f0c: $ff
    nop                                           ; $6f0d: $00
    rst $38                                       ; $6f0e: $ff
    nop                                           ; $6f0f: $00
    rst $38                                       ; $6f10: $ff
    nop                                           ; $6f11: $00
    rst $38                                       ; $6f12: $ff
    nop                                           ; $6f13: $00
    rst $38                                       ; $6f14: $ff
    nop                                           ; $6f15: $00
    rst $38                                       ; $6f16: $ff
    nop                                           ; $6f17: $00
    rst $38                                       ; $6f18: $ff
    nop                                           ; $6f19: $00
    rst $38                                       ; $6f1a: $ff
    nop                                           ; $6f1b: $00
    rst $38                                       ; $6f1c: $ff
    nop                                           ; $6f1d: $00
    rst $38                                       ; $6f1e: $ff
    nop                                           ; $6f1f: $00
    rst $38                                       ; $6f20: $ff
    nop                                           ; $6f21: $00
    rst $38                                       ; $6f22: $ff
    nop                                           ; $6f23: $00
    rst $38                                       ; $6f24: $ff
    nop                                           ; $6f25: $00
    rst $38                                       ; $6f26: $ff
    nop                                           ; $6f27: $00
    rst $38                                       ; $6f28: $ff
    nop                                           ; $6f29: $00
    rst $38                                       ; $6f2a: $ff
    nop                                           ; $6f2b: $00
    rst $38                                       ; $6f2c: $ff
    nop                                           ; $6f2d: $00
    rst $38                                       ; $6f2e: $ff
    nop                                           ; $6f2f: $00
    rst $38                                       ; $6f30: $ff
    nop                                           ; $6f31: $00
    rst $38                                       ; $6f32: $ff
    nop                                           ; $6f33: $00
    rst $38                                       ; $6f34: $ff
    nop                                           ; $6f35: $00
    rst $38                                       ; $6f36: $ff
    nop                                           ; $6f37: $00
    rst $38                                       ; $6f38: $ff
    nop                                           ; $6f39: $00
    rst $38                                       ; $6f3a: $ff
    nop                                           ; $6f3b: $00
    rst $38                                       ; $6f3c: $ff
    nop                                           ; $6f3d: $00
    rst $38                                       ; $6f3e: $ff
    nop                                           ; $6f3f: $00
    rst $38                                       ; $6f40: $ff
    nop                                           ; $6f41: $00
    rst $38                                       ; $6f42: $ff
    nop                                           ; $6f43: $00
    rst $38                                       ; $6f44: $ff
    nop                                           ; $6f45: $00
    rst $38                                       ; $6f46: $ff
    nop                                           ; $6f47: $00
    rst $38                                       ; $6f48: $ff
    nop                                           ; $6f49: $00
    rst $38                                       ; $6f4a: $ff
    nop                                           ; $6f4b: $00
    rst $38                                       ; $6f4c: $ff
    nop                                           ; $6f4d: $00
    rst $38                                       ; $6f4e: $ff
    nop                                           ; $6f4f: $00
    rst $38                                       ; $6f50: $ff
    nop                                           ; $6f51: $00
    rst $38                                       ; $6f52: $ff
    nop                                           ; $6f53: $00
    rst $38                                       ; $6f54: $ff
    nop                                           ; $6f55: $00
    rst $38                                       ; $6f56: $ff
    nop                                           ; $6f57: $00
    rst $38                                       ; $6f58: $ff
    nop                                           ; $6f59: $00
    rst $38                                       ; $6f5a: $ff
    nop                                           ; $6f5b: $00
    rst $38                                       ; $6f5c: $ff
    nop                                           ; $6f5d: $00
    rst $38                                       ; $6f5e: $ff
    nop                                           ; $6f5f: $00
    rst $38                                       ; $6f60: $ff
    nop                                           ; $6f61: $00
    rst $38                                       ; $6f62: $ff
    nop                                           ; $6f63: $00
    rst $38                                       ; $6f64: $ff
    nop                                           ; $6f65: $00
    rst $38                                       ; $6f66: $ff
    nop                                           ; $6f67: $00
    rst $38                                       ; $6f68: $ff
    nop                                           ; $6f69: $00
    rst $38                                       ; $6f6a: $ff
    nop                                           ; $6f6b: $00
    rst $38                                       ; $6f6c: $ff
    nop                                           ; $6f6d: $00
    rst $38                                       ; $6f6e: $ff
    nop                                           ; $6f6f: $00
    rst $38                                       ; $6f70: $ff
    nop                                           ; $6f71: $00
    rst $38                                       ; $6f72: $ff
    nop                                           ; $6f73: $00
    rst $38                                       ; $6f74: $ff
    nop                                           ; $6f75: $00
    rst $38                                       ; $6f76: $ff
    nop                                           ; $6f77: $00
    rst $38                                       ; $6f78: $ff
    nop                                           ; $6f79: $00
    rst $38                                       ; $6f7a: $ff
    nop                                           ; $6f7b: $00
    rst $38                                       ; $6f7c: $ff
    nop                                           ; $6f7d: $00
    rst $38                                       ; $6f7e: $ff
    nop                                           ; $6f7f: $00
    rst $38                                       ; $6f80: $ff
    nop                                           ; $6f81: $00
    rst $38                                       ; $6f82: $ff
    nop                                           ; $6f83: $00
    rst $38                                       ; $6f84: $ff
    nop                                           ; $6f85: $00
    rst $38                                       ; $6f86: $ff
    nop                                           ; $6f87: $00
    rst $38                                       ; $6f88: $ff
    nop                                           ; $6f89: $00
    rst $38                                       ; $6f8a: $ff
    nop                                           ; $6f8b: $00
    rst $38                                       ; $6f8c: $ff
    nop                                           ; $6f8d: $00
    rst $38                                       ; $6f8e: $ff
    nop                                           ; $6f8f: $00
    rst $38                                       ; $6f90: $ff
    nop                                           ; $6f91: $00
    rst $38                                       ; $6f92: $ff
    nop                                           ; $6f93: $00
    rst $38                                       ; $6f94: $ff
    nop                                           ; $6f95: $00
    rst $38                                       ; $6f96: $ff
    nop                                           ; $6f97: $00
    rst $38                                       ; $6f98: $ff
    nop                                           ; $6f99: $00
    rst $38                                       ; $6f9a: $ff
    nop                                           ; $6f9b: $00
    rst $38                                       ; $6f9c: $ff
    nop                                           ; $6f9d: $00
    rst $38                                       ; $6f9e: $ff
    nop                                           ; $6f9f: $00
    rst $38                                       ; $6fa0: $ff
    nop                                           ; $6fa1: $00
    rst $38                                       ; $6fa2: $ff
    nop                                           ; $6fa3: $00
    rst $38                                       ; $6fa4: $ff
    nop                                           ; $6fa5: $00
    rst $38                                       ; $6fa6: $ff
    nop                                           ; $6fa7: $00
    rst $38                                       ; $6fa8: $ff
    nop                                           ; $6fa9: $00
    rst $38                                       ; $6faa: $ff
    nop                                           ; $6fab: $00
    rst $38                                       ; $6fac: $ff
    nop                                           ; $6fad: $00
    rst $38                                       ; $6fae: $ff
    nop                                           ; $6faf: $00
    rst $38                                       ; $6fb0: $ff
    nop                                           ; $6fb1: $00
    rst $38                                       ; $6fb2: $ff
    nop                                           ; $6fb3: $00
    rst $38                                       ; $6fb4: $ff
    nop                                           ; $6fb5: $00
    rst $38                                       ; $6fb6: $ff
    nop                                           ; $6fb7: $00
    rst $38                                       ; $6fb8: $ff
    nop                                           ; $6fb9: $00
    rst $38                                       ; $6fba: $ff
    nop                                           ; $6fbb: $00
    rst $38                                       ; $6fbc: $ff
    nop                                           ; $6fbd: $00
    rst $38                                       ; $6fbe: $ff
    nop                                           ; $6fbf: $00
    rst $38                                       ; $6fc0: $ff
    nop                                           ; $6fc1: $00
    rst $38                                       ; $6fc2: $ff
    nop                                           ; $6fc3: $00
    rst $38                                       ; $6fc4: $ff
    nop                                           ; $6fc5: $00
    rst $38                                       ; $6fc6: $ff
    nop                                           ; $6fc7: $00
    rst $38                                       ; $6fc8: $ff
    nop                                           ; $6fc9: $00
    rst $38                                       ; $6fca: $ff
    nop                                           ; $6fcb: $00
    rst $38                                       ; $6fcc: $ff
    nop                                           ; $6fcd: $00
    rst $38                                       ; $6fce: $ff
    nop                                           ; $6fcf: $00
    rst $38                                       ; $6fd0: $ff
    nop                                           ; $6fd1: $00
    rst $38                                       ; $6fd2: $ff
    nop                                           ; $6fd3: $00
    rst $38                                       ; $6fd4: $ff
    nop                                           ; $6fd5: $00
    rst $38                                       ; $6fd6: $ff
    nop                                           ; $6fd7: $00
    rst $38                                       ; $6fd8: $ff
    nop                                           ; $6fd9: $00
    rst $38                                       ; $6fda: $ff
    nop                                           ; $6fdb: $00
    rst $38                                       ; $6fdc: $ff
    nop                                           ; $6fdd: $00
    rst $38                                       ; $6fde: $ff
    nop                                           ; $6fdf: $00
    rst $38                                       ; $6fe0: $ff
    nop                                           ; $6fe1: $00
    rst $38                                       ; $6fe2: $ff
    nop                                           ; $6fe3: $00
    rst $38                                       ; $6fe4: $ff
    nop                                           ; $6fe5: $00
    rst $38                                       ; $6fe6: $ff
    nop                                           ; $6fe7: $00
    rst $38                                       ; $6fe8: $ff
    nop                                           ; $6fe9: $00
    rst $38                                       ; $6fea: $ff
    nop                                           ; $6feb: $00
    rst $38                                       ; $6fec: $ff
    nop                                           ; $6fed: $00
    rst $38                                       ; $6fee: $ff
    nop                                           ; $6fef: $00
    rst $38                                       ; $6ff0: $ff
    rst $38                                       ; $6ff1: $ff
    rst $38                                       ; $6ff2: $ff
    rst $38                                       ; $6ff3: $ff
    rst $38                                       ; $6ff4: $ff
    rst $38                                       ; $6ff5: $ff
    rst $38                                       ; $6ff6: $ff
    rst $38                                       ; $6ff7: $ff
    rst $38                                       ; $6ff8: $ff
    rst $38                                       ; $6ff9: $ff
    rst $38                                       ; $6ffa: $ff
    rst $38                                       ; $6ffb: $ff
    rst $38                                       ; $6ffc: $ff
    rst $38                                       ; $6ffd: $ff
    rst $38                                       ; $6ffe: $ff
    rst $38                                       ; $6fff: $ff
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
    nop                                           ; $7020: $00
    nop                                           ; $7021: $00
    nop                                           ; $7022: $00
    nop                                           ; $7023: $00
    nop                                           ; $7024: $00
    nop                                           ; $7025: $00
    nop                                           ; $7026: $00
    nop                                           ; $7027: $00
    nop                                           ; $7028: $00
    nop                                           ; $7029: $00
    nop                                           ; $702a: $00
    nop                                           ; $702b: $00
    nop                                           ; $702c: $00
    nop                                           ; $702d: $00
    nop                                           ; $702e: $00
    nop                                           ; $702f: $00
    nop                                           ; $7030: $00
    nop                                           ; $7031: $00
    nop                                           ; $7032: $00
    nop                                           ; $7033: $00
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
    nop                                           ; $7041: $00
    nop                                           ; $7042: $00
    nop                                           ; $7043: $00
    nop                                           ; $7044: $00
    nop                                           ; $7045: $00
    nop                                           ; $7046: $00
    nop                                           ; $7047: $00
    nop                                           ; $7048: $00
    nop                                           ; $7049: $00
    nop                                           ; $704a: $00
    nop                                           ; $704b: $00
    nop                                           ; $704c: $00
    nop                                           ; $704d: $00
    nop                                           ; $704e: $00
    nop                                           ; $704f: $00
    nop                                           ; $7050: $00
    nop                                           ; $7051: $00
    nop                                           ; $7052: $00
    nop                                           ; $7053: $00
    nop                                           ; $7054: $00
    nop                                           ; $7055: $00
    nop                                           ; $7056: $00
    nop                                           ; $7057: $00
    nop                                           ; $7058: $00
    nop                                           ; $7059: $00
    nop                                           ; $705a: $00
    nop                                           ; $705b: $00
    nop                                           ; $705c: $00
    nop                                           ; $705d: $00
    nop                                           ; $705e: $00
    nop                                           ; $705f: $00
    nop                                           ; $7060: $00
    nop                                           ; $7061: $00
    nop                                           ; $7062: $00
    nop                                           ; $7063: $00
    nop                                           ; $7064: $00
    nop                                           ; $7065: $00
    nop                                           ; $7066: $00
    nop                                           ; $7067: $00
    nop                                           ; $7068: $00
    nop                                           ; $7069: $00
    nop                                           ; $706a: $00
    nop                                           ; $706b: $00
    nop                                           ; $706c: $00
    nop                                           ; $706d: $00
    nop                                           ; $706e: $00
    nop                                           ; $706f: $00
    nop                                           ; $7070: $00
    nop                                           ; $7071: $00
    nop                                           ; $7072: $00
    nop                                           ; $7073: $00
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
    nop                                           ; $7080: $00
    nop                                           ; $7081: $00
    nop                                           ; $7082: $00
    nop                                           ; $7083: $00
    nop                                           ; $7084: $00
    nop                                           ; $7085: $00
    nop                                           ; $7086: $00
    nop                                           ; $7087: $00
    nop                                           ; $7088: $00
    nop                                           ; $7089: $00
    nop                                           ; $708a: $00
    nop                                           ; $708b: $00
    nop                                           ; $708c: $00
    nop                                           ; $708d: $00
    nop                                           ; $708e: $00
    nop                                           ; $708f: $00
    nop                                           ; $7090: $00
    nop                                           ; $7091: $00
    nop                                           ; $7092: $00
    nop                                           ; $7093: $00
    nop                                           ; $7094: $00
    nop                                           ; $7095: $00
    nop                                           ; $7096: $00
    nop                                           ; $7097: $00
    nop                                           ; $7098: $00
    nop                                           ; $7099: $00
    nop                                           ; $709a: $00
    nop                                           ; $709b: $00
    nop                                           ; $709c: $00
    nop                                           ; $709d: $00
    nop                                           ; $709e: $00
    nop                                           ; $709f: $00
    nop                                           ; $70a0: $00
    nop                                           ; $70a1: $00
    nop                                           ; $70a2: $00
    nop                                           ; $70a3: $00
    nop                                           ; $70a4: $00
    nop                                           ; $70a5: $00
    nop                                           ; $70a6: $00
    nop                                           ; $70a7: $00
    nop                                           ; $70a8: $00
    nop                                           ; $70a9: $00
    nop                                           ; $70aa: $00
    nop                                           ; $70ab: $00
    nop                                           ; $70ac: $00
    nop                                           ; $70ad: $00
    nop                                           ; $70ae: $00
    nop                                           ; $70af: $00
    nop                                           ; $70b0: $00
    nop                                           ; $70b1: $00
    nop                                           ; $70b2: $00
    nop                                           ; $70b3: $00
    nop                                           ; $70b4: $00
    nop                                           ; $70b5: $00
    nop                                           ; $70b6: $00
    nop                                           ; $70b7: $00
    nop                                           ; $70b8: $00
    nop                                           ; $70b9: $00
    nop                                           ; $70ba: $00
    nop                                           ; $70bb: $00
    nop                                           ; $70bc: $00
    nop                                           ; $70bd: $00
    nop                                           ; $70be: $00
    nop                                           ; $70bf: $00
    nop                                           ; $70c0: $00
    nop                                           ; $70c1: $00
    nop                                           ; $70c2: $00
    nop                                           ; $70c3: $00
    nop                                           ; $70c4: $00
    nop                                           ; $70c5: $00
    nop                                           ; $70c6: $00
    nop                                           ; $70c7: $00
    nop                                           ; $70c8: $00
    nop                                           ; $70c9: $00
    nop                                           ; $70ca: $00
    nop                                           ; $70cb: $00
    nop                                           ; $70cc: $00
    nop                                           ; $70cd: $00
    nop                                           ; $70ce: $00
    nop                                           ; $70cf: $00
    nop                                           ; $70d0: $00
    nop                                           ; $70d1: $00
    nop                                           ; $70d2: $00
    nop                                           ; $70d3: $00
    nop                                           ; $70d4: $00
    nop                                           ; $70d5: $00
    nop                                           ; $70d6: $00
    nop                                           ; $70d7: $00
    nop                                           ; $70d8: $00
    nop                                           ; $70d9: $00
    nop                                           ; $70da: $00
    nop                                           ; $70db: $00
    nop                                           ; $70dc: $00
    nop                                           ; $70dd: $00
    nop                                           ; $70de: $00
    nop                                           ; $70df: $00
    nop                                           ; $70e0: $00
    nop                                           ; $70e1: $00
    nop                                           ; $70e2: $00
    nop                                           ; $70e3: $00
    nop                                           ; $70e4: $00
    nop                                           ; $70e5: $00
    nop                                           ; $70e6: $00
    nop                                           ; $70e7: $00
    nop                                           ; $70e8: $00
    nop                                           ; $70e9: $00
    nop                                           ; $70ea: $00
    nop                                           ; $70eb: $00
    nop                                           ; $70ec: $00
    nop                                           ; $70ed: $00
    nop                                           ; $70ee: $00
    nop                                           ; $70ef: $00
    nop                                           ; $70f0: $00
    nop                                           ; $70f1: $00
    nop                                           ; $70f2: $00
    nop                                           ; $70f3: $00
    nop                                           ; $70f4: $00
    nop                                           ; $70f5: $00
    nop                                           ; $70f6: $00
    nop                                           ; $70f7: $00
    nop                                           ; $70f8: $00
    nop                                           ; $70f9: $00
    nop                                           ; $70fa: $00
    nop                                           ; $70fb: $00
    nop                                           ; $70fc: $00
    nop                                           ; $70fd: $00
    nop                                           ; $70fe: $00
    nop                                           ; $70ff: $00
    nop                                           ; $7100: $00
    nop                                           ; $7101: $00
    nop                                           ; $7102: $00
    nop                                           ; $7103: $00
    nop                                           ; $7104: $00
    nop                                           ; $7105: $00
    nop                                           ; $7106: $00
    nop                                           ; $7107: $00
    nop                                           ; $7108: $00
    nop                                           ; $7109: $00
    nop                                           ; $710a: $00
    nop                                           ; $710b: $00
    nop                                           ; $710c: $00
    nop                                           ; $710d: $00
    nop                                           ; $710e: $00
    nop                                           ; $710f: $00
    nop                                           ; $7110: $00
    nop                                           ; $7111: $00
    nop                                           ; $7112: $00
    nop                                           ; $7113: $00
    nop                                           ; $7114: $00
    nop                                           ; $7115: $00
    nop                                           ; $7116: $00
    nop                                           ; $7117: $00
    nop                                           ; $7118: $00
    nop                                           ; $7119: $00
    nop                                           ; $711a: $00
    nop                                           ; $711b: $00
    nop                                           ; $711c: $00
    nop                                           ; $711d: $00
    nop                                           ; $711e: $00
    nop                                           ; $711f: $00
    nop                                           ; $7120: $00
    nop                                           ; $7121: $00
    nop                                           ; $7122: $00
    nop                                           ; $7123: $00
    nop                                           ; $7124: $00
    nop                                           ; $7125: $00
    nop                                           ; $7126: $00
    nop                                           ; $7127: $00
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
    nop                                           ; $7137: $00
    nop                                           ; $7138: $00
    nop                                           ; $7139: $00
    nop                                           ; $713a: $00
    nop                                           ; $713b: $00
    nop                                           ; $713c: $00
    nop                                           ; $713d: $00
    nop                                           ; $713e: $00
    nop                                           ; $713f: $00
    nop                                           ; $7140: $00
    nop                                           ; $7141: $00
    nop                                           ; $7142: $00
    nop                                           ; $7143: $00
    nop                                           ; $7144: $00
    nop                                           ; $7145: $00
    nop                                           ; $7146: $00
    nop                                           ; $7147: $00
    nop                                           ; $7148: $00
    nop                                           ; $7149: $00
    nop                                           ; $714a: $00
    nop                                           ; $714b: $00
    nop                                           ; $714c: $00
    nop                                           ; $714d: $00
    nop                                           ; $714e: $00
    nop                                           ; $714f: $00
    nop                                           ; $7150: $00
    nop                                           ; $7151: $00
    nop                                           ; $7152: $00
    nop                                           ; $7153: $00
    nop                                           ; $7154: $00
    nop                                           ; $7155: $00
    nop                                           ; $7156: $00
    nop                                           ; $7157: $00
    nop                                           ; $7158: $00
    nop                                           ; $7159: $00
    nop                                           ; $715a: $00
    nop                                           ; $715b: $00
    nop                                           ; $715c: $00
    nop                                           ; $715d: $00
    nop                                           ; $715e: $00
    nop                                           ; $715f: $00
    nop                                           ; $7160: $00
    nop                                           ; $7161: $00
    nop                                           ; $7162: $00
    nop                                           ; $7163: $00
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
    nop                                           ; $7170: $00
    nop                                           ; $7171: $00
    nop                                           ; $7172: $00
    nop                                           ; $7173: $00
    nop                                           ; $7174: $00
    nop                                           ; $7175: $00
    nop                                           ; $7176: $00
    nop                                           ; $7177: $00
    nop                                           ; $7178: $00
    nop                                           ; $7179: $00
    nop                                           ; $717a: $00
    nop                                           ; $717b: $00
    nop                                           ; $717c: $00
    nop                                           ; $717d: $00
    nop                                           ; $717e: $00
    nop                                           ; $717f: $00
    nop                                           ; $7180: $00
    nop                                           ; $7181: $00
    nop                                           ; $7182: $00
    nop                                           ; $7183: $00
    nop                                           ; $7184: $00
    nop                                           ; $7185: $00
    nop                                           ; $7186: $00
    nop                                           ; $7187: $00
    nop                                           ; $7188: $00
    nop                                           ; $7189: $00
    nop                                           ; $718a: $00
    nop                                           ; $718b: $00
    nop                                           ; $718c: $00
    nop                                           ; $718d: $00
    nop                                           ; $718e: $00
    nop                                           ; $718f: $00
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
    nop                                           ; $719c: $00
    nop                                           ; $719d: $00
    nop                                           ; $719e: $00
    nop                                           ; $719f: $00
    nop                                           ; $71a0: $00
    nop                                           ; $71a1: $00
    nop                                           ; $71a2: $00
    nop                                           ; $71a3: $00
    nop                                           ; $71a4: $00
    nop                                           ; $71a5: $00
    nop                                           ; $71a6: $00
    nop                                           ; $71a7: $00
    nop                                           ; $71a8: $00
    nop                                           ; $71a9: $00
    nop                                           ; $71aa: $00
    nop                                           ; $71ab: $00
    nop                                           ; $71ac: $00
    nop                                           ; $71ad: $00
    nop                                           ; $71ae: $00
    nop                                           ; $71af: $00
    nop                                           ; $71b0: $00
    nop                                           ; $71b1: $00
    nop                                           ; $71b2: $00
    nop                                           ; $71b3: $00
    nop                                           ; $71b4: $00
    nop                                           ; $71b5: $00
    nop                                           ; $71b6: $00
    nop                                           ; $71b7: $00
    nop                                           ; $71b8: $00
    nop                                           ; $71b9: $00
    nop                                           ; $71ba: $00
    nop                                           ; $71bb: $00
    nop                                           ; $71bc: $00
    nop                                           ; $71bd: $00
    nop                                           ; $71be: $00
    nop                                           ; $71bf: $00
    nop                                           ; $71c0: $00
    nop                                           ; $71c1: $00
    nop                                           ; $71c2: $00
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
    nop                                           ; $71d1: $00
    nop                                           ; $71d2: $00
    nop                                           ; $71d3: $00
    nop                                           ; $71d4: $00
    nop                                           ; $71d5: $00
    nop                                           ; $71d6: $00
    nop                                           ; $71d7: $00
    nop                                           ; $71d8: $00
    nop                                           ; $71d9: $00
    nop                                           ; $71da: $00
    nop                                           ; $71db: $00
    nop                                           ; $71dc: $00
    nop                                           ; $71dd: $00
    nop                                           ; $71de: $00
    nop                                           ; $71df: $00
    nop                                           ; $71e0: $00
    nop                                           ; $71e1: $00
    nop                                           ; $71e2: $00
    nop                                           ; $71e3: $00
    nop                                           ; $71e4: $00
    nop                                           ; $71e5: $00
    nop                                           ; $71e6: $00
    nop                                           ; $71e7: $00
    nop                                           ; $71e8: $00
    nop                                           ; $71e9: $00
    nop                                           ; $71ea: $00
    nop                                           ; $71eb: $00
    nop                                           ; $71ec: $00
    nop                                           ; $71ed: $00
    nop                                           ; $71ee: $00
    nop                                           ; $71ef: $00
    nop                                           ; $71f0: $00
    nop                                           ; $71f1: $00
    nop                                           ; $71f2: $00
    nop                                           ; $71f3: $00
    nop                                           ; $71f4: $00
    nop                                           ; $71f5: $00
    nop                                           ; $71f6: $00
    nop                                           ; $71f7: $00
    nop                                           ; $71f8: $00
    nop                                           ; $71f9: $00
    nop                                           ; $71fa: $00
    nop                                           ; $71fb: $00
    nop                                           ; $71fc: $00
    nop                                           ; $71fd: $00
    nop                                           ; $71fe: $00
    nop                                           ; $71ff: $00
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
    nop                                           ; $7250: $00
    nop                                           ; $7251: $00
    nop                                           ; $7252: $00
    nop                                           ; $7253: $00
    nop                                           ; $7254: $00
    nop                                           ; $7255: $00
    nop                                           ; $7256: $00
    nop                                           ; $7257: $00
    nop                                           ; $7258: $00
    nop                                           ; $7259: $00
    nop                                           ; $725a: $00
    nop                                           ; $725b: $00
    nop                                           ; $725c: $00
    nop                                           ; $725d: $00
    nop                                           ; $725e: $00
    nop                                           ; $725f: $00
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
    nop                                           ; $726a: $00
    nop                                           ; $726b: $00
    nop                                           ; $726c: $00
    nop                                           ; $726d: $00
    nop                                           ; $726e: $00
    nop                                           ; $726f: $00
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
    nop                                           ; $727a: $00
    nop                                           ; $727b: $00
    nop                                           ; $727c: $00
    nop                                           ; $727d: $00
    nop                                           ; $727e: $00
    nop                                           ; $727f: $00
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
    nop                                           ; $728a: $00
    nop                                           ; $728b: $00
    nop                                           ; $728c: $00
    nop                                           ; $728d: $00
    nop                                           ; $728e: $00
    nop                                           ; $728f: $00
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
    nop                                           ; $729a: $00
    nop                                           ; $729b: $00
    nop                                           ; $729c: $00
    nop                                           ; $729d: $00
    nop                                           ; $729e: $00
    nop                                           ; $729f: $00
    nop                                           ; $72a0: $00
    nop                                           ; $72a1: $00
    nop                                           ; $72a2: $00
    nop                                           ; $72a3: $00
    nop                                           ; $72a4: $00
    nop                                           ; $72a5: $00
    nop                                           ; $72a6: $00
    nop                                           ; $72a7: $00
    nop                                           ; $72a8: $00
    nop                                           ; $72a9: $00
    nop                                           ; $72aa: $00
    nop                                           ; $72ab: $00
    nop                                           ; $72ac: $00
    nop                                           ; $72ad: $00
    nop                                           ; $72ae: $00
    nop                                           ; $72af: $00
    nop                                           ; $72b0: $00
    nop                                           ; $72b1: $00
    nop                                           ; $72b2: $00
    nop                                           ; $72b3: $00
    nop                                           ; $72b4: $00
    nop                                           ; $72b5: $00
    nop                                           ; $72b6: $00
    nop                                           ; $72b7: $00
    nop                                           ; $72b8: $00
    nop                                           ; $72b9: $00
    nop                                           ; $72ba: $00
    nop                                           ; $72bb: $00
    nop                                           ; $72bc: $00
    nop                                           ; $72bd: $00
    nop                                           ; $72be: $00
    nop                                           ; $72bf: $00
    nop                                           ; $72c0: $00
    nop                                           ; $72c1: $00
    nop                                           ; $72c2: $00
    nop                                           ; $72c3: $00
    nop                                           ; $72c4: $00
    nop                                           ; $72c5: $00
    nop                                           ; $72c6: $00
    nop                                           ; $72c7: $00
    nop                                           ; $72c8: $00
    nop                                           ; $72c9: $00
    nop                                           ; $72ca: $00
    nop                                           ; $72cb: $00
    nop                                           ; $72cc: $00
    nop                                           ; $72cd: $00
    nop                                           ; $72ce: $00
    nop                                           ; $72cf: $00
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
    nop                                           ; $72de: $00
    nop                                           ; $72df: $00
    nop                                           ; $72e0: $00
    nop                                           ; $72e1: $00
    nop                                           ; $72e2: $00
    nop                                           ; $72e3: $00
    nop                                           ; $72e4: $00
    nop                                           ; $72e5: $00
    nop                                           ; $72e6: $00
    nop                                           ; $72e7: $00
    nop                                           ; $72e8: $00
    nop                                           ; $72e9: $00
    nop                                           ; $72ea: $00
    nop                                           ; $72eb: $00
    nop                                           ; $72ec: $00
    nop                                           ; $72ed: $00
    nop                                           ; $72ee: $00
    nop                                           ; $72ef: $00
    nop                                           ; $72f0: $00
    nop                                           ; $72f1: $00
    nop                                           ; $72f2: $00
    nop                                           ; $72f3: $00
    nop                                           ; $72f4: $00
    nop                                           ; $72f5: $00
    nop                                           ; $72f6: $00
    nop                                           ; $72f7: $00
    nop                                           ; $72f8: $00
    nop                                           ; $72f9: $00
    nop                                           ; $72fa: $00
    nop                                           ; $72fb: $00
    nop                                           ; $72fc: $00
    nop                                           ; $72fd: $00
    nop                                           ; $72fe: $00
    nop                                           ; $72ff: $00
    nop                                           ; $7300: $00
    nop                                           ; $7301: $00
    nop                                           ; $7302: $00
    nop                                           ; $7303: $00
    nop                                           ; $7304: $00
    nop                                           ; $7305: $00
    nop                                           ; $7306: $00
    nop                                           ; $7307: $00
    nop                                           ; $7308: $00
    nop                                           ; $7309: $00
    nop                                           ; $730a: $00
    nop                                           ; $730b: $00
    nop                                           ; $730c: $00
    nop                                           ; $730d: $00
    nop                                           ; $730e: $00
    nop                                           ; $730f: $00
    nop                                           ; $7310: $00
    nop                                           ; $7311: $00
    nop                                           ; $7312: $00
    nop                                           ; $7313: $00
    nop                                           ; $7314: $00
    nop                                           ; $7315: $00
    nop                                           ; $7316: $00
    nop                                           ; $7317: $00
    nop                                           ; $7318: $00
    nop                                           ; $7319: $00
    nop                                           ; $731a: $00
    nop                                           ; $731b: $00
    nop                                           ; $731c: $00
    nop                                           ; $731d: $00
    nop                                           ; $731e: $00
    nop                                           ; $731f: $00
    nop                                           ; $7320: $00
    nop                                           ; $7321: $00
    nop                                           ; $7322: $00

Jump_007_7323:
    nop                                           ; $7323: $00
    nop                                           ; $7324: $00
    nop                                           ; $7325: $00
    nop                                           ; $7326: $00
    nop                                           ; $7327: $00
    nop                                           ; $7328: $00
    nop                                           ; $7329: $00
    nop                                           ; $732a: $00
    nop                                           ; $732b: $00
    nop                                           ; $732c: $00
    nop                                           ; $732d: $00
    nop                                           ; $732e: $00
    nop                                           ; $732f: $00
    nop                                           ; $7330: $00
    nop                                           ; $7331: $00
    nop                                           ; $7332: $00
    nop                                           ; $7333: $00
    nop                                           ; $7334: $00
    nop                                           ; $7335: $00
    nop                                           ; $7336: $00
    nop                                           ; $7337: $00
    nop                                           ; $7338: $00
    nop                                           ; $7339: $00
    nop                                           ; $733a: $00
    nop                                           ; $733b: $00
    nop                                           ; $733c: $00
    nop                                           ; $733d: $00
    nop                                           ; $733e: $00
    nop                                           ; $733f: $00
    nop                                           ; $7340: $00
    nop                                           ; $7341: $00
    nop                                           ; $7342: $00
    nop                                           ; $7343: $00
    nop                                           ; $7344: $00
    nop                                           ; $7345: $00
    nop                                           ; $7346: $00
    nop                                           ; $7347: $00
    nop                                           ; $7348: $00
    nop                                           ; $7349: $00
    nop                                           ; $734a: $00
    nop                                           ; $734b: $00
    nop                                           ; $734c: $00
    nop                                           ; $734d: $00
    nop                                           ; $734e: $00
    nop                                           ; $734f: $00
    nop                                           ; $7350: $00
    nop                                           ; $7351: $00
    nop                                           ; $7352: $00
    nop                                           ; $7353: $00
    nop                                           ; $7354: $00
    nop                                           ; $7355: $00
    nop                                           ; $7356: $00
    nop                                           ; $7357: $00
    nop                                           ; $7358: $00
    nop                                           ; $7359: $00
    nop                                           ; $735a: $00
    nop                                           ; $735b: $00
    nop                                           ; $735c: $00
    nop                                           ; $735d: $00
    nop                                           ; $735e: $00
    nop                                           ; $735f: $00
    nop                                           ; $7360: $00
    nop                                           ; $7361: $00
    nop                                           ; $7362: $00
    nop                                           ; $7363: $00
    nop                                           ; $7364: $00
    nop                                           ; $7365: $00
    nop                                           ; $7366: $00
    nop                                           ; $7367: $00
    nop                                           ; $7368: $00
    nop                                           ; $7369: $00
    nop                                           ; $736a: $00
    nop                                           ; $736b: $00
    nop                                           ; $736c: $00
    nop                                           ; $736d: $00
    nop                                           ; $736e: $00
    nop                                           ; $736f: $00
    nop                                           ; $7370: $00
    nop                                           ; $7371: $00
    nop                                           ; $7372: $00
    nop                                           ; $7373: $00
    nop                                           ; $7374: $00
    nop                                           ; $7375: $00
    nop                                           ; $7376: $00
    nop                                           ; $7377: $00
    nop                                           ; $7378: $00
    nop                                           ; $7379: $00
    nop                                           ; $737a: $00
    nop                                           ; $737b: $00
    nop                                           ; $737c: $00
    nop                                           ; $737d: $00
    nop                                           ; $737e: $00
    nop                                           ; $737f: $00
    nop                                           ; $7380: $00
    nop                                           ; $7381: $00
    nop                                           ; $7382: $00
    nop                                           ; $7383: $00
    nop                                           ; $7384: $00
    nop                                           ; $7385: $00
    nop                                           ; $7386: $00
    nop                                           ; $7387: $00
    nop                                           ; $7388: $00
    nop                                           ; $7389: $00
    nop                                           ; $738a: $00
    nop                                           ; $738b: $00
    nop                                           ; $738c: $00
    nop                                           ; $738d: $00
    nop                                           ; $738e: $00
    nop                                           ; $738f: $00
    nop                                           ; $7390: $00
    nop                                           ; $7391: $00
    nop                                           ; $7392: $00
    nop                                           ; $7393: $00
    nop                                           ; $7394: $00
    nop                                           ; $7395: $00
    nop                                           ; $7396: $00
    nop                                           ; $7397: $00
    nop                                           ; $7398: $00
    nop                                           ; $7399: $00
    nop                                           ; $739a: $00
    nop                                           ; $739b: $00
    nop                                           ; $739c: $00
    nop                                           ; $739d: $00
    nop                                           ; $739e: $00
    nop                                           ; $739f: $00
    nop                                           ; $73a0: $00
    nop                                           ; $73a1: $00
    nop                                           ; $73a2: $00
    nop                                           ; $73a3: $00
    nop                                           ; $73a4: $00
    nop                                           ; $73a5: $00
    nop                                           ; $73a6: $00
    nop                                           ; $73a7: $00
    nop                                           ; $73a8: $00
    nop                                           ; $73a9: $00
    nop                                           ; $73aa: $00
    nop                                           ; $73ab: $00
    nop                                           ; $73ac: $00
    nop                                           ; $73ad: $00
    nop                                           ; $73ae: $00
    nop                                           ; $73af: $00
    nop                                           ; $73b0: $00
    nop                                           ; $73b1: $00
    nop                                           ; $73b2: $00
    nop                                           ; $73b3: $00
    nop                                           ; $73b4: $00
    nop                                           ; $73b5: $00
    nop                                           ; $73b6: $00
    nop                                           ; $73b7: $00
    nop                                           ; $73b8: $00
    nop                                           ; $73b9: $00
    nop                                           ; $73ba: $00
    nop                                           ; $73bb: $00
    nop                                           ; $73bc: $00
    nop                                           ; $73bd: $00
    nop                                           ; $73be: $00
    nop                                           ; $73bf: $00
    nop                                           ; $73c0: $00
    nop                                           ; $73c1: $00
    nop                                           ; $73c2: $00
    nop                                           ; $73c3: $00
    nop                                           ; $73c4: $00
    nop                                           ; $73c5: $00
    nop                                           ; $73c6: $00
    nop                                           ; $73c7: $00
    nop                                           ; $73c8: $00
    nop                                           ; $73c9: $00
    nop                                           ; $73ca: $00
    nop                                           ; $73cb: $00
    nop                                           ; $73cc: $00
    nop                                           ; $73cd: $00
    nop                                           ; $73ce: $00
    nop                                           ; $73cf: $00
    nop                                           ; $73d0: $00
    nop                                           ; $73d1: $00
    nop                                           ; $73d2: $00
    nop                                           ; $73d3: $00
    nop                                           ; $73d4: $00
    nop                                           ; $73d5: $00
    nop                                           ; $73d6: $00
    nop                                           ; $73d7: $00
    nop                                           ; $73d8: $00
    nop                                           ; $73d9: $00
    nop                                           ; $73da: $00
    nop                                           ; $73db: $00
    nop                                           ; $73dc: $00
    nop                                           ; $73dd: $00
    nop                                           ; $73de: $00
    nop                                           ; $73df: $00
    nop                                           ; $73e0: $00
    nop                                           ; $73e1: $00
    nop                                           ; $73e2: $00
    nop                                           ; $73e3: $00
    nop                                           ; $73e4: $00
    nop                                           ; $73e5: $00
    nop                                           ; $73e6: $00
    nop                                           ; $73e7: $00
    nop                                           ; $73e8: $00
    nop                                           ; $73e9: $00
    nop                                           ; $73ea: $00
    nop                                           ; $73eb: $00
    nop                                           ; $73ec: $00
    nop                                           ; $73ed: $00
    nop                                           ; $73ee: $00
    nop                                           ; $73ef: $00
    nop                                           ; $73f0: $00
    nop                                           ; $73f1: $00
    nop                                           ; $73f2: $00
    nop                                           ; $73f3: $00
    nop                                           ; $73f4: $00
    nop                                           ; $73f5: $00
    nop                                           ; $73f6: $00
    nop                                           ; $73f7: $00
    nop                                           ; $73f8: $00
    nop                                           ; $73f9: $00
    nop                                           ; $73fa: $00
    nop                                           ; $73fb: $00
    nop                                           ; $73fc: $00
    nop                                           ; $73fd: $00
    nop                                           ; $73fe: $00
    nop                                           ; $73ff: $00
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

SmallMarioTileData::
    INCBIN "gfx/SmallMarioTileData.2bpp"

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
