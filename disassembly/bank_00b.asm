; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

TimeTrialLevelSelectV2TileData::
    INCBIN "gfx/TimeTrialLevelSelectV2TileData.2bpp"

PromptFontTileData::
    INCBIN "gfx/PromptFontTileData.2bpp"

    ; padding
    ds $500, $00

UnmappedTileMap::
    db $2d, $2d, $2d, $2d, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $00, $01, $2d, $2d, $2d, $2d, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $1a, $1a, $1a, $1a, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $10, $11, $1a, $1a, $1a, $1a, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $25, $25, $25, $25, $25, $25, $25, $25, $25, $25, $25, $25, $25, $25, $25, $25, $25, $25, $25, $25, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $26, $85, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $87, $26, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $27, $88, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $89, $27, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $28, $88, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $89, $28, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $29, $88, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $89, $29, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $2a, $88, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $89, $2a, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $2b, $88, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de, $df, $89, $2b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $2c, $88, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $89, $2c, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $2d, $88, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff, $89, $2d, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $2d, $8a, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8c, $2e, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $38, $39, $3a, $2d, $73, $2d, $70, $71, $73, $73, $74, $2d, $2d, $75, $76, $77, $2d, $2d, $2e, $2f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
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

Picross15x15ScreenTileMap::
    db $a7, $85, $86, $87, $88, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $89, $8a, $8b, $8c, $8d, $7e, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $8e, $8f, $90, $91, $92, $93, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $94, $95, $96, $97, $98, $99, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $9a, $9b, $9c, $9d, $9e, $9f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $a0, $a1, $a2, $a3, $a4, $a5, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $a8, $a9, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $aa, $ab, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de, $df, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $ac, $ad, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $ae, $af, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $b0, $b1, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $b2, $b3, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $b4, $b5, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $b6, $b7, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $b8, $b9, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $ba, $bb, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $bc, $bd, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $be, $bf, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
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

Picross5x5ScreenTileMap::
    db $a7, $85, $86, $87, $88, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $89, $8a, $8b, $8c, $8d, $7e, $00, $01, $02, $03, $7e, $49, $4a, $4b, $eb, $ec, $fd, $7e, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $8e, $8f, $90, $91, $92, $93, $10, $11, $12, $13, $dd, $f8, $f9, $fa, $fb, $fc, $fe, $df, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $94, $95, $96, $97, $98, $99, $20, $21, $22, $23, $ed, $ee, $ee, $ee, $ee, $ee, $ee, $ef, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $9a, $9b, $9c, $9d, $9e, $9f, $30, $31, $32, $33, $ed, $cc, $cd, $d9, $c9, $db, $d8, $ef, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $a0, $a1, $a2, $a3, $a4, $a5, $40, $41, $42, $43, $ed, $ee, $ee, $ee, $ee, $ee, $ee, $ef, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $a8, $a9, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $be, $ca, $cb, $d9, $c9, $db, $da, $ef, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $aa, $ab, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $bf, $ee, $ee, $ee, $ee, $ee, $ee, $ef, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $ac, $ad, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $bf, $dc, $ff, $c8, $e8, $e9, $ea, $ef, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $ae, $af, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $bf, $ee, $ee, $ee, $ee, $ee, $ee, $ef, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $b0, $b1, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $b2, $b3, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $b4, $b5, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $b6, $b7, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $b8, $b9, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $ba, $bb, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $ce, $cf, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $bc, $bd, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
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

Picross10x10ScreenTileMap::
    db $a7, $85, $86, $87, $88, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $89, $8a, $8b, $8c, $8d, $7e, $00, $01, $02, $03, $04, $05, $06, $07, $b8, $b9, $ba, $bb, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $8e, $8f, $90, $91, $92, $93, $10, $11, $12, $13, $14, $15, $16, $17, $b8, $ba, $bb, $bc, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $94, $95, $96, $97, $98, $99, $20, $21, $22, $23, $24, $25, $26, $27, $b8, $b9, $ba, $bb, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $9a, $9b, $9c, $9d, $9e, $9f, $30, $31, $32, $33, $34, $35, $36, $37, $b8, $ba, $bb, $bc, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $a0, $a1, $a2, $a3, $a4, $a5, $40, $41, $42, $43, $44, $45, $46, $47, $b8, $b9, $ba, $bb, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $a8, $a9, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $b8, $ba, $bb, $bc, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $aa, $ab, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $b8, $b9, $ba, $bb, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $ac, $ad, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $b8, $ba, $bb, $bc, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $ae, $af, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $b8, $b9, $ba, $bb, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $b0, $b1, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $b8, $ba, $bb, $bc, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $b2, $b3, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $b8, $b9, $ba, $bb, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $b4, $b5, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $b8, $ba, $bb, $bc, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $b6, $b7, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $b8, $b9, $ba, $bb, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $1c, $1d, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $2c, $2d, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $3c, $3d, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $a7, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a6, $a7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
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

TitleScreenTileMap::
    db $01, $01, $84, $02, $03, $04, $05, $06, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $01, $01, $08, $09, $0a, $0b, $0c, $0d, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $01, $01, $0e, $0f, $10, $11, $12, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $13, $14, $15, $16, $17, $18, $19, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $1a, $1b, $01, $01, $01, $1c, $1d, $1e, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $1f, $20, $21, $01, $01, $01, $01, $22, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $85, $01, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $38, $38, $38, $38, $38, $38, $86, $01, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $39, $23, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $87, $86, $01, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $4f, $53, $54, $55, $56, $88, $86, $01, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $01, $01, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $5c, $60, $61, $62, $63, $89, $86, $01, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $01, $01, $64, $65, $66, $67, $68, $69, $6a, $6b, $65, $65, $65, $65, $65, $65, $65, $8a, $01, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $01, $01, $01, $01, $01, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $01, $01, $01, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $01, $01, $01, $01, $01, $01, $6c, $6d, $6e, $6f, $77, $78, $79, $7a, $7b, $01, $01, $01, $01, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $01, $01, $01, $6c, $6d, $6e, $6f, $7c, $7d, $7e, $7f, $73, $80, $81, $82, $83, $8b, $01, $01, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84
    db $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84
    db $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84
    db $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84
    db $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84
    db $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84
    db $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84
    db $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84
    db $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84
    db $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84

GameSavedScreenTileMap::
    db $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $01, $00, $02, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $04, $3e, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $01, $05, $0a, $0b, $0c, $0d, $0e, $0f, $10, $37, $37, $37, $37, $37, $37, $37, $06, $3a, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $01, $00, $05, $37, $37, $37, $37, $37, $37, $37, $37, $37, $37, $37, $37, $37, $37, $06, $3b, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $01, $05, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $2a, $37, $37, $37, $06, $3a, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $01, $00, $05, $37, $37, $37, $37, $37, $37, $37, $37, $37, $37, $37, $37, $37, $37, $06, $3b, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $01, $05, $1b, $1c, $1d, $1e, $1f, $37, $37, $37, $37, $37, $37, $37, $37, $37, $06, $3a, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $01, $00, $05, $37, $37, $37, $37, $37, $37, $37, $37, $37, $37, $37, $37, $37, $37, $06, $3b, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $01, $05, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $37, $37, $37, $37, $06, $3a, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $01, $00, $07, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $09, $3b, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $01, $3d, $39, $38, $39, $38, $39, $38, $39, $38, $39, $38, $39, $38, $39, $38, $39, $3c, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
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
    rst $38                                       ; $7014: $ff
    rst $38                                       ; $7015: $ff
    rst $38                                       ; $7016: $ff
    rst $38                                       ; $7017: $ff
    rst $38                                       ; $7018: $ff
    rst $38                                       ; $7019: $ff
    rst $38                                       ; $701a: $ff
    rst $38                                       ; $701b: $ff
    rst $38                                       ; $701c: $ff
    rst $38                                       ; $701d: $ff
    rst $38                                       ; $701e: $ff
    rst $38                                       ; $701f: $ff
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
    rst $38                                       ; $7034: $ff
    rst $38                                       ; $7035: $ff
    rst $38                                       ; $7036: $ff
    rst $38                                       ; $7037: $ff
    rst $38                                       ; $7038: $ff
    rst $38                                       ; $7039: $ff
    rst $38                                       ; $703a: $ff
    rst $38                                       ; $703b: $ff
    rst $38                                       ; $703c: $ff
    rst $38                                       ; $703d: $ff
    rst $38                                       ; $703e: $ff
    rst $38                                       ; $703f: $ff
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
    rst $38                                       ; $7054: $ff
    rst $38                                       ; $7055: $ff
    rst $38                                       ; $7056: $ff
    rst $38                                       ; $7057: $ff
    rst $38                                       ; $7058: $ff
    rst $38                                       ; $7059: $ff
    rst $38                                       ; $705a: $ff
    rst $38                                       ; $705b: $ff
    rst $38                                       ; $705c: $ff
    rst $38                                       ; $705d: $ff
    rst $38                                       ; $705e: $ff
    rst $38                                       ; $705f: $ff
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
    rst $38                                       ; $7074: $ff
    rst $38                                       ; $7075: $ff
    rst $38                                       ; $7076: $ff
    rst $38                                       ; $7077: $ff
    rst $38                                       ; $7078: $ff
    rst $38                                       ; $7079: $ff
    rst $38                                       ; $707a: $ff
    rst $38                                       ; $707b: $ff
    rst $38                                       ; $707c: $ff
    rst $38                                       ; $707d: $ff
    rst $38                                       ; $707e: $ff
    rst $38                                       ; $707f: $ff
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
    rst $38                                       ; $7094: $ff
    rst $38                                       ; $7095: $ff
    rst $38                                       ; $7096: $ff
    rst $38                                       ; $7097: $ff
    rst $38                                       ; $7098: $ff
    rst $38                                       ; $7099: $ff
    rst $38                                       ; $709a: $ff
    rst $38                                       ; $709b: $ff
    rst $38                                       ; $709c: $ff
    rst $38                                       ; $709d: $ff
    rst $38                                       ; $709e: $ff
    rst $38                                       ; $709f: $ff
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
    rst $38                                       ; $70b4: $ff
    rst $38                                       ; $70b5: $ff
    rst $38                                       ; $70b6: $ff
    rst $38                                       ; $70b7: $ff
    rst $38                                       ; $70b8: $ff
    rst $38                                       ; $70b9: $ff
    rst $38                                       ; $70ba: $ff
    rst $38                                       ; $70bb: $ff
    rst $38                                       ; $70bc: $ff
    rst $38                                       ; $70bd: $ff
    rst $38                                       ; $70be: $ff
    rst $38                                       ; $70bf: $ff
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
    rst $38                                       ; $70d4: $ff
    rst $38                                       ; $70d5: $ff
    rst $38                                       ; $70d6: $ff
    rst $38                                       ; $70d7: $ff
    rst $38                                       ; $70d8: $ff
    rst $38                                       ; $70d9: $ff
    rst $38                                       ; $70da: $ff
    rst $38                                       ; $70db: $ff
    rst $38                                       ; $70dc: $ff
    rst $38                                       ; $70dd: $ff
    rst $38                                       ; $70de: $ff
    rst $38                                       ; $70df: $ff
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
    rst $38                                       ; $70f4: $ff
    rst $38                                       ; $70f5: $ff
    rst $38                                       ; $70f6: $ff
    rst $38                                       ; $70f7: $ff
    rst $38                                       ; $70f8: $ff
    rst $38                                       ; $70f9: $ff
    rst $38                                       ; $70fa: $ff
    rst $38                                       ; $70fb: $ff
    rst $38                                       ; $70fc: $ff
    rst $38                                       ; $70fd: $ff
    rst $38                                       ; $70fe: $ff
    rst $38                                       ; $70ff: $ff
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
    rst $38                                       ; $7114: $ff
    rst $38                                       ; $7115: $ff
    rst $38                                       ; $7116: $ff
    rst $38                                       ; $7117: $ff
    rst $38                                       ; $7118: $ff
    rst $38                                       ; $7119: $ff
    rst $38                                       ; $711a: $ff
    rst $38                                       ; $711b: $ff
    rst $38                                       ; $711c: $ff
    rst $38                                       ; $711d: $ff
    rst $38                                       ; $711e: $ff
    rst $38                                       ; $711f: $ff
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
    rst $38                                       ; $7134: $ff
    rst $38                                       ; $7135: $ff
    rst $38                                       ; $7136: $ff
    rst $38                                       ; $7137: $ff
    rst $38                                       ; $7138: $ff
    rst $38                                       ; $7139: $ff
    rst $38                                       ; $713a: $ff
    rst $38                                       ; $713b: $ff
    rst $38                                       ; $713c: $ff
    rst $38                                       ; $713d: $ff
    rst $38                                       ; $713e: $ff
    rst $38                                       ; $713f: $ff
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
    rst $38                                       ; $7154: $ff
    rst $38                                       ; $7155: $ff
    rst $38                                       ; $7156: $ff
    rst $38                                       ; $7157: $ff
    rst $38                                       ; $7158: $ff
    rst $38                                       ; $7159: $ff
    rst $38                                       ; $715a: $ff
    rst $38                                       ; $715b: $ff
    rst $38                                       ; $715c: $ff
    rst $38                                       ; $715d: $ff
    rst $38                                       ; $715e: $ff
    rst $38                                       ; $715f: $ff
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
    rst $38                                       ; $7174: $ff
    rst $38                                       ; $7175: $ff
    rst $38                                       ; $7176: $ff
    rst $38                                       ; $7177: $ff
    rst $38                                       ; $7178: $ff
    rst $38                                       ; $7179: $ff
    rst $38                                       ; $717a: $ff
    rst $38                                       ; $717b: $ff
    rst $38                                       ; $717c: $ff
    rst $38                                       ; $717d: $ff
    rst $38                                       ; $717e: $ff
    rst $38                                       ; $717f: $ff
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
    rst $38                                       ; $7194: $ff
    rst $38                                       ; $7195: $ff
    rst $38                                       ; $7196: $ff
    rst $38                                       ; $7197: $ff
    rst $38                                       ; $7198: $ff
    rst $38                                       ; $7199: $ff
    rst $38                                       ; $719a: $ff
    rst $38                                       ; $719b: $ff
    rst $38                                       ; $719c: $ff
    rst $38                                       ; $719d: $ff
    rst $38                                       ; $719e: $ff
    rst $38                                       ; $719f: $ff
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
    rst $38                                       ; $71b4: $ff
    rst $38                                       ; $71b5: $ff
    rst $38                                       ; $71b6: $ff
    rst $38                                       ; $71b7: $ff
    rst $38                                       ; $71b8: $ff
    rst $38                                       ; $71b9: $ff
    rst $38                                       ; $71ba: $ff
    rst $38                                       ; $71bb: $ff
    rst $38                                       ; $71bc: $ff
    rst $38                                       ; $71bd: $ff
    rst $38                                       ; $71be: $ff
    rst $38                                       ; $71bf: $ff
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
    rst $38                                       ; $71d4: $ff
    rst $38                                       ; $71d5: $ff
    rst $38                                       ; $71d6: $ff
    rst $38                                       ; $71d7: $ff
    rst $38                                       ; $71d8: $ff
    rst $38                                       ; $71d9: $ff
    rst $38                                       ; $71da: $ff
    rst $38                                       ; $71db: $ff
    rst $38                                       ; $71dc: $ff
    rst $38                                       ; $71dd: $ff
    rst $38                                       ; $71de: $ff
    rst $38                                       ; $71df: $ff
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
    rst $38                                       ; $71f4: $ff
    rst $38                                       ; $71f5: $ff
    rst $38                                       ; $71f6: $ff
    rst $38                                       ; $71f7: $ff
    rst $38                                       ; $71f8: $ff
    rst $38                                       ; $71f9: $ff
    rst $38                                       ; $71fa: $ff
    rst $38                                       ; $71fb: $ff
    rst $38                                       ; $71fc: $ff
    rst $38                                       ; $71fd: $ff
    rst $38                                       ; $71fe: $ff
    rst $38                                       ; $71ff: $ff
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
    rst $38                                       ; $7214: $ff
    rst $38                                       ; $7215: $ff
    rst $38                                       ; $7216: $ff
    rst $38                                       ; $7217: $ff
    rst $38                                       ; $7218: $ff
    rst $38                                       ; $7219: $ff
    rst $38                                       ; $721a: $ff
    rst $38                                       ; $721b: $ff
    rst $38                                       ; $721c: $ff
    rst $38                                       ; $721d: $ff
    rst $38                                       ; $721e: $ff
    rst $38                                       ; $721f: $ff
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
    rst $38                                       ; $7234: $ff
    rst $38                                       ; $7235: $ff
    rst $38                                       ; $7236: $ff
    rst $38                                       ; $7237: $ff
    rst $38                                       ; $7238: $ff
    rst $38                                       ; $7239: $ff
    rst $38                                       ; $723a: $ff
    rst $38                                       ; $723b: $ff
    rst $38                                       ; $723c: $ff
    rst $38                                       ; $723d: $ff
    rst $38                                       ; $723e: $ff
    rst $38                                       ; $723f: $ff
    rst $38                                       ; $7240: $ff
    rst $38                                       ; $7241: $ff
    rst $38                                       ; $7242: $ff
    rst $38                                       ; $7243: $ff
    rst $38                                       ; $7244: $ff
    rst $38                                       ; $7245: $ff
    rst $38                                       ; $7246: $ff
    rst $38                                       ; $7247: $ff
    rst $38                                       ; $7248: $ff
    rst $38                                       ; $7249: $ff
    rst $38                                       ; $724a: $ff
    rst $38                                       ; $724b: $ff
    rst $38                                       ; $724c: $ff
    rst $38                                       ; $724d: $ff
    rst $38                                       ; $724e: $ff
    rst $38                                       ; $724f: $ff
    rst $38                                       ; $7250: $ff
    rst $38                                       ; $7251: $ff
    rst $38                                       ; $7252: $ff
    rst $38                                       ; $7253: $ff
    rst $38                                       ; $7254: $ff
    rst $38                                       ; $7255: $ff
    rst $38                                       ; $7256: $ff
    rst $38                                       ; $7257: $ff
    rst $38                                       ; $7258: $ff
    rst $38                                       ; $7259: $ff
    rst $38                                       ; $725a: $ff
    rst $38                                       ; $725b: $ff
    rst $38                                       ; $725c: $ff
    rst $38                                       ; $725d: $ff
    rst $38                                       ; $725e: $ff
    rst $38                                       ; $725f: $ff
    rst $38                                       ; $7260: $ff
    rst $38                                       ; $7261: $ff
    rst $38                                       ; $7262: $ff
    rst $38                                       ; $7263: $ff
    rst $38                                       ; $7264: $ff
    rst $38                                       ; $7265: $ff
    rst $38                                       ; $7266: $ff
    rst $38                                       ; $7267: $ff
    rst $38                                       ; $7268: $ff
    rst $38                                       ; $7269: $ff
    rst $38                                       ; $726a: $ff
    rst $38                                       ; $726b: $ff
    rst $38                                       ; $726c: $ff
    rst $38                                       ; $726d: $ff
    rst $38                                       ; $726e: $ff
    rst $38                                       ; $726f: $ff
    rst $38                                       ; $7270: $ff
    rst $38                                       ; $7271: $ff
    rst $38                                       ; $7272: $ff
    rst $38                                       ; $7273: $ff
    rst $38                                       ; $7274: $ff
    rst $38                                       ; $7275: $ff
    rst $38                                       ; $7276: $ff
    rst $38                                       ; $7277: $ff
    rst $38                                       ; $7278: $ff
    rst $38                                       ; $7279: $ff
    rst $38                                       ; $727a: $ff
    rst $38                                       ; $727b: $ff
    rst $38                                       ; $727c: $ff
    rst $38                                       ; $727d: $ff
    rst $38                                       ; $727e: $ff
    rst $38                                       ; $727f: $ff
    rst $38                                       ; $7280: $ff
    rst $38                                       ; $7281: $ff
    rst $38                                       ; $7282: $ff
    rst $38                                       ; $7283: $ff
    rst $38                                       ; $7284: $ff
    rst $38                                       ; $7285: $ff
    rst $38                                       ; $7286: $ff
    rst $38                                       ; $7287: $ff
    rst $38                                       ; $7288: $ff
    rst $38                                       ; $7289: $ff
    rst $38                                       ; $728a: $ff
    rst $38                                       ; $728b: $ff
    rst $38                                       ; $728c: $ff
    rst $38                                       ; $728d: $ff
    rst $38                                       ; $728e: $ff
    rst $38                                       ; $728f: $ff
    rst $38                                       ; $7290: $ff
    rst $38                                       ; $7291: $ff
    rst $38                                       ; $7292: $ff
    rst $38                                       ; $7293: $ff
    rst $38                                       ; $7294: $ff
    rst $38                                       ; $7295: $ff
    rst $38                                       ; $7296: $ff
    rst $38                                       ; $7297: $ff
    rst $38                                       ; $7298: $ff
    rst $38                                       ; $7299: $ff
    rst $38                                       ; $729a: $ff
    rst $38                                       ; $729b: $ff
    rst $38                                       ; $729c: $ff
    rst $38                                       ; $729d: $ff
    rst $38                                       ; $729e: $ff
    rst $38                                       ; $729f: $ff
    rst $38                                       ; $72a0: $ff
    rst $38                                       ; $72a1: $ff
    rst $38                                       ; $72a2: $ff
    rst $38                                       ; $72a3: $ff
    rst $38                                       ; $72a4: $ff
    rst $38                                       ; $72a5: $ff
    rst $38                                       ; $72a6: $ff
    rst $38                                       ; $72a7: $ff
    rst $38                                       ; $72a8: $ff
    rst $38                                       ; $72a9: $ff
    rst $38                                       ; $72aa: $ff
    rst $38                                       ; $72ab: $ff
    rst $38                                       ; $72ac: $ff
    rst $38                                       ; $72ad: $ff
    rst $38                                       ; $72ae: $ff
    rst $38                                       ; $72af: $ff
    rst $38                                       ; $72b0: $ff
    rst $38                                       ; $72b1: $ff
    rst $38                                       ; $72b2: $ff
    rst $38                                       ; $72b3: $ff
    rst $38                                       ; $72b4: $ff
    rst $38                                       ; $72b5: $ff
    rst $38                                       ; $72b6: $ff
    rst $38                                       ; $72b7: $ff
    rst $38                                       ; $72b8: $ff
    rst $38                                       ; $72b9: $ff
    rst $38                                       ; $72ba: $ff
    rst $38                                       ; $72bb: $ff
    rst $38                                       ; $72bc: $ff
    rst $38                                       ; $72bd: $ff
    rst $38                                       ; $72be: $ff
    rst $38                                       ; $72bf: $ff
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

GameSelectScreenTileMap::
    db $30, $30, $30, $f7, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $f7, $31, $30, $30, $30, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $3c, $3c, $3c, $f8, $3d, $3e, $3f, $40, $41, $42, $43, $41, $44, $45, $46, $f8, $3d, $3c, $3c, $3c, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $47, $b0, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $6d, $6e, $b0, $6f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $af, $47, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $70, $71, $6f, $ab, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ac, $af, $66, $67, $68, $97, $73, $74, $75, $76, $77, $78, $79, $7a, $a0, $69, $72, $48, $ab, $ac, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ae, $ac, $af, $6a, $6b, $a1, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $aa, $6c, $57, $ab, $ac, $ad, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $25, $ae, $ac, $af, $12, $e9, $ea, $eb, $ec, $ed, $f0, $f1, $f2, $f3, $f4, $1d, $ab, $ac, $ad, $58, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $1e, $1f, $ae, $ad, $20, $b0, $b0, $b0, $ee, $ef, $f5, $f6, $b0, $b0, $b0, $21, $ae, $ad, $59, $5a, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $22, $23, $21, $20, $b0, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $b0, $21, $5b, $5c, $5d, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $26, $27, $b0, $b0, $b0, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $b0, $b0, $b0, $5e, $5f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $28, $b0, $b0, $b0, $b0, $e9, $ea, $eb, $ec, $ed, $f0, $f1, $f2, $f3, $f4, $b0, $b0, $b0, $b0, $60, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $29, $b0, $2a, $b0, $b0, $b0, $b0, $b0, $ee, $ef, $f5, $f6, $b0, $b0, $b0, $b0, $b0, $61, $62, $63, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $2b, $2c, $11, $2d, $2e, $7c, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $7d, $b0, $64, $11, $65, $66, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $2f, $30, $31, $ac, $32, $7e, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $7f, $33, $ac, $67, $68, $69, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $34, $35, $36, $37, $ac, $7a, $3d, $3e, $3f, $40, $41, $42, $43, $44, $7b, $ac, $6a, $6b, $6c, $6d, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $38, $39, $ac, $3a, $3b, $b0, $b0, $b0, $4b, $4c, $4d, $4e, $b0, $b0, $b0, $46, $6e, $ac, $6f, $70, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $47, $11, $48, $49, $4a, $f9, $fa, $fb, $fc, $fd, $0a, $0b, $0c, $0d, $24, $4f, $71, $72, $11, $73, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $50, $51, $52, $53, $54, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $57, $74, $75, $76, $77, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27
    db $27, $27, $27, $27, $27, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27
    db $27, $27, $27, $27, $27, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27
    db $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27
    db $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27
    db $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27
    db $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27
    db $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27
    db $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27
    db $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27
    db $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27
    db $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27
    db $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27
    db $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27

DataSelectScreenTileMap::
    db $0c, $0c, $0c, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $00, $01, $0c, $0c, $0c, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $1c, $1c, $1c, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $10, $11, $1c, $1c, $1c, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $c7, $c2, $c6, $c3, $c7, $c2, $c6, $c0, $ca, $c3, $c7, $c0, $ca, $c3, $c7, $c2, $c6, $c1, $c7, $c0, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $d7, $d2, $d6, $4d, $4e, $4f, $5d, $d0, $5e, $5f, $6d, $6e, $da, $7d, $d7, $d2, $d6, $d1, $d7, $d0, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $e7, $e2, $e6, $20, $4a, $4a, $4a, $4a, $4a, $4a, $4a, $4a, $4a, $4a, $4a, $4a, $27, $e1, $e7, $e0, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $f7, $f2, $f6, $30, $5a, $5a, $5a, $5a, $5a, $5a, $5a, $5a, $5a, $5a, $5a, $5a, $37, $f1, $f7, $f0, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $c6, $c0, $ca, $c3, $c7, $c2, $c6, $c5, $ca, $c3, $c7, $c0, $ca, $c3, $c7, $c2, $c6, $c5, $ca, $c3, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $d6, $d0, $da, $4d, $4e, $4f, $5d, $d5, $5e, $5f, $6d, $6e, $da, $7e, $d7, $d2, $d6, $d5, $da, $d3, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $e6, $e0, $ea, $20, $4a, $4a, $4a, $4a, $4a, $4a, $4a, $4a, $4a, $4a, $4a, $4a, $27, $e5, $e7, $e3, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $f6, $f0, $fa, $30, $5a, $5a, $5a, $5a, $5a, $5a, $5a, $5a, $5a, $5a, $5a, $5a, $37, $f5, $f7, $f3, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ca, $c3, $c7, $c3, $c7, $c2, $c6, $c1, $ca, $c3, $c7, $c0, $ca, $c3, $c7, $c2, $c6, $c0, $c6, $c1, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $da, $d3, $d7, $4d, $4e, $4f, $5d, $d1, $5e, $5f, $6d, $6e, $da, $7f, $d7, $d2, $d6, $d0, $d6, $d1, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ea, $e3, $e7, $20, $4a, $4a, $4a, $4a, $4a, $4a, $4a, $4a, $4a, $4a, $4a, $4a, $27, $e0, $e6, $e1, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $fa, $f3, $f7, $30, $5a, $5a, $5a, $5a, $5a, $5a, $5a, $5a, $5a, $5a, $5a, $5a, $37, $f0, $f6, $f1, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $c7, $c0, $ca, $c5, $c7, $c2, $c6, $c5, $ca, $c3, $c7, $c0, $ca, $c5, $c7, $c2, $c6, $c0, $ca, $c3, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $d7, $d0, $da, $d5, $cb, $cc, $cd, $ce, $cf, $eb, $ec, $ed, $ee, $ef, $8f, $af, $d6, $d0, $da, $d3, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $e7, $e0, $ea, $e5, $db, $dc, $dd, $de, $df, $fb, $fc, $fd, $fe, $ff, $9f, $bf, $e6, $e0, $ea, $e3, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $f7, $f0, $fa, $f5, $f7, $f2, $f6, $f5, $fa, $f3, $f7, $f0, $fa, $f5, $f7, $f2, $f6, $f0, $fa, $f3, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
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

CourseSelectScreenTileMap::
    db $4c, $4c, $4a, $4b, $0a, $0b, $0c, $0d, $0e, $0f, $2a, $2b, $2c, $2d, $2e, $2f, $4a, $4b, $4c, $4c, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $5c, $5c, $5a, $5b, $1a, $1b, $1c, $1d, $1e, $1f, $3a, $3b, $3c, $3d, $3e, $3f, $5a, $5b, $5c, $5c, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $c0, $e0, $e1, $e2, $e3, $c0, $c3, $c3, $c3, $c3, $c1, $c1, $c1, $c1, $c0, $e0, $e1, $e2, $e3, $c0, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $d0, $f0, $f1, $f2, $f3, $d0, $d3, $d3, $d3, $d3, $d1, $d1, $d1, $d1, $d0, $f0, $f1, $f2, $f3, $d0, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $c0, $6a, $6b, $6c, $6d, $c0, $c2, $c2, $c2, $c2, $c2, $c2, $c2, $c2, $c0, $6e, $6f, $c4, $c5, $c0, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $d0, $7a, $7b, $7c, $7d, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $7e, $7f, $d4, $d5, $d0, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $c0, $8a, $8b, $8c, $8d, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $8e, $8f, $e4, $e5, $c0, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $d0, $9a, $9b, $9c, $9d, $d0, $c2, $c2, $c2, $c2, $c2, $c2, $c2, $c2, $d0, $9e, $9f, $f4, $f5, $d0, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $c0, $aa, $ab, $ac, $ad, $c0, $c2, $c2, $c2, $c2, $c2, $c2, $c2, $c2, $c0, $ae, $af, $c6, $c7, $c0, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $d0, $ba, $bb, $bc, $bd, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $be, $bf, $d6, $d7, $d0, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $c0, $ca, $cb, $cc, $cd, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $ce, $cf, $e6, $e7, $c0, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $d0, $da, $db, $dc, $dd, $d0, $c2, $c2, $c2, $c2, $c2, $c2, $c2, $c2, $d0, $de, $df, $f6, $f7, $d0, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $c0, $ea, $eb, $ec, $ed, $c0, $c2, $c2, $c2, $c2, $c2, $c2, $c2, $c2, $c0, $ee, $ef, $c8, $c9, $c0, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $d0, $fa, $fb, $fc, $fd, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $fe, $ff, $d8, $d9, $d0, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $c0, $f8, $f9, $4d, $4e, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5d, $5e, $e8, $e9, $c0, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $d0, $e0, $e1, $e2, $e3, $d0, $c2, $c2, $c2, $c2, $c2, $c2, $c2, $c2, $d0, $e0, $e1, $e2, $e3, $d0, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $c0, $f0, $f1, $f2, $f3, $c0, $c3, $c3, $c3, $c3, $c1, $c1, $c1, $c1, $c0, $f0, $f1, $f2, $f3, $c0, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $d0, $d2, $d2, $d2, $d2, $d0, $d3, $d3, $d3, $d3, $d1, $d1, $d1, $d1, $d0, $d2, $d2, $d2, $d2, $d0, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
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
