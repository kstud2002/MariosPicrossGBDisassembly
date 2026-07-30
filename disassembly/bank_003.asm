; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

SGBPacket_MLT_REQ_DisableMultiplayer::
    db $89, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

SGBPacket_MLT_REQ_EnableTwoPlayers::
    db $89, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

SGBPacket_PAL_SET_ScreenTransition::
    db $51, $00, $00, $01, $00, $02, $00, $03, $00, $00, $00, $00, $00, $00, $00, $00

SGBPacket_ATTR_TRN_StartupTransfer::
    db $a9, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

SGBTransferPayload_ATTR_TRN_Startup::
    db $00, $00, $00, $00, $00, $00, $01, $55, $55, $54, $00, $01, $55, $55, $54, $00, $01, $55, $55, $54, $00, $01, $55, $55, $54, $00, $01, $55, $55, $54, $15, $54, $00, $00, $00, $15, $54, $00, $00, $00, $15, $54, $00, $00, $00, $15, $54, $00, $00, $00, $15, $54, $00, $00, $00, $15, $54, $00, $00, $00, $15, $54, $00, $00, $00, $15, $54, $00, $00, $00, $15, $54, $00, $00, $00, $15, $54, $00, $00, $00, $15, $54, $00, $00, $00, $15, $54, $00, $00, $00
    db $aa, $aa, $aa, $aa, $aa, $aa, $aa, $a9, $55, $56, $aa, $aa, $a9, $55, $56, $aa, $aa, $a9, $55, $56, $aa, $aa, $a9, $f4, $56, $aa, $aa, $a9, $55, $56, $aa, $aa, $a9, $f4, $56, $aa, $aa, $a9, $55, $56, $aa, $aa, $a9, $fc, $06, $aa, $aa, $a9, $55, $56, $95, $55, $55, $55, $56, $95, $55, $55, $55, $56, $95, $55, $55, $55, $56, $95, $55, $55, $55, $56, $95, $55, $55, $55, $56, $95, $55, $55, $55, $56, $95, $55, $55, $55, $56, $95, $55, $55, $55, $56
    db $00, $00, $00, $00, $00, $2a, $a9, $55, $56, $a8, $2a, $a9, $55, $56, $a8, $2a, $a9, $55, $56, $a8, $2a, $a9, $55, $56, $a8, $2a, $a9, $55, $56, $a8, $15, $56, $aa, $aa, $a8, $15, $56, $aa, $aa, $a8, $15, $56, $aa, $aa, $a8, $15, $56, $aa, $aa, $a8, $15, $56, $aa, $aa, $a8, $15, $56, $aa, $aa, $a8, $15, $56, $aa, $aa, $a8, $15, $56, $aa, $aa, $a8, $3f, $ff, $ff, $ff, $fc, $3f, $ff, $ff, $ff, $fc, $3f, $ff, $ff, $ff, $fc, $00, $00, $00, $00, $00
    db $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $d5, $7a, $aa, $ad, $57, $d5, $7a, $aa, $ad, $57, $ea, $ba, $aa, $ae, $ab, $ea, $80, $00, $02, $ab, $ea, $80, $00, $02, $ab, $ea, $ba, $aa, $ae, $ab, $ea, $ba, $aa, $ae, $ab, $ea, $80, $00, $02, $ab, $ea, $80, $00, $02, $ab, $ea, $ba, $aa, $ae, $ab, $ea, $ba, $aa, $ae, $ab, $ea, $ba, $aa, $ae, $ab, $ea, $ba, $aa, $ae, $ab, $d5, $7a, $aa, $ad, $57, $d5, $7a, $aa, $ad, $57, $ff, $fa, $aa, $af, $ff
    db $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $d5, $7a, $aa, $ad, $57, $d5, $7a, $aa, $ad, $57, $ea, $ba, $aa, $ae, $ab, $ea, $80, $00, $02, $ab, $ea, $80, $00, $02, $ab, $ea, $ba, $aa, $ae, $ab, $ea, $ba, $aa, $ae, $ab, $ea, $80, $00, $02, $ab, $ea, $80, $00, $02, $ab, $ea, $ba, $aa, $ae, $ab, $ea, $ba, $aa, $ae, $ab, $ea, $80, $00, $02, $ab, $ea, $80, $00, $02, $ab, $d5, $7a, $aa, $ad, $57, $d5, $7a, $aa, $ad, $57, $ff, $fa, $aa, $af, $ff
    db $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $ff, $ff, $ff, $c0, $03, $ff, $ff, $ff, $c0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $ff, $ff, $ff, $c0, $03, $ff, $ff, $ff, $c0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $ff, $ff, $ff, $c0, $03, $ff, $ff, $ff, $c0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $2a, $aa, $a8, $00, $00, $2a, $aa, $a8, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $2a, $aa, $a8, $00, $00, $2a, $aa, $a8, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $2a, $aa, $a8, $00, $00, $2a, $aa, $a8, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $00, $00, $00, $03, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fe, $ff, $af, $ff, $fe, $aa, $aa, $aa, $ff, $aa, $aa, $aa, $aa, $ab, $aa, $aa, $aa, $aa, $aa, $aa, $aa, $aa
    db $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $d7, $00, $00, $00, $03, $df, $ff, $ff, $ff, $ff, $df, $ff, $ff, $ff, $ff, $df, $ff, $ff, $ff, $ff, $df, $ff, $ff, $ff, $ff, $df, $ff, $ff, $ff, $ff, $df, $ff, $ff, $ff, $ff, $df, $ff, $ff, $ff, $ff, $df, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ea, $aa, $fe, $aa, $ff, $ea, $aa, $aa, $aa, $aa, $aa, $aa, $ff, $ff, $ff, $ff, $ff
    db $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $82, $a9, $aa, $a8, $ab, $ca, $aa, $aa, $aa, $aa, $8a, $aa, $aa, $aa, $aa, $8a, $aa, $aa, $aa, $aa, $8a, $aa, $aa, $aa, $aa, $4a, $aa, $aa, $aa, $aa, $8a, $aa, $aa, $aa, $aa, $8a, $aa, $aa, $aa, $aa, $8a, $aa, $aa, $aa, $aa, $fa, $aa, $aa, $aa, $aa, $fa, $aa, $ab, $aa, $aa, $aa, $aa, $aa, $aa, $aa, $ff, $ff, $ff, $ff, $ff
    db $55, $55, $55, $55, $55, $95, $55, $55, $55, $56, $aa, $aa, $aa, $aa, $aa, $80, $00, $00, $00, $02, $85, $55, $55, $55, $52, $85, $55, $55, $55, $52, $85, $55, $55, $55, $52, $85, $55, $55, $55, $52, $85, $55, $55, $55, $52, $85, $55, $55, $55, $52, $85, $55, $55, $55, $52, $80, $00, $00, $00, $02, $aa, $aa, $aa, $aa, $aa, $aa, $aa, $aa, $aa, $aa, $af, $ff, $fe, $aa, $aa, $aa, $ff, $aa, $aa, $aa, $aa, $ab, $aa, $aa, $aa, $aa, $aa, $aa, $aa, $aa
    db $55, $55, $55, $55, $55, $95, $55, $55, $55, $56, $aa, $aa, $aa, $aa, $aa, $80, $00, $00, $00, $02, $85, $55, $55, $55, $52, $85, $55, $55, $55, $52, $85, $55, $55, $55, $52, $85, $55, $55, $55, $52, $85, $55, $55, $55, $52, $85, $55, $55, $55, $52, $85, $55, $55, $55, $52, $80, $00, $00, $00, $02, $aa, $aa, $aa, $aa, $aa, $ea, $aa, $aa, $aa, $ab, $ff, $ff, $ff, $ea, $aa, $fe, $aa, $ff, $ea, $aa, $aa, $aa, $aa, $aa, $aa, $ff, $ff, $ff, $ff, $ff
    db $55, $55, $55, $55, $55, $15, $55, $55, $55, $54, $9a, $8a, $a6, $96, $a2, $80, $00, $00, $00, $02, $4a, $aa, $aa, $aa, $a2, $4a, $aa, $aa, $aa, $a0, $8a, $aa, $aa, $aa, $a2, $8a, $aa, $aa, $aa, $a0, $8a, $aa, $aa, $aa, $a2, $8a, $aa, $aa, $aa, $a2, $8a, $aa, $aa, $aa, $a2, $80, $00, $00, $00, $02, $99, $a6, $2a, $65, $aa, $a2, $aa, $a6, $aa, $9a, $fa, $6a, $aa, $aa, $aa, $fa, $aa, $ab, $aa, $aa, $aa, $aa, $aa, $aa, $aa, $ff, $ff, $ff, $ff, $ff
    db $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $56, $fe, $55, $55, $55, $aa, $fe, $aa, $aa, $aa, $aa, $aa, $be, $aa, $aa, $aa, $aa, $be, $aa, $aa, $aa, $aa, $aa, $aa, $aa, $aa, $aa, $aa, $aa, $aa, $aa
    db $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $40, $00, $00, $00, $01, $40, $00, $00, $00, $01, $40, $00, $00, $00, $01, $40, $00, $00, $00, $01, $40, $00, $00, $00, $01, $40, $00, $00, $00, $01, $40, $00, $00, $00, $01, $40, $00, $00, $00, $01, $40, $00, $00, $00, $02, $fe, $55, $55, $55, $aa, $fe, $aa, $aa, $aa, $aa, $aa, $be, $aa, $aa, $aa, $aa, $be, $aa, $aa, $aa, $aa, $aa, $aa, $aa, $aa, $aa, $aa, $aa, $aa, $aa
    db $03, $fc, $00, $00, $00, $03, $fc, $00, $00, $00, $03, $3c, $00, $00, $00, $00, $00, $fc, $00, $00, $00, $00, $3c, $00, $00, $00, $00, $f0, $00, $00, $00, $00, $f0, $00, $00, $01, $55, $55, $55, $40, $01, $55, $55, $55, $40, $01, $55, $55, $55, $40, $01, $55, $55, $55, $40, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f0, $00, $00, $00, $0f, $f1, $55, $55, $55, $4f, $f1, $55, $55, $55, $4f, $f1, $55, $55, $55, $4f, $f1, $55, $55, $55, $4f, $f1, $55, $55, $55, $4f, $f1, $55, $55, $55, $4f, $f1, $55, $55, $55, $4f, $f0, $00, $00, $00, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

TransitionFadePaletteTable_GS06_GS08_GS09_GS0A_Start::
    db $00, $00, $00
    db $40, $40, $40
    db $90, $80, $90
    db $e1, $d1, $e1

TransitionFadePaletteTable_GS06_GS08_Start::
    db $00, $00, $00
    db $40, $40, $40
    db $90, $80, $90
    db $e1, $d1, $e1

TransitionFadePaletteTable_GS08_Start::
    db $00, $00, $00
    db $40, $40, $40
    db $90, $80, $90
    db $e1, $d1, $e1

TransitionFadePaletteTable_GS03_Start::
    db $00, $00, $00
    db $40, $40, $40
    db $90, $80, $90
    db $e1, $d1, $e1

TransitionFadePaletteTable_GS01_Start::
    db $00, $00, $00
    db $40, $40, $40
    db $90, $80, $90
    db $e1, $d1, $e1

TransitionFadePaletteTable_GS02_Start::
    db $00, $00, $00
    db $40, $40, $40
    db $90, $80, $90
    db $e1, $d1, $e1

TransitionFadePaletteTable_Unused::
    db $00, $00, $00
    db $40, $40, $40
    db $90, $80, $90
    db $e1, $d1, $e1

TransitionFadePaletteTable_GS00_GS05_Start::
    db $00, $00, $00
    db $40, $40, $40
    db $90, $80, $90
    db $e1, $d1, $e1

TransitionFadePaletteTable_GS04_Start_1::
    db $00, $00, $00
    db $40, $40, $40
    db $90, $80, $90
    db $e1, $d1, $e1

TransitionFadePaletteTable_GS04_Start_2::
    db $00, $00, $00
    db $40, $40, $00
    db $90, $80, $40
    db $e1, $d1, $91

TransitionFadePaletteTable_GS00_GS07_Start::
    db $00, $00, $00
    db $40, $40, $40
    db $90, $80, $90
    db $e1, $d1, $e1

TransitionFadePaletteTable_GS00_TitleScreenInit_Start::
    db $00, $00, $00
    db $40, $40, $40
    db $90, $90, $90
    db $e4, $e4, $e4

TransitionFadePaletteTable_GS00_Start_2::
    db $00, $00, $00
    db $40, $40, $40
    db $90, $80, $90
    db $e1, $d1, $e1

SGBPacket_PAL_TRN_StartupTransfer::
    db $59, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

SGBTransferPayload_PAL_TRN_Startup::
    db $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f
    db $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f
    db $ff, $7f, $bd, $6b, $5a, $63, $19, $5f, $ff, $7f, $bd, $6b, $5a, $63, $18, $5f
    db $ff, $7f, $bd, $6b, $5a, $63, $19, $5f, $ff, $7f, $bd, $6b, $5a, $63, $19, $5f
    db $ff, $7f, $7c, $5b, $d6, $46, $53, $3e, $ff, $7f, $7c, $5b, $d6, $46, $32, $3e
    db $ff, $7f, $7c, $5b, $d6, $46, $53, $3e, $ff, $7f, $7c, $5b, $d6, $46, $53, $3e
    db $ff, $7f, $3b, $47, $32, $2a, $6d, $1d, $ff, $7f, $3b, $47, $32, $2a, $4b, $1d
    db $ff, $7f, $3b, $47, $32, $2a, $6d, $1d, $ff, $7f, $3b, $47, $32, $2a, $6d, $1d
    db $ff, $7f, $fa, $36, $ae, $0d, $a7, $00, $ff, $7f, $fa, $36, $ae, $0d, $65, $00
    db $ff, $7f, $fa, $36, $ae, $0d, $a7, $00, $ff, $7f, $fa, $36, $ae, $0d, $a7, $00
    db $ff, $7f, $9c, $7f, $18, $73, $18, $63, $ff, $7f, $bd, $6b, $3c, $63, $18, $63
    db $ff, $7f, $bd, $6b, $5a, $63, $18, $5f, $ff, $7f, $bb, $6f, $79, $67, $18, $63
    db $ff, $7f, $39, $7f, $52, $66, $52, $4a, $ff, $7f, $7c, $5b, $99, $4a, $52, $4a
    db $ff, $7f, $7c, $5b, $d6, $46, $32, $3e, $ff, $7f, $77, $5f, $13, $4f, $52, $4a
    db $ff, $7f, $d6, $7e, $8c, $59, $8c, $31, $ff, $7f, $3b, $47, $d6, $31, $8c, $31
    db $ff, $7f, $3b, $47, $32, $2a, $4b, $1d, $ff, $7f, $33, $4f, $ad, $36, $8c, $31
    db $ff, $7f, $73, $7e, $c6, $50, $c6, $18, $ff, $7f, $fa, $36, $33, $19, $c6, $18
    db $ff, $7f, $fa, $36, $ae, $0d, $65, $00, $ff, $7f, $0f, $3f, $48, $22, $c6, $18
    db $ff, $7f, $bd, $6b, $3a, $67, $19, $63, $ff, $7f, $bd, $6b, $5a, $63, $18, $5f
    db $ff, $7f, $bd, $6b, $5a, $63, $19, $5f, $ff, $7f, $bd, $6b, $5b, $63, $18, $5f
    db $ff, $7f, $7c, $5b, $76, $4e, $33, $46, $ff, $7f, $7c, $5b, $d6, $46, $32, $3e
    db $ff, $7f, $7c, $5b, $d6, $46, $53, $3e, $ff, $7f, $7c, $5b, $b7, $4a, $32, $3e
    db $ff, $7f, $3b, $47, $b2, $35, $4d, $29, $ff, $7f, $3b, $47, $32, $2a, $4b, $1d
    db $ff, $7f, $3b, $47, $32, $2a, $6d, $1d, $ff, $7f, $3b, $47, $13, $2e, $4b, $1d
    db $ff, $7f, $fa, $36, $0e, $21, $67, $0c, $ff, $7f, $fa, $36, $ae, $0d, $65, $00
    db $ff, $7f, $fa, $36, $ae, $0d, $a7, $00, $ff, $7f, $fa, $36, $8f, $15, $85, $00
    db $ff, $7b, $9d, $63, $5b, $63, $39, $5f, $ff, $7b, $9d, $67, $3c, $63, $18, $63
    db $ff, $7b, $9c, $6b, $7a, $67, $38, $63, $ff, $7b, $5c, $67, $3a, $67, $18, $63
    db $ff, $7b, $5b, $4b, $d7, $4a, $73, $3e, $ff, $7b, $5c, $53, $7a, $4a, $31, $46
    db $ff, $7b, $59, $5b, $16, $53, $72, $46, $ff, $7b, $b9, $52, $75, $4e, $32, $46
    db $ff, $7b, $19, $33, $53, $32, $ad, $1d, $ff, $7b, $fb, $3a, $b7, $31, $4a, $29
    db $ff, $7b, $f6, $46, $91, $3a, $ac, $29, $ff, $7b, $16, $3e, $b0, $35, $4c, $29
    db $ff, $7b, $d7, $1a, $cf, $19, $e8, $00, $ff, $7b, $ba, $26, $15, $19, $63, $0c
    db $ff, $7b, $b3, $36, $2d, $26, $06, $11, $ff, $7b, $93, $29, $ec, $1c, $66, $0c
    db $ff, $7b, $9d, $67, $5b, $63, $19, $63, $ff, $7b, $9d, $67, $3c, $63, $18, $63
    db $ff, $7b, $9d, $6b, $5a, $63, $19, $63, $ff, $7b, $9b, $6b, $5a, $67, $38, $63
    db $ff, $77, $5c, $53, $d7, $46, $53, $46, $ff, $77, $5c, $53, $99, $4a, $32, $46
    db $ff, $77, $5b, $5b, $b6, $4a, $53, $46, $ff, $7b, $58, $5b, $d5, $52, $92, $4a
    db $ff, $73, $1a, $3f, $53, $2a, $8d, $29, $ff, $73, $fb, $3a, $d6, $31, $4c, $29
    db $ff, $73, $f9, $4a, $12, $2e, $8d, $29, $ff, $77, $f5, $4a, $50, $3e, $cc, $2d
    db $ff, $73, $d9, $2a, $cf, $0d, $c7, $10, $ff, $73, $ba, $26, $33, $19, $66, $0c
    db $ff, $73, $b7, $3a, $8e, $15, $c7, $10, $ff, $77, $b2, $3a, $cb, $29, $26, $15
    db $ff, $7f, $9d, $67, $3a, $67, $19, $63, $ff, $7f, $9d, $6b, $3c, $63, $18, $63
    db $ff, $7f, $9c, $77, $39, $6f, $39, $67, $ff, $7f, $9d, $6b, $3b, $63, $19, $63
    db $ff, $7f, $3b, $53, $76, $4e, $33, $46, $ff, $7f, $5b, $5b, $7a, $4a, $52, $4a
    db $ff, $7f, $39, $73, $94, $62, $73, $52, $ff, $7f, $3c, $57, $97, $46, $53, $46
    db $ff, $7f, $d9, $3e, $b2, $35, $4d, $29, $ff, $7f, $f9, $4a, $b7, $31, $8c, $31
    db $ff, $7f, $d6, $6e, $ef, $51, $ad, $3d, $ff, $7f, $da, $42, $f3, $29, $8d, $29
    db $ff, $7f, $98, $2a, $0e, $21, $67, $0c, $ff, $7f, $b7, $3a, $15, $19, $c6, $18
    db $ff, $7f, $73, $6a, $4a, $45, $e7, $28, $ff, $7f, $79, $32, $50, $0d, $c7, $10
    db $df, $77, $9d, $6b, $5a, $63, $19, $63, $df, $77, $9d, $67, $3c, $63, $18, $63
    db $de, $7b, $9b, $77, $5a, $6f, $18, $63, $fe, $7b, $9b, $6b, $5a, $67, $18, $63
    db $df, $73, $5b, $5b, $b6, $4a, $53, $46, $df, $6f, $5c, $53, $99, $4a, $32, $46
    db $de, $7b, $58, $6f, $b5, $5e, $51, $46, $fe, $77, $58, $5b, $d5, $52, $51, $46
    db $df, $6b, $f9, $4a, $12, $2e, $8d, $29, $bf, $67, $fb, $3a, $d6, $31, $4c, $29
    db $bd, $7b, $f5, $66, $10, $4e, $8a, $29, $fd, $73, $f5, $4a, $50, $3e, $8a, $29
    db $df, $67, $b7, $3a, $8e, $15, $c7, $10, $bf, $63, $ba, $26, $33, $19, $66, $0c
    db $bd, $7b, $b2, $5e, $8b, $3d, $c4, $0c, $fd, $73, $b2, $3a, $cb, $29, $c4, $0c
    db $ff, $7f, $7b, $7f, $39, $77, $18, $63, $ff, $7f, $9d, $67, $3c, $63, $18, $63
    db $ff, $7f, $bd, $67, $7b, $5f, $39, $5f, $ff, $7f, $da, $6b, $78, $63, $18, $63
    db $ff, $7f, $18, $7f, $73, $6e, $52, $4a, $ff, $7f, $5c, $53, $7a, $4a, $52, $4a
    db $ff, $7f, $7c, $53, $f7, $42, $73, $3e, $ff, $7f, $b6, $5b, $12, $4b, $52, $4a
    db $ff, $7f, $94, $7e, $ad, $65, $8c, $31, $ff, $7f, $fb, $3a, $b7, $31, $8c, $31
    db $ff, $7f, $3b, $3f, $73, $26, $ad, $1d, $ff, $7f, $91, $47, $8c, $32, $8c, $31
    db $ff, $7f, $31, $7e, $08, $5d, $c6, $18, $ff, $7f, $ba, $26, $15, $19, $c6, $18
    db $ff, $7f, $1a, $2b, $ef, $09, $08, $01, $ff, $7f, $6d, $37, $26, $1a, $c6, $18
    db $ff, $7f, $7b, $7f, $39, $77, $18, $63, $ff, $7f, $9d, $67, $3c, $63, $18, $63
    db $ff, $7f, $bd, $67, $7b, $5f, $39, $5f, $ff, $7f, $da, $6b, $78, $63, $18, $63
    db $ff, $7f, $18, $7f, $73, $6e, $52, $4a, $ff, $7f, $5c, $53, $7a, $4a, $52, $4a
    db $ff, $7f, $7c, $53, $f7, $42, $73, $3e, $ff, $7f, $b6, $5b, $12, $4b, $52, $4a
    db $ff, $7f, $94, $7e, $ad, $65, $8c, $31, $ff, $7f, $fb, $3a, $b7, $31, $8c, $31
    db $ff, $7f, $3b, $3f, $73, $26, $ad, $1d, $ff, $7f, $91, $47, $8c, $32, $8c, $31
    db $ff, $7f, $31, $7e, $08, $5d, $c6, $18, $ff, $7f, $ba, $26, $15, $19, $c6, $18
    db $ff, $7f, $1a, $2b, $ef, $09, $08, $01, $ff, $7f, $6d, $37, $26, $1a, $c6, $18
    db $ff, $7f, $9c, $7f, $39, $77, $39, $67, $ff, $7f, $9d, $67, $3c, $63, $39, $67
    db $ff, $7f, $9c, $63, $5a, $5f, $39, $67, $ff, $7f, $ba, $6b, $78, $63, $39, $67
    db $ff, $7f, $39, $7f, $94, $6e, $73, $4e, $ff, $7f, $5c, $53, $7a, $4a, $73, $4e
    db $ff, $7f, $5a, $4b, $d6, $3e, $73, $4e, $ff, $7f, $95, $57, $f1, $46, $73, $4e
    db $ff, $7f, $d6, $7e, $ef, $65, $ad, $35, $ff, $7f, $fb, $3a, $b7, $31, $ad, $35
    db $ff, $7f, $f7, $32, $52, $1e, $ad, $35, $ff, $7f, $50, $43, $6a, $2a, $ad, $35
    db $ff, $7f, $73, $7e, $4a, $5d, $08, $21, $ff, $7f, $ba, $26, $15, $19, $08, $21
    db $ff, $7f, $b5, $1a, $ce, $01, $08, $21, $ff, $7f, $2b, $2f, $e4, $11, $08, $21
    db $ff, $7f, $9c, $7f, $39, $77, $18, $63, $ff, $7f, $9d, $67, $3c, $63, $18, $63
    db $ff, $7f, $9d, $6b, $7b, $63, $18, $63, $ff, $7f, $bb, $6f, $79, $67, $18, $63
    db $ff, $7f, $39, $7f, $94, $6e, $52, $4a, $ff, $7f, $5c, $53, $99, $4a, $52, $4a
    db $ff, $7f, $5b, $57, $f7, $4a, $52, $4a, $ff, $7f, $77, $5f, $13, $4f, $52, $4a
    db $ff, $7f, $d6, $7e, $ef, $65, $8c, $31, $ff, $7f, $fb, $3a, $d6, $31, $8c, $31
    db $ff, $7f, $19, $43, $73, $32, $8c, $31, $ff, $7f, $33, $4f, $ad, $36, $8c, $31
    db $ff, $7f, $73, $7e, $4a, $5d, $c6, $18, $ff, $7f, $ba, $26, $33, $19, $c6, $18
    db $ff, $7f, $d8, $32, $ef, $19, $c6, $18, $ff, $7f, $0f, $3f, $48, $22, $c6, $18
    db $df, $73, $9d, $6f, $5b, $67, $19, $63, $df, $73, $bd, $5f, $3c, $67, $19, $63
    db $df, $77, $ba, $6b, $58, $63, $19, $63, $df, $73, $9d, $6f, $7a, $7b, $19, $63
    db $bf, $67, $5c, $5f, $b7, $4e, $53, $46, $bf, $67, $7c, $3f, $7a, $4e, $53, $46
    db $df, $6f, $95, $57, $d2, $4a, $53, $46, $bf, $67, $5c, $5f, $f6, $7a, $53, $46
    db $9f, $5b, $1b, $4f, $13, $36, $6d, $29, $9f, $5b, $3b, $1f, $b7, $35, $6d, $29
    db $df, $67, $50, $43, $2b, $2e, $6d, $29, $9f, $5b, $1b, $4f, $72, $76, $6d, $29
    db $9f, $53, $da, $42, $90, $21, $a8, $0c, $9f, $53, $1a, $03, $f5, $1c, $a8, $0c
    db $df, $5f, $2b, $2f, $a5, $15, $a8, $0c, $9f, $53, $da, $42, $0e, $76, $a8, $0c
    db $ff, $7b, $9b, $77, $5a, $6f, $18, $63, $ff, $7b, $9d, $67, $3c, $63, $18, $63
    db $ff, $7b, $bd, $67, $7b, $5f, $39, $5f, $ff, $7b, $9d, $6b, $5a, $63, $19, $63
    db $ff, $7b, $58, $6f, $b5, $5e, $51, $46, $ff, $7b, $5c, $53, $7a, $4a, $52, $4a
    db $ff, $7b, $7c, $53, $f7, $42, $73, $3e, $ff, $7b, $5b, $5b, $b6, $4a, $53, $46
    db $ff, $7b, $f5, $66, $10, $4e, $8a, $29, $ff, $7b, $fb, $3a, $b7, $31, $8c, $31
    db $ff, $7b, $3b, $3f, $73, $26, $ad, $1d, $ff, $7b, $f9, $4a, $12, $2e, $8d, $29
    db $ff, $7b, $b2, $5e, $8b, $3d, $c4, $0c, $ff, $7b, $ba, $26, $15, $19, $c6, $18
    db $ff, $7b, $1a, $2b, $ef, $09, $08, $01, $ff, $7b, $b7, $3a, $8e, $15, $c7, $10

SGBPacket_DATA_SND_StartupTransfer_00::
    db $79, $5d, $08, $00, $0b, $8c, $d0, $f4, $60, $00, $00, $00, $00, $00, $00, $00

SGBPacket_DATA_SND_StartupTransfer_01::
    db $79, $52, $08, $00, $0b, $a9, $e7, $9f, $01, $c0, $7e, $e8, $e8, $e8, $e8, $e0

SGBPacket_DATA_SND_StartupTransfer_02::
    db $79, $47, $08, $00, $0b, $c4, $d0, $16, $a5, $cb, $c9, $05, $d0, $10, $a2, $28

SGBPacket_DATA_SND_StartupTransfer_03::
    db $79, $3c, $08, $00, $0b, $f0, $12, $a5, $c9, $c9, $c8, $d0, $1c, $a5, $ca, $c9

SGBPacket_DATA_SND_StartupTransfer_04::
    db $79, $31, $08, $00, $0b, $0c, $a5, $ca, $c9, $7e, $d0, $06, $a5, $cb, $c9, $7e

SGBPacket_DATA_SND_StartupTransfer_05::
    db $79, $26, $08, $00, $0b, $39, $cd, $48, $0c, $d0, $34, $a5, $c9, $c9, $80, $d0

SGBPacket_DATA_SND_StartupTransfer_06::
    db $79, $1b, $08, $00, $0b, $ea, $ea, $ea, $ea, $ea, $a9, $01, $cd, $4f, $0c, $d0

SGBPacket_DATA_SND_StartupTransfer_07::
    db $79, $10, $08, $00, $0b, $4c, $20, $08, $ea, $ea, $ea, $ea, $ea, $60, $ea, $ea

SGBPacket_MASK_EN_FreezeScreen::
    db $b9, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

SGBPacket_MASK_EN_CancelMask::
    db $b9, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

InitBottomPromptBlinkTimerAndFrameState::
    xor a                                         ; $4e80: $af
    ld [rStatePhaseTimer], a                      ; $4e81: $ea $3c $d6
    ld [rSharedAnimationFrameState], a            ; $4e84: $ea $3d $d6
    jp ReturnFromBankedJumpRestoreBank            ; $4e87: $c3 $ea $05


    ld a, [rStatePhaseTimer]                      ; $4e8a: $fa $3c $d6
    inc a                                         ; $4e8d: $3c
    cp $46                                        ; $4e8e: $fe $46
    jr c, jr_003_4e93                             ; $4e90: $38 $01

    xor a                                         ; $4e92: $af

jr_003_4e93:
    ld [rStatePhaseTimer], a                      ; $4e93: $ea $3c $d6
    cp $30                                        ; $4e96: $fe $30
    jp nc, ReturnFromBankedJumpRestoreBank        ; $4e98: $d2 $ea $05

    ld a, $4e                                     ; $4e9b: $3e $4e
    ld bc, $3088                                  ; $4e9d: $01 $88 $30
    call CopyOAMSpriteById                        ; $4ea0: $cd $ce $20
    jp ReturnFromBankedJumpRestoreBank            ; $4ea3: $c3 $ea $05


TickBottomPromptBlinkSprite4C_A_OK::
    ld a, [rStatePhaseTimer]                      ; $4ea6: $fa $3c $d6
    inc a                                         ; $4ea9: $3c
    cp $46                                        ; $4eaa: $fe $46
    jr c, .StoreBlinkTimerAndCheckDrawWindowSprite4C; $4eac: $38 $01

    xor a                                         ; $4eae: $af

.StoreBlinkTimerAndCheckDrawWindowSprite4C:
    ld [rStatePhaseTimer], a                      ; $4eaf: $ea $3c $d6
    cp $30                                        ; $4eb2: $fe $30
    jp nc, ReturnFromBankedJumpRestoreBank        ; $4eb4: $d2 $ea $05

    ld a, $4c                                     ; $4eb7: $3e $4c
    ld bc, $3088                                  ; $4eb9: $01 $88 $30
    call CopyOAMSpriteById                        ; $4ebc: $cd $ce $20
    jp ReturnFromBankedJumpRestoreBank            ; $4ebf: $c3 $ea $05


TickBottomPromptBlinkSprite4C_A_OK_4D_B_CANCEL::
    ld a, [rStatePhaseTimer]                      ; $4ec2: $fa $3c $d6
    inc a                                         ; $4ec5: $3c
    cp $46                                        ; $4ec6: $fe $46
    jr c, .StoreBlinkTimerAndCheckDrawWindowSprite4C_4D; $4ec8: $38 $09

    ld a, [rSharedAnimationFrameState]            ; $4eca: $fa $3d $d6
    xor $01                                       ; $4ecd: $ee $01
    ld [rSharedAnimationFrameState], a            ; $4ecf: $ea $3d $d6
    xor a                                         ; $4ed2: $af

.StoreBlinkTimerAndCheckDrawWindowSprite4C_4D:
    ld [rStatePhaseTimer], a                      ; $4ed3: $ea $3c $d6
    cp $30                                        ; $4ed6: $fe $30
    jp nc, ReturnFromBankedJumpRestoreBank        ; $4ed8: $d2 $ea $05

    ld a, [rSharedAnimationFrameState]            ; $4edb: $fa $3d $d6
    add $4c                                       ; $4ede: $c6 $4c
    ld bc, $3088                                  ; $4ee0: $01 $88 $30
    call CopyOAMSpriteById                        ; $4ee3: $cd $ce $20
    jp ReturnFromBankedJumpRestoreBank            ; $4ee6: $c3 $ea $05


TickBottomPromptBlinkSprite4E_A_START_4F_B_EXIT::
    ld a, [rStatePhaseTimer]                      ; $4ee9: $fa $3c $d6
    inc a                                         ; $4eec: $3c
    cp $46                                        ; $4eed: $fe $46
    jr c, .StoreBlinkTimerAndCheckDrawWindowSprite4E_4F; $4eef: $38 $09

    ld a, [rSharedAnimationFrameState]            ; $4ef1: $fa $3d $d6
    xor $01                                       ; $4ef4: $ee $01
    ld [rSharedAnimationFrameState], a            ; $4ef6: $ea $3d $d6
    xor a                                         ; $4ef9: $af

.StoreBlinkTimerAndCheckDrawWindowSprite4E_4F:
    ld [rStatePhaseTimer], a                      ; $4efa: $ea $3c $d6
    cp $30                                        ; $4efd: $fe $30
    jp nc, ReturnFromBankedJumpRestoreBank        ; $4eff: $d2 $ea $05

    ld a, [rSharedAnimationFrameState]            ; $4f02: $fa $3d $d6
    add $4e                                       ; $4f05: $c6 $4e
    ld bc, $3088                                  ; $4f07: $01 $88 $30
    call CopyOAMSpriteById                        ; $4f0a: $cd $ce $20
    jp ReturnFromBankedJumpRestoreBank            ; $4f0d: $c3 $ea $05


    ld a, [rStatePhaseTimer]                      ; $4f10: $fa $3c $d6
    inc a                                         ; $4f13: $3c
    cp $46                                        ; $4f14: $fe $46
    jr c, jr_003_4f21                             ; $4f16: $38 $09

    ld a, [rSharedAnimationFrameState]            ; $4f18: $fa $3d $d6
    xor $01                                       ; $4f1b: $ee $01
    ld [rSharedAnimationFrameState], a            ; $4f1d: $ea $3d $d6
    xor a                                         ; $4f20: $af

jr_003_4f21:
    ld [rStatePhaseTimer], a                      ; $4f21: $ea $3c $d6
    cp $30                                        ; $4f24: $fe $30
    jp nc, ReturnFromBankedJumpRestoreBank        ; $4f26: $d2 $ea $05

    ld a, [rSharedAnimationFrameState]            ; $4f29: $fa $3d $d6
    xor $01                                       ; $4f2c: $ee $01
    add $4f                                       ; $4f2e: $c6 $4f
    ld bc, $3088                                  ; $4f30: $01 $88 $30
    call CopyOAMSpriteById                        ; $4f33: $cd $ce $20
    jp ReturnFromBankedJumpRestoreBank            ; $4f36: $c3 $ea $05


    or c                                          ; $4f39: $b1
    nop                                           ; $4f3a: $00
    ret                                           ; $4f3b: $c9


    nop                                           ; $4f3c: $00
    ret c                                         ; $4f3d: $d8

    nop                                           ; $4f3e: $00
    rst RST_18                                    ; $4f3f: $df
    nop                                           ; $4f40: $00
    sub $00                                       ; $4f41: $d6 $00
    ret                                           ; $4f43: $c9


    nop                                           ; $4f44: $00
    push bc                                       ; $4f45: $c5
    nop                                           ; $4f46: $00
    ret z                                         ; $4f47: $c8

    nop                                           ; $4f48: $00
    db $dd                                        ; $4f49: $dd
    nop                                           ; $4f4a: $00
    rst RST_18                                    ; $4f4b: $df
    nop                                           ; $4f4c: $00
    ret c                                         ; $4f4d: $d8

    nop                                           ; $4f4e: $00
    db $d3                                        ; $4f4f: $d3
    nop                                           ; $4f50: $00
    rst RST_18                                    ; $4f51: $df
    nop                                           ; $4f52: $00
    rst RST_00                                    ; $4f53: $c7
    nop                                           ; $4f54: $00
    db $d3                                        ; $4f55: $d3
    nop                                           ; $4f56: $00
    jp nc, rPuzzleGridWidth                       ; $4f57: $d2 $00 $d8

    nop                                           ; $4f5a: $00
    call $d200                                    ; $4f5b: $cd $00 $d2
    nop                                           ; $4f5e: $00
    reti                                          ; $4f5f: $d9


    nop                                           ; $4f60: $00
    ret                                           ; $4f61: $c9


    nop                                           ; $4f62: $00
    cp $ff                                        ; $4f63: $fe $ff
    db $dd                                        ; $4f65: $dd
    nop                                           ; $4f66: $00
    db $d3                                        ; $4f67: $d3
    nop                                           ; $4f68: $00
    reti                                          ; $4f69: $d9


    nop                                           ; $4f6a: $00
    sub $00                                       ; $4f6b: $d6 $00
    rst RST_18                                    ; $4f6d: $df
    nop                                           ; $4f6e: $00
    rst $10                                       ; $4f6f: $d7
    nop                                           ; $4f70: $00
    push bc                                       ; $4f71: $c5
    nop                                           ; $4f72: $00
    jp c, $c900                                   ; $4f73: $da $00 $c9

    nop                                           ; $4f76: $00
    ret z                                         ; $4f77: $c8

    nop                                           ; $4f78: $00
    rst RST_18                                    ; $4f79: $df
    nop                                           ; $4f7a: $00
    rlc b                                         ; $4f7b: $cb $00
    push bc                                       ; $4f7d: $c5
    nop                                           ; $4f7e: $00
    pop de                                        ; $4f7f: $d1
    nop                                           ; $4f80: $00
    ret                                           ; $4f81: $c9


    nop                                           ; $4f82: $00
    db $ec                                        ; $4f83: $ec
    nop                                           ; $4f84: $00
    rst $38                                       ; $4f85: $ff
    rst $38                                       ; $4f86: $ff

GameState_00_TitleScreen_PhaseDispatcher::
    ld a, [rStatePhase_Current]                   ; $4f87: $fa $35 $d6
    rst RST_18                                    ; $4f8a: $df

GS00_PhasePointer_00::
    db $95, $4f

GS00_PhasePointer_01::
    db $49, $50

GS00_PhasePointer_02::
    db $84, $50

GS00_PhasePointer_03::
    db $f3, $51

GS00_PhasePointer_04::
    db $6c, $53

GS00_StatePhase_00_TitleScreenInit::
    ld a, $43                                     ; $4f95: $3e $43
    ld [rLCDCShadow], a                           ; $4f97: $ea $2e $c3
    xor a                                         ; $4f9a: $af
    ld [rBGPShadow], a                            ; $4f9b: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $4f9e: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $4fa1: $ea $31 $c3
    ld [rSCXShadow], a                            ; $4fa4: $ea $32 $c3
    ld [rSCYShadow], a                            ; $4fa7: $ea $33 $c3
    call EnsureSGBMaskFreezeEnabled               ; $4faa: $cd $87 $1f
    ld a, [rIsSuperGameBoyMode]                   ; $4fad: $fa $3d $c3
    and a                                         ; $4fb0: $a7
    jr z, .ContinueAfterOptionalSGBTransfers      ; $4fb1: $28 $1e

    ld a, $04                                     ; $4fb3: $3e $04
    ld hl, SGBPacket_MLT_REQ_DisableMultiplayer   ; $4fb5: $21 $00 $40
    call SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress; $4fb8: $cd $9e $1e
    ld a, $04                                     ; $4fbb: $3e $04
    ld hl, $5010                                  ; $4fbd: $21 $10 $50
    call SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress; $4fc0: $cd $9e $1e
    ld a, $04                                     ; $4fc3: $3e $04
    ld hl, $6020                                  ; $4fc5: $21 $20 $60
    call SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress; $4fc8: $cd $9e $1e
    ld bc, $003c                                  ; $4fcb: $01 $3c $00
    call BusyWaitDelayByBC                        ; $4fce: $cd $03 $06

.ContinueAfterOptionalSGBTransfers:
    call FillBGMap0WithTile01                     ; $4fd1: $cd $a0 $05
    call FillBGMap1WithTile01                     ; $4fd4: $cd $ab $05
    ld a, $08                                     ; $4fd7: $3e $08
    ld hl, $6800                                  ; $4fd9: $21 $00 $68
    ld de, $8800                                  ; $4fdc: $11 $00 $88
    ld bc, $1000                                  ; $4fdf: $01 $00 $10
    call BankedTileCopy                           ; $4fe2: $cd $e4 $04
    ld a, $08                                     ; $4fe5: $3e $08
    ld hl, $7800                                  ; $4fe7: $21 $00 $78
    ld de, $8000                                  ; $4fea: $11 $00 $80
    ld bc, $0800                                  ; $4fed: $01 $00 $08
    call BankedTileCopy                           ; $4ff0: $cd $e4 $04
    ld a, $0b                                     ; $4ff3: $3e $0b
    ld hl, $6800                                  ; $4ff5: $21 $00 $68
    ld de, $9800                                  ; $4ff8: $11 $00 $98
    ld bc, $0400                                  ; $4ffb: $01 $00 $04
    call BankedTileCopy                           ; $4ffe: $cd $e4 $04
    xor a                                         ; $5001: $af
    ld [$a066], a                                 ; $5002: $ea $66 $a0
    ld [rPuzzleDataIndexLow], a                   ; $5005: $ea $07 $d8
    ld [rPuzzleDataIndexHigh], a                  ; $5008: $ea $08 $d8
    ld [rMarioBlinkAnimationSequenceCursor], a    ; $500b: $ea $18 $d8
    ld [rMarioBlinkAnimationDelay], a             ; $500e: $ea $17 $d8
    ld [rCellEffectFrameSourceBaseIndex], a       ; $5011: $ea $10 $d8
    ld [rGS00_TitleSGBXRayBorderFlag], a          ; $5014: $ea $47 $d8
    ld [rGS00_TitleDPadXorHistory], a             ; $5017: $ea $48 $d8
    call ClearShadowOAMBuffer                     ; $501a: $cd $b6 $05
    call GS00_TickMarioBlinkAnimation             ; $501d: $cd $25 $54
    ld c, $00                                     ; $5020: $0e $00
    ld a, $01                                     ; $5022: $3e $01
    call CallSoundEffectDispatcher                ; $5024: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $5027: $cd $99 $03
    ld c, $0a                                     ; $502a: $0e $0a
    ld a, $01                                     ; $502c: $3e $01
    call CallSoundEffectDispatcher                ; $502e: $cd $b6 $03
    call EnableLCDFromShadow                      ; $5031: $cd $a2 $04
    call EnsureSGBMaskFreezeDisabled              ; $5034: $cd $a5 $1f
    ld b, $03                                     ; $5037: $06 $03
    ld hl, TransitionFadePaletteTable_GS00_TitleScreenInit_Start; $5039: $21 $18 $47
    ld c, $10                                     ; $503c: $0e $10
    ld de, $00b4                                  ; $503e: $11 $b4 $00
    call PlayScreenTransitionFadeIn               ; $5041: $cd $0d $04
    ld hl, rStatePhase_Current                    ; $5044: $21 $35 $d6
    inc [hl]                                      ; $5047: $34
    ret                                           ; $5048: $c9


GS00_StatePhase_01_TitleScreenIdle::
    call GS00_TickMarioBlinkAnimation             ; $5049: $cd $25 $54
    ld a, [rInputButtonsPressed]                  ; $504c: $fa $1e $c3
    ld hl, rGS00_TitleDPadXorHistory              ; $504f: $21 $48 $d8
    xor [hl]                                      ; $5052: $ae
    ld [hl], a                                    ; $5053: $77
    and $f0                                       ; $5054: $e6 $f0
    cp $f0                                        ; $5056: $fe $f0
    jr nz, .ClearSGBBorderAlternateFlag           ; $5058: $20 $14

    ld a, [rGS00_TitleSGBXRayBorderFlag]          ; $505a: $fa $47 $d8
    and a                                         ; $505d: $a7
    jr nz, .CheckAdvanceInputAOrStart             ; $505e: $20 $12

    ld c, $03                                     ; $5060: $0e $03
    ld a, $02                                     ; $5062: $3e $02
    call CallSoundEffectDispatcher                ; $5064: $cd $b6 $03
    ld a, $01                                     ; $5067: $3e $01
    ld [rGS00_TitleSGBXRayBorderFlag], a          ; $5069: $ea $47 $d8
    jr .CheckAdvanceInputAOrStart                 ; $506c: $18 $04

.ClearSGBBorderAlternateFlag:
    xor a                                         ; $506e: $af
    ld [rGS00_TitleSGBXRayBorderFlag], a          ; $506f: $ea $47 $d8

.CheckAdvanceInputAOrStart:
    ld a, [rInputButtonsPressed]                  ; $5072: $fa $1e $c3
    and $09                                       ; $5075: $e6 $09
    ret z                                         ; $5077: $c8

    ld c, $03                                     ; $5078: $0e $03
    ld a, $02                                     ; $507a: $3e $02
    call CallSoundEffectDispatcher                ; $507c: $cd $b6 $03
    ld hl, rStatePhase_Current                    ; $507f: $21 $35 $d6
    inc [hl]                                      ; $5082: $34
    ret                                           ; $5083: $c9


GS00_StatePhase_02_TitleScreenTransition::
    ld bc, $003c                                  ; $5084: $01 $3c $00
    call DelayFramesByBC                          ; $5087: $cd $fa $05
    ld a, $05                                     ; $508a: $3e $05
    call CallSoundEffectDispatcher                ; $508c: $cd $b6 $03
    ld c, $00                                     ; $508f: $0e $00
    ld a, $01                                     ; $5091: $3e $01
    call CallSoundEffectDispatcher                ; $5093: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $5096: $cd $99 $03
    ld c, $00                                     ; $5099: $0e $00
    ld a, $01                                     ; $509b: $3e $01
    call CallSoundEffectDispatcher                ; $509d: $cd $b6 $03
    call EnsureSGBMaskFreezeEnabled               ; $50a0: $cd $87 $1f
    ld a, [rIsSuperGameBoyMode]                   ; $50a3: $fa $3d $c3
    and a                                         ; $50a6: $a7
    jp z, GS00_SP02_NonSGBFadeOut                 ; $50a7: $ca $a9 $51

    call DisableLCDAtVBlank                       ; $50aa: $cd $83 $04
    ld a, [rGS00_TitleSGBXRayBorderFlag]          ; $50ad: $fa $47 $d8
    and a                                         ; $50b0: $a7
    jr z, .SGBStandardBorderTransfer              ; $50b1: $28 $1b

    ld a, $0c                                     ; $50b3: $3e $0c
    ld hl, SGBPacket_MLT_REQ_DisableMultiplayer   ; $50b5: $21 $00 $40
    call SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress; $50b8: $cd $9e $1e
    ld a, $0c                                     ; $50bb: $3e $0c
    ld hl, $5010                                  ; $50bd: $21 $10 $50
    call SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress; $50c0: $cd $9e $1e
    ld a, $0c                                     ; $50c3: $3e $0c
    ld hl, $6020                                  ; $50c5: $21 $20 $60
    call SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress; $50c8: $cd $9e $1e
    jp GS00_SP02_ContinueAfterBorderTransfer      ; $50cb: $c3 $5e $51


.SGBStandardBorderTransfer:
    ld a, $05                                     ; $50ce: $3e $05
    ld hl, SGBPacket_MLT_REQ_DisableMultiplayer   ; $50d0: $21 $00 $40
    call SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress; $50d3: $cd $9e $1e
    ld a, $05                                     ; $50d6: $3e $05
    ld hl, $5010                                  ; $50d8: $21 $10 $50
    call SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress; $50db: $cd $9e $1e
    ld a, $05                                     ; $50de: $3e $05
    ld hl, $6020                                  ; $50e0: $21 $20 $60
    ld de, rSGBDefaultBorderPCTPacketStreamBuffer ; $50e3: $11 $c2 $cd
    ld bc, $0810                                  ; $50e6: $01 $10 $08
    call BankedTileCopy                           ; $50e9: $cd $e4 $04
    ld hl, $d612                                  ; $50ec: $21 $12 $d6
    ld bc, $0020                                  ; $50ef: $01 $20 $00
    call ZeroMemoryBlock                          ; $50f2: $cd $d3 $04
    ld a, [rInputButtonsHeld]                     ; $50f5: $fa $1a $c3
    bit 5, a                                      ; $50f8: $cb $6f
    jr z, .CheckRedBorderPatchInput               ; $50fa: $28 $10

    ld a, $05                                     ; $50fc: $3e $05
    ld hl, $6870                                  ; $50fe: $21 $70 $68
    ld de, rSGBDefaultBorderPCTPalettePatchBuffer ; $5101: $11 $d2 $d5
    ld bc, $0040                                  ; $5104: $01 $40 $00
    call BankedTileCopy                           ; $5107: $cd $e4 $04
    jr .SendPatchedDefaultBorderPacket            ; $510a: $18 $4a

.CheckRedBorderPatchInput:
    bit 4, a                                      ; $510c: $cb $67
    jr z, .CheckBlackBorderPatchInput             ; $510e: $28 $10

    ld a, $05                                     ; $5110: $3e $05
    ld hl, $68b0                                  ; $5112: $21 $b0 $68
    ld de, rSGBDefaultBorderPCTPalettePatchBuffer ; $5115: $11 $d2 $d5
    ld bc, $0040                                  ; $5118: $01 $40 $00
    call BankedTileCopy                           ; $511b: $cd $e4 $04
    jr .SendPatchedDefaultBorderPacket            ; $511e: $18 $36

.CheckBlackBorderPatchInput:
    bit 6, a                                      ; $5120: $cb $77
    jr z, .CheckWhiteBorderPatchInput             ; $5122: $28 $10

    ld a, $05                                     ; $5124: $3e $05
    ld hl, $68f0                                  ; $5126: $21 $f0 $68
    ld de, rSGBDefaultBorderPCTPalettePatchBuffer ; $5129: $11 $d2 $d5
    ld bc, $0040                                  ; $512c: $01 $40 $00
    call BankedTileCopy                           ; $512f: $cd $e4 $04
    jr .SendPatchedDefaultBorderPacket            ; $5132: $18 $22

.CheckWhiteBorderPatchInput:
    bit 7, a                                      ; $5134: $cb $7f
    jr z, .ApplyGreenBorderPatch                  ; $5136: $28 $10

    ld a, $05                                     ; $5138: $3e $05
    ld hl, $6930                                  ; $513a: $21 $30 $69
    ld de, rSGBDefaultBorderPCTPalettePatchBuffer ; $513d: $11 $d2 $d5
    ld bc, $0040                                  ; $5140: $01 $40 $00
    call BankedTileCopy                           ; $5143: $cd $e4 $04
    jr .SendPatchedDefaultBorderPacket            ; $5146: $18 $0e

.ApplyGreenBorderPatch:
    ld a, $05                                     ; $5148: $3e $05
    ld hl, $6830                                  ; $514a: $21 $30 $68
    ld de, rSGBDefaultBorderPCTPalettePatchBuffer ; $514d: $11 $d2 $d5
    ld bc, $0040                                  ; $5150: $01 $40 $00
    call BankedTileCopy                           ; $5153: $cd $e4 $04

.SendPatchedDefaultBorderPacket:
    ld a, $00                                     ; $5156: $3e $00
    ld hl, rSGBDefaultBorderPCTPacketStreamBuffer ; $5158: $21 $c2 $cd
    call SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress; $515b: $cd $9e $1e

GS00_SP02_ContinueAfterBorderTransfer::
    ld a, $08                                     ; $515e: $3e $08
    ld hl, $6800                                  ; $5160: $21 $00 $68
    ld de, $8800                                  ; $5163: $11 $00 $88
    ld bc, $1000                                  ; $5166: $01 $00 $10
    call BankedTileCopy                           ; $5169: $cd $e4 $04
    ld a, $08                                     ; $516c: $3e $08
    ld hl, $7800                                  ; $516e: $21 $00 $78
    ld de, $8000                                  ; $5171: $11 $00 $80
    ld bc, $0800                                  ; $5174: $01 $00 $08
    call BankedTileCopy                           ; $5177: $cd $e4 $04
    ld a, $0b                                     ; $517a: $3e $0b
    ld hl, $6800                                  ; $517c: $21 $00 $68
    ld de, $9800                                  ; $517f: $11 $00 $98
    ld bc, $0400                                  ; $5182: $01 $00 $04
    call BankedTileCopy                           ; $5185: $cd $e4 $04
    call EnableLCDFromShadow                      ; $5188: $cd $a2 $04
    call EnsureSGBMaskFreezeDisabled              ; $518b: $cd $a5 $1f
    ld bc, $0014                                  ; $518e: $01 $14 $00
    call BusyWaitDelayByBC                        ; $5191: $cd $03 $06
    ld b, $03                                     ; $5194: $06 $03
    ld hl, $4723                                  ; $5196: $21 $23 $47
    ld c, $10                                     ; $5199: $0e $10
    ld de, $00c3                                  ; $519b: $11 $c3 $00
    call PlayScreenTransitionFadeOut              ; $519e: $cd $4e $04
    ld bc, $0028                                  ; $51a1: $01 $28 $00
    call BusyWaitDelayByBC                        ; $51a4: $cd $03 $06
    jr PostFadeOutFlowRouter                      ; $51a7: $18 $0d

GS00_SP02_NonSGBFadeOut::
    ld b, $03                                     ; $51a9: $06 $03
    ld hl, $4723                                  ; $51ab: $21 $23 $47
    ld c, $10                                     ; $51ae: $0e $10
    ld de, $00c3                                  ; $51b0: $11 $c3 $00
    call PlayScreenTransitionFadeOut              ; $51b3: $cd $4e $04

PostFadeOutFlowRouter::
    call DisableLCDAtVBlank                       ; $51b6: $cd $83 $04
    ld a, [rContinueSavedGameFlowMode_Unsure]     ; $51b9: $fa $a2 $ac
    and a                                         ; $51bc: $a7
    jr nz, .AdvanceToContinueSavedGameScreen      ; $51bd: $20 $2f

    ld hl, rSaveSlot1UnlockProgressState          ; $51bf: $21 $87 $a3
    ld a, [hl+]                                   ; $51c2: $2a
    or [hl]                                       ; $51c3: $b6
    inc hl                                        ; $51c4: $23
    or [hl]                                       ; $51c5: $b6
    jr z, .NoSaveDataInitPath                     ; $51c6: $28 $09

    xor a                                         ; $51c8: $af
    ld [rStatePhase_Current], a                   ; $51c9: $ea $35 $d6
    ld hl, rGameState_Current                     ; $51cc: $21 $34 $d6
    inc [hl]                                      ; $51cf: $34
    ret                                           ; $51d0: $c9


.NoSaveDataInitPath:
    xor a                                         ; $51d1: $af
    ld [rSelectedSaveSlotIndex], a                ; $51d2: $ea $65 $a0
    ld c, a                                       ; $51d5: $4f
    ld b, $00                                     ; $51d6: $06 $00
    ld hl, rSaveSlot1UnlockProgressState          ; $51d8: $21 $87 $a3
    add hl, bc                                    ; $51db: $09
    inc [hl]                                      ; $51dc: $34
    ld hl, rSaveSlot1PicrossKinokoStarClearedPuzzleCount; $51dd: $21 $8a $a3
    add hl, bc                                    ; $51e0: $09
    ld [hl], a                                    ; $51e1: $77
    xor a                                         ; $51e2: $af
    ld [rStatePhase_Current], a                   ; $51e3: $ea $35 $d6
    ld a, $02                                     ; $51e6: $3e $02
    ld [rGameState_Current], a                    ; $51e8: $ea $34 $d6
    jp RefreshSaveValidationChecksumsAndMirrors   ; $51eb: $c3 $1f $1b


.AdvanceToContinueSavedGameScreen:
    ld hl, rStatePhase_Current                    ; $51ee: $21 $35 $d6
    inc [hl]                                      ; $51f1: $34
    ret                                           ; $51f2: $c9


GS00_StatePhase_03_ContinueSavedGameScreenInit::
    ld a, $43                                     ; $51f3: $3e $43
    ld [rLCDCShadow], a                           ; $51f5: $ea $2e $c3
    xor a                                         ; $51f8: $af
    ld [rBGPShadow], a                            ; $51f9: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $51fc: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $51ff: $ea $31 $c3
    ld [rSCXShadow], a                            ; $5202: $ea $32 $c3
    ld [rSCYShadow], a                            ; $5205: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $5208: $cd $a0 $05
    call FillBGMap1WithTile01                     ; $520b: $cd $ab $05
    ld a, $0b                                     ; $520e: $3e $0b
    ld hl, $5000                                  ; $5210: $21 $00 $50
    ld de, $8000                                  ; $5213: $11 $00 $80
    ld bc, $0300                                  ; $5216: $01 $00 $03
    call BankedTileCopy                           ; $5219: $cd $e4 $04
    ld a, $0a                                     ; $521c: $3e $0a
    ld hl, $6000                                  ; $521e: $21 $00 $60
    ld de, $8800                                  ; $5221: $11 $00 $88
    ld bc, $1000                                  ; $5224: $01 $00 $10
    call BankedTileCopy                           ; $5227: $cd $e4 $04
    ld a, $0c                                     ; $522a: $3e $0c
    ld hl, $7800                                  ; $522c: $21 $00 $78
    ld de, $9800                                  ; $522f: $11 $00 $98
    ld bc, $0400                                  ; $5232: $01 $00 $04
    call BankedTileCopy                           ; $5235: $cd $e4 $04
    ld a, $7e                                     ; $5238: $3e $7e
    ld [rTilemapToTileDataAddressLookupTableLow], a; $523a: $ea $63 $cd
    ld a, $16                                     ; $523d: $3e $16
    ld [rTilemapToTileDataAddressLookupTableHigh], a; $523f: $ea $64 $cd
    ld a, [rContinueSavedGameFlowMode_Unsure]     ; $5242: $fa $a2 $ac
    cp $02                                        ; $5245: $fe $02
    jr nz, jr_003_5253                            ; $5247: $20 $0a

    ld b, $01                                     ; $5249: $06 $01
    ld hl, $4ae4                                  ; $524b: $21 $e4 $4a
    call SwitchBankToBAndJumpToHL                 ; $524e: $cd $de $05
    jr jr_003_5273                                ; $5251: $18 $20

jr_003_5253:
    cp $03                                        ; $5253: $fe $03
    jr nz, jr_003_5273                            ; $5255: $20 $1c

    ld a, $0b                                     ; $5257: $3e $0b
    ld hl, SGBPacket_MLT_REQ_DisableMultiplayer   ; $5259: $21 $00 $40
    ld de, $8800                                  ; $525c: $11 $00 $88
    ld bc, $1000                                  ; $525f: $01 $00 $10
    call BankedTileCopy                           ; $5262: $cd $e4 $04
    ld a, $0b                                     ; $5265: $3e $0b
    ld hl, $5800                                  ; $5267: $21 $00 $58
    ld de, $9800                                  ; $526a: $11 $00 $98
    ld bc, $0400                                  ; $526d: $01 $00 $04
    call BankedTileCopy                           ; $5270: $cd $e4 $04

jr_003_5273:
    call ClearShadowOAMBuffer                     ; $5273: $cd $b6 $05
    ld b, $03                                     ; $5276: $06 $03
    ld hl, InitBottomPromptBlinkTimerAndFrameState; $5278: $21 $80 $4e
    call SwitchBankToBAndJumpToHL                 ; $527b: $cd $de $05
    ld b, $03                                     ; $527e: $06 $03
    ld hl, $4e8a                                  ; $5280: $21 $8a $4e
    call SwitchBankToBAndJumpToHL                 ; $5283: $cd $de $05
    ld a, $10                                     ; $5286: $3e $10
    ld [rMessageScriptStreamResetEntryLow], a     ; $5288: $ea $43 $d8
    ld [rMessageScriptStreamEntryLow], a          ; $528b: $ea $2b $d8
    ld a, $20                                     ; $528e: $3e $20
    ld [rMessageScriptStreamResetEntryHigh], a    ; $5290: $ea $44 $d8
    ld [rMessageScriptStreamEntryHigh], a         ; $5293: $ea $2c $d8
    ld a, $90                                     ; $5296: $3e $90
    ld [rMessageScriptStreamLimitLow], a          ; $5298: $ea $45 $d8
    ld a, $58                                     ; $529b: $3e $58
    ld [rMessageScriptStreamLimitHigh], a         ; $529d: $ea $46 $d8
    ld a, $39                                     ; $52a0: $3e $39
    ld [rMessageScriptStreamPointerLow], a        ; $52a2: $ea $2d $d8
    ld a, $4f                                     ; $52a5: $3e $4f
    ld [rMessageScriptStreamPointerHigh], a       ; $52a7: $ea $2e $d8
    call Call_003_541f                            ; $52aa: $cd $1f $54
    call EnableLCDFromShadow                      ; $52ad: $cd $a2 $04
    call EnsureSGBMaskFreezeDisabled              ; $52b0: $cd $a5 $1f
    ld a, [rContinueSavedGameFlowMode_Unsure]     ; $52b3: $fa $a2 $ac
    cp $02                                        ; $52b6: $fe $02
    jr nz, jr_003_52c4                            ; $52b8: $20 $0a

    ld b, $01                                     ; $52ba: $06 $01
    ld hl, $4bae                                  ; $52bc: $21 $ae $4b
    call SwitchBankToBAndJumpToHL                 ; $52bf: $cd $de $05
    jr jr_003_52e4                                ; $52c2: $18 $20

jr_003_52c4:
    cp $03                                        ; $52c4: $fe $03
    jr nz, jr_003_52d7                            ; $52c6: $20 $0f

    ld b, $03                                     ; $52c8: $06 $03
    ld hl, TransitionFadePaletteTable_GS00_GS07_Start; $52ca: $21 $0c $47
    ld c, $0f                                     ; $52cd: $0e $0f
    ld de, $00a4                                  ; $52cf: $11 $a4 $00
    call PlayScreenTransitionFadeIn               ; $52d2: $cd $0d $04
    jr jr_003_52e4                                ; $52d5: $18 $0d

jr_003_52d7:
    ld b, $03                                     ; $52d7: $06 $03
    ld hl, TransitionFadePaletteTable_GS00_GS05_Start; $52d9: $21 $e8 $46
    ld c, $0b                                     ; $52dc: $0e $0b
    ld de, $0074                                  ; $52de: $11 $74 $00
    call PlayScreenTransitionFadeIn               ; $52e1: $cd $0d $04

jr_003_52e4:
    call ClearShadowOAMBufferFromCursor           ; $52e4: $cd $c5 $05
    rst RST_08                                    ; $52e7: $cf
    ld b, $03                                     ; $52e8: $06 $03
    ld hl, $4e8a                                  ; $52ea: $21 $8a $4e
    call SwitchBankToBAndJumpToHL                 ; $52ed: $cd $de $05
    ld a, [rInputButtonsPressed]                  ; $52f0: $fa $1e $c3
    and $01                                       ; $52f3: $e6 $01
    jr z, jr_003_52e4                             ; $52f5: $28 $ed

    ld c, $03                                     ; $52f7: $0e $03
    ld a, $02                                     ; $52f9: $3e $02
    call CallSoundEffectDispatcher                ; $52fb: $cd $b6 $03
    ld bc, $003c                                  ; $52fe: $01 $3c $00
    call DelayFramesByBC                          ; $5301: $cd $fa $05
    ld a, $05                                     ; $5304: $3e $05
    call CallSoundEffectDispatcher                ; $5306: $cd $b6 $03
    ld c, $00                                     ; $5309: $0e $00
    ld a, $01                                     ; $530b: $3e $01
    call CallSoundEffectDispatcher                ; $530d: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $5310: $cd $99 $03
    ld c, $00                                     ; $5313: $0e $00
    ld a, $01                                     ; $5315: $3e $01
    call CallSoundEffectDispatcher                ; $5317: $cd $b6 $03
    ld a, [rContinueSavedGameFlowMode_Unsure]     ; $531a: $fa $a2 $ac
    cp $02                                        ; $531d: $fe $02
    jr nz, jr_003_532b                            ; $531f: $20 $0a

    ld b, $01                                     ; $5321: $06 $01
    ld hl, $4bdc                                  ; $5323: $21 $dc $4b
    call SwitchBankToBAndJumpToHL                 ; $5326: $cd $de $05
    jr jr_003_534b                                ; $5329: $18 $20

jr_003_532b:
    cp $03                                        ; $532b: $fe $03
    jr nz, jr_003_533e                            ; $532d: $20 $0f

    ld b, $03                                     ; $532f: $06 $03
    ld hl, $4717                                  ; $5331: $21 $17 $47
    ld c, $0f                                     ; $5334: $0e $0f
    ld de, $00b3                                  ; $5336: $11 $b3 $00
    call PlayScreenTransitionFadeOut              ; $5339: $cd $4e $04
    jr jr_003_534b                                ; $533c: $18 $0d

jr_003_533e:
    ld b, $03                                     ; $533e: $06 $03
    ld hl, $46f3                                  ; $5340: $21 $f3 $46
    ld c, $0b                                     ; $5343: $0e $0b
    ld de, $0083                                  ; $5345: $11 $83 $00
    call PlayScreenTransitionFadeOut              ; $5348: $cd $4e $04

jr_003_534b:
    call DisableLCDAtVBlank                       ; $534b: $cd $83 $04
    ld a, [rContinueSavedGameFlowMode_Unsure]     ; $534e: $fa $a2 $ac
    dec a                                         ; $5351: $3d
    ld c, a                                       ; $5352: $4f
    ld b, $00                                     ; $5353: $06 $00
    ld hl, GS00_SP03_ContinueSavedGameScreen_StatePhaseLookupTable; $5355: $21 $66 $53
    add hl, bc                                    ; $5358: $09
    ld a, [hl]                                    ; $5359: $7e
    ld [rStatePhase_Current], a                   ; $535a: $ea $35 $d6
    ld hl, GS00_SP03_ContinueSavedGameScreen_GameStateLookupTable; $535d: $21 $69 $53
    add hl, bc                                    ; $5360: $09
    ld a, [hl]                                    ; $5361: $7e
    ld [rGameState_Current], a                    ; $5362: $ea $34 $d6
    ret                                           ; $5365: $c9


GS00_SP03_ContinueSavedGameScreen_StatePhaseLookupTable::
    db $0b, $0b, $09

GS00_SP03_ContinueSavedGameScreen_GameStateLookupTable::
    db $08, $0a, $09

GS00_StatePhase_04_ContinueSavedGameScreenIdle::
    ld a, $43                                     ; $536c: $3e $43
    ld [rLCDCShadow], a                           ; $536e: $ea $2e $c3
    xor a                                         ; $5371: $af
    ld [rBGPShadow], a                            ; $5372: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $5375: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $5378: $ea $31 $c3
    ld [rSCXShadow], a                            ; $537b: $ea $32 $c3
    ld [rSCYShadow], a                            ; $537e: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $5381: $cd $a0 $05
    call FillBGMap1WithTile01                     ; $5384: $cd $ab $05
    ld a, $0b                                     ; $5387: $3e $0b
    ld hl, $5000                                  ; $5389: $21 $00 $50
    ld de, $8000                                  ; $538c: $11 $00 $80
    ld bc, $0300                                  ; $538f: $01 $00 $03
    call BankedTileCopy                           ; $5392: $cd $e4 $04
    ld a, $09                                     ; $5395: $3e $09
    ld hl, $7800                                  ; $5397: $21 $00 $78
    ld de, $9000                                  ; $539a: $11 $00 $90
    ld bc, $0800                                  ; $539d: $01 $00 $08
    call BankedTileCopy                           ; $53a0: $cd $e4 $04
    ld a, $0b                                     ; $53a3: $3e $0b
    ld hl, $6c00                                  ; $53a5: $21 $00 $6c
    ld de, $9800                                  ; $53a8: $11 $00 $98
    ld bc, $0400                                  ; $53ab: $01 $00 $04
    call BankedTileCopy                           ; $53ae: $cd $e4 $04
    call ClearShadowOAMBuffer                     ; $53b1: $cd $b6 $05
    ld b, $03                                     ; $53b4: $06 $03
    ld hl, InitBottomPromptBlinkTimerAndFrameState; $53b6: $21 $80 $4e
    call SwitchBankToBAndJumpToHL                 ; $53b9: $cd $de $05
    ld b, $03                                     ; $53bc: $06 $03
    ld hl, TickBottomPromptBlinkSprite4C_A_OK     ; $53be: $21 $a6 $4e
    call SwitchBankToBAndJumpToHL                 ; $53c1: $cd $de $05
    call EnableLCDFromShadow                      ; $53c4: $cd $a2 $04
    ld b, $03                                     ; $53c7: $06 $03
    ld hl, TransitionFadePaletteTable_GS00_Start_2; $53c9: $21 $24 $47
    ld c, $11                                     ; $53cc: $0e $11
    ld de, $00c4                                  ; $53ce: $11 $c4 $00
    call PlayScreenTransitionFadeIn               ; $53d1: $cd $0d $04

jr_003_53d4:
    call ClearShadowOAMBufferFromCursor           ; $53d4: $cd $c5 $05
    rst RST_08                                    ; $53d7: $cf
    ld b, $03                                     ; $53d8: $06 $03
    ld hl, TickBottomPromptBlinkSprite4C_A_OK     ; $53da: $21 $a6 $4e
    call SwitchBankToBAndJumpToHL                 ; $53dd: $cd $de $05
    ld a, [rInputButtonsPressed]                  ; $53e0: $fa $1e $c3
    and $01                                       ; $53e3: $e6 $01
    jr z, jr_003_53d4                             ; $53e5: $28 $ed

    ld c, $03                                     ; $53e7: $0e $03
    ld a, $02                                     ; $53e9: $3e $02
    call CallSoundEffectDispatcher                ; $53eb: $cd $b6 $03
    ld bc, $003c                                  ; $53ee: $01 $3c $00
    call DelayFramesByBC                          ; $53f1: $cd $fa $05
    ld a, $05                                     ; $53f4: $3e $05
    call CallSoundEffectDispatcher                ; $53f6: $cd $b6 $03
    ld c, $00                                     ; $53f9: $0e $00
    ld a, $01                                     ; $53fb: $3e $01
    call CallSoundEffectDispatcher                ; $53fd: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $5400: $cd $99 $03
    ld c, $00                                     ; $5403: $0e $00
    ld a, $01                                     ; $5405: $3e $01
    call CallSoundEffectDispatcher                ; $5407: $cd $b6 $03
    ld b, $03                                     ; $540a: $06 $03
    ld hl, $472f                                  ; $540c: $21 $2f $47
    ld c, $11                                     ; $540f: $0e $11
    ld de, $00d3                                  ; $5411: $11 $d3 $00
    call PlayScreenTransitionFadeOut              ; $5414: $cd $4e $04
    call DisableLCDAtVBlank                       ; $5417: $cd $83 $04
    xor a                                         ; $541a: $af
    ld [rStatePhase_Current], a                   ; $541b: $ea $35 $d6
    ret                                           ; $541e: $c9


Call_003_541f:
jr_003_541f:
    call AdvanceMessageScriptStreamHelper_NoBankSwitch; $541f: $cd $1f $2c
    jr nz, jr_003_541f                            ; $5422: $20 $fb

    ret                                           ; $5424: $c9


GS00_TickMarioBlinkAnimation::
    ld a, [rMarioBlinkAnimationDelay]             ; $5425: $fa $17 $d8
    and a                                         ; $5428: $a7
    jr nz, .TickBlinkFrameDelay                   ; $5429: $20 $20

    ld a, [rMarioBlinkAnimationSequenceCursor]    ; $542b: $fa $18 $d8
    ld c, a                                       ; $542e: $4f
    ld b, $00                                     ; $542f: $06 $00

.FindNextBlinkFrameEntry:
    ld hl, GS00_MarioBlinkFrameDelayAndSpriteIdTable; $5431: $21 $5d $54
    add hl, bc                                    ; $5434: $09
    ld a, [hl+]                                   ; $5435: $2a
    and a                                         ; $5436: $a7
    jr nz, .LoadBlinkFrameEntry                   ; $5437: $20 $05

    ld bc, $0000                                  ; $5439: $01 $00 $00
    jr .FindNextBlinkFrameEntry                   ; $543c: $18 $f3

.LoadBlinkFrameEntry:
    ld [rMarioBlinkAnimationDelay], a             ; $543e: $ea $17 $d8
    ld a, [hl]                                    ; $5441: $7e
    ld [rMarioBlinkAnimationSpriteId], a          ; $5442: $ea $16 $d8
    inc c                                         ; $5445: $0c
    inc c                                         ; $5446: $0c
    ld a, c                                       ; $5447: $79
    ld [rMarioBlinkAnimationSequenceCursor], a    ; $5448: $ea $18 $d8

.TickBlinkFrameDelay:
    ld hl, rMarioBlinkAnimationDelay              ; $544b: $21 $17 $d8
    dec [hl]                                      ; $544e: $35
    ld a, [rMarioBlinkAnimationSpriteId]          ; $544f: $fa $16 $d8
    cp $ff                                        ; $5452: $fe $ff
    ret z                                         ; $5454: $c8

    add $83                                       ; $5455: $c6 $83
    ld bc, $5828                                  ; $5457: $01 $28 $58
    jp CopyOAMSpriteById                          ; $545a: $c3 $ce $20


GS00_MarioBlinkFrameDelayAndSpriteIdTable::
    db $ff, $00
    db $ff, $00
    db $ff, $00
    db $03, $01
    db $10, $02
    db $03, $01
    db $90, $00
    db $90, $00
    db $90, $00
    db $03, $01
    db $10, $02
    db $03, $01
    db $70, $00
    db $70, $00
    db $70, $00
    db $03, $01
    db $10, $02
    db $03, $01
    db $00

    ld c, a                                       ; $5482: $4f
    ld b, $00                                     ; $5483: $06 $00
    ld hl, $5492                                  ; $5485: $21 $92 $54
    add hl, bc                                    ; $5488: $09
    ld c, [hl]                                    ; $5489: $4e
    add hl, bc                                    ; $548a: $09
    ld a, $03                                     ; $548b: $3e $03
    ld c, l                                       ; $548d: $4d
    ld b, h                                       ; $548e: $44
    jp QueueCommandStreamAndProcessIfLCDOff       ; $548f: $c3 $38 $07


    inc bc                                        ; $5492: $03
    dec [hl]                                      ; $5493: $35
    ld h, a                                       ; $5494: $67
    sbc b                                         ; $5495: $98
    add hl, hl                                    ; $5496: $29
    inc b                                         ; $5497: $04
    and b                                         ; $5498: $a0
    and c                                         ; $5499: $a1
    and d                                         ; $549a: $a2
    and e                                         ; $549b: $a3
    sbc b                                         ; $549c: $98
    ld c, b                                       ; $549d: $48
    ld b, $a4                                     ; $549e: $06 $a4
    and l                                         ; $54a0: $a5
    and [hl]                                      ; $54a1: $a6
    and a                                         ; $54a2: $a7
    xor b                                         ; $54a3: $a8
    xor c                                         ; $54a4: $a9
    sbc b                                         ; $54a5: $98
    ld h, a                                       ; $54a6: $67
    rlca                                          ; $54a7: $07
    xor d                                         ; $54a8: $aa
    xor e                                         ; $54a9: $ab
    xor h                                         ; $54aa: $ac
    xor l                                         ; $54ab: $ad
    xor [hl]                                      ; $54ac: $ae
    xor a                                         ; $54ad: $af
    or b                                          ; $54ae: $b0
    sbc b                                         ; $54af: $98
    add a                                         ; $54b0: $87
    rlca                                          ; $54b1: $07
    or c                                          ; $54b2: $b1
    or d                                          ; $54b3: $b2
    or e                                          ; $54b4: $b3
    or h                                          ; $54b5: $b4
    or l                                          ; $54b6: $b5
    or [hl]                                       ; $54b7: $b6
    or a                                          ; $54b8: $b7
    sbc b                                         ; $54b9: $98
    and a                                         ; $54ba: $a7
    dec b                                         ; $54bb: $05
    cp b                                          ; $54bc: $b8
    cp c                                          ; $54bd: $b9
    cp d                                          ; $54be: $ba
    cp e                                          ; $54bf: $bb
    cp h                                          ; $54c0: $bc
    sbc b                                         ; $54c1: $98
    ret z                                         ; $54c2: $c8

    inc bc                                        ; $54c3: $03
    cp l                                          ; $54c4: $bd
    cp [hl]                                       ; $54c5: $be
    cp a                                          ; $54c6: $bf
    nop                                           ; $54c7: $00
    sbc b                                         ; $54c8: $98
    add hl, hl                                    ; $54c9: $29
    inc b                                         ; $54ca: $04
    ret nz                                        ; $54cb: $c0

    pop bc                                        ; $54cc: $c1
    jp nz, $98c3                                  ; $54cd: $c2 $c3 $98

    ld c, b                                       ; $54d0: $48
    ld b, $c4                                     ; $54d1: $06 $c4
    push bc                                       ; $54d3: $c5
    add $c7                                       ; $54d4: $c6 $c7
    ret z                                         ; $54d6: $c8

    ret                                           ; $54d7: $c9


    sbc b                                         ; $54d8: $98
    ld h, a                                       ; $54d9: $67
    rlca                                          ; $54da: $07
    jp z, $cccb                                   ; $54db: $ca $cb $cc

    call $cfce                                    ; $54de: $cd $ce $cf
    ret nc                                        ; $54e1: $d0

    sbc b                                         ; $54e2: $98
    add a                                         ; $54e3: $87
    rlca                                          ; $54e4: $07
    pop de                                        ; $54e5: $d1
    jp nc, $d4d3                                  ; $54e6: $d2 $d3 $d4

    push de                                       ; $54e9: $d5
    sub $d7                                       ; $54ea: $d6 $d7
    sbc b                                         ; $54ec: $98
    and a                                         ; $54ed: $a7
    dec b                                         ; $54ee: $05
    ret c                                         ; $54ef: $d8

    reti                                          ; $54f0: $d9


    jp c, $dcdb                                   ; $54f1: $da $db $dc

    sbc b                                         ; $54f4: $98
    ret z                                         ; $54f5: $c8

    inc bc                                        ; $54f6: $03
    db $dd                                        ; $54f7: $dd
    sbc $df                                       ; $54f8: $de $df
    nop                                           ; $54fa: $00
    sbc b                                         ; $54fb: $98
    add hl, hl                                    ; $54fc: $29
    inc b                                         ; $54fd: $04
    ldh [$ffe1], a                                ; $54fe: $e0 $e1
    ldh [c], a                                    ; $5500: $e2
    db $e3                                        ; $5501: $e3
    sbc b                                         ; $5502: $98
    ld c, b                                       ; $5503: $48
    ld b, $e4                                     ; $5504: $06 $e4
    push hl                                       ; $5506: $e5
    and $e7                                       ; $5507: $e6 $e7
    add sp, -$17                                  ; $5509: $e8 $e9
    sbc b                                         ; $550b: $98
    ld h, a                                       ; $550c: $67
    rlca                                          ; $550d: $07
    ld [$eceb], a                                 ; $550e: $ea $eb $ec
    db $ed                                        ; $5511: $ed
    xor $ef                                       ; $5512: $ee $ef
    ldh a, [$ff98]                                ; $5514: $f0 $98
    add a                                         ; $5516: $87
    rlca                                          ; $5517: $07
    pop af                                        ; $5518: $f1
    ldh a, [c]                                    ; $5519: $f2
    di                                            ; $551a: $f3
    db $f4                                        ; $551b: $f4
    push af                                       ; $551c: $f5
    or $d7                                        ; $551d: $f6 $d7
    sbc b                                         ; $551f: $98
    and a                                         ; $5520: $a7
    dec b                                         ; $5521: $05
    ld hl, sp-$07                                 ; $5522: $f8 $f9
    ld a, [$d7fb]                                 ; $5524: $fa $fb $d7
    sbc b                                         ; $5527: $98
    ret z                                         ; $5528: $c8

    inc bc                                        ; $5529: $03
    db $fd                                        ; $552a: $fd
    cp $d7                                        ; $552b: $fe $d7
    nop                                           ; $552d: $00

Bank2_PuzzleDataPointerTable_Puzzle000::
    db $b0, $52

Bank2_PuzzleDataPointerTable_Puzzle001::
    db $d0, $52

Bank2_PuzzleDataPointerTable_Puzzle002::
    db $f0, $52

Bank2_PuzzleDataPointerTable_Puzzle003::
    db $10, $53

Bank2_PuzzleDataPointerTable_Puzzle004::
    db $30, $53

Bank2_PuzzleDataPointerTable_Puzzle005::
    db $50, $53

Bank2_PuzzleDataPointerTable_Puzzle006::
    db $70, $53

Bank2_PuzzleDataPointerTable_Puzzle007::
    db $90, $53

Bank2_PuzzleDataPointerTable_Puzzle008::
    db $b0, $53

Bank2_PuzzleDataPointerTable_Puzzle009::
    db $d0, $53

Bank2_PuzzleDataPointerTable_Puzzle00A::
    db $f0, $53

Bank2_PuzzleDataPointerTable_Puzzle00B::
    db $10, $54

Bank2_PuzzleDataPointerTable_Puzzle00C::
    db $30, $54

Bank2_PuzzleDataPointerTable_Puzzle00D::
    db $50, $54

Bank2_PuzzleDataPointerTable_Puzzle00E::
    db $70, $54

Bank2_PuzzleDataPointerTable_Puzzle00F::
    db $90, $54

Bank2_PuzzleDataPointerTable_Puzzle010::
    db $b0, $54

Bank2_PuzzleDataPointerTable_Puzzle011::
    db $d0, $54

Bank2_PuzzleDataPointerTable_Puzzle012::
    db $f0, $54

Bank2_PuzzleDataPointerTable_Puzzle013::
    db $10, $55

Bank2_PuzzleDataPointerTable_Puzzle014::
    db $30, $55

Bank2_PuzzleDataPointerTable_Puzzle015::
    db $50, $55

Bank2_PuzzleDataPointerTable_Puzzle016::
    db $70, $55

Bank2_PuzzleDataPointerTable_Puzzle017::
    db $90, $55

Bank2_PuzzleDataPointerTable_Puzzle018::
    db $b0, $55

Bank2_PuzzleDataPointerTable_Puzzle019::
    db $d0, $55

Bank2_PuzzleDataPointerTable_Puzzle01A::
    db $f0, $55

Bank2_PuzzleDataPointerTable_Puzzle01B::
    db $10, $56

Bank2_PuzzleDataPointerTable_Puzzle01C::
    db $30, $56

Bank2_PuzzleDataPointerTable_Puzzle01D::
    db $50, $56

Bank2_PuzzleDataPointerTable_Puzzle01E::
    db $70, $56

Bank2_PuzzleDataPointerTable_Puzzle01F::
    db $90, $56

Bank2_PuzzleDataPointerTable_Puzzle020::
    db $b0, $56

Bank2_PuzzleDataPointerTable_Puzzle021::
    db $d0, $56

Bank2_PuzzleDataPointerTable_Puzzle022::
    db $f0, $56

Bank2_PuzzleDataPointerTable_Puzzle023::
    db $10, $57

Bank2_PuzzleDataPointerTable_Puzzle024::
    db $30, $57

Bank2_PuzzleDataPointerTable_Puzzle025::
    db $50, $57

Bank2_PuzzleDataPointerTable_Puzzle026::
    db $70, $57

Bank2_PuzzleDataPointerTable_Puzzle027::
    db $90, $57

Bank2_PuzzleDataPointerTable_Puzzle028::
    db $b0, $57

Bank2_PuzzleDataPointerTable_Puzzle029::
    db $d0, $57

Bank2_PuzzleDataPointerTable_Puzzle02A::
    db $f0, $57

Bank2_PuzzleDataPointerTable_Puzzle02B::
    db $10, $58

Bank2_PuzzleDataPointerTable_Puzzle02C::
    db $30, $58

Bank2_PuzzleDataPointerTable_Puzzle02D::
    db $50, $58

Bank2_PuzzleDataPointerTable_Puzzle02E::
    db $70, $58

Bank2_PuzzleDataPointerTable_Puzzle02F::
    db $90, $58

Bank2_PuzzleDataPointerTable_Puzzle030::
    db $b0, $58

Bank2_PuzzleDataPointerTable_Puzzle031::
    db $d0, $58

Bank2_PuzzleDataPointerTable_Puzzle032::
    db $f0, $58

Bank2_PuzzleDataPointerTable_Puzzle033::
    db $10, $59

Bank2_PuzzleDataPointerTable_Puzzle034::
    db $30, $59

Bank2_PuzzleDataPointerTable_Puzzle035::
    db $50, $59

Bank2_PuzzleDataPointerTable_Puzzle036::
    db $70, $59

Bank2_PuzzleDataPointerTable_Puzzle037::
    db $90, $59

Bank2_PuzzleDataPointerTable_Puzzle038::
    db $b0, $59

Bank2_PuzzleDataPointerTable_Puzzle039::
    db $d0, $59

Bank2_PuzzleDataPointerTable_Puzzle03A::
    db $f0, $59

Bank2_PuzzleDataPointerTable_Puzzle03B::
    db $10, $5a

Bank2_PuzzleDataPointerTable_Puzzle03C::
    db $30, $5a

Bank2_PuzzleDataPointerTable_Puzzle03D::
    db $50, $5a

Bank2_PuzzleDataPointerTable_Puzzle03E::
    db $70, $5a

Bank2_PuzzleDataPointerTable_Puzzle03F::
    db $90, $5a

Bank2_PuzzleDataPointerTable_Puzzle040::
    db $b0, $5a

Bank2_PuzzleDataPointerTable_Puzzle041::
    db $d0, $5a

Bank2_PuzzleDataPointerTable_Puzzle042::
    db $f0, $5a

Bank2_PuzzleDataPointerTable_Puzzle043::
    db $10, $5b

Bank2_PuzzleDataPointerTable_Puzzle044::
    db $30, $5b

Bank2_PuzzleDataPointerTable_Puzzle045::
    db $50, $5b

Bank2_PuzzleDataPointerTable_Puzzle046::
    db $70, $5b

Bank2_PuzzleDataPointerTable_Puzzle047::
    db $90, $5b

Bank2_PuzzleDataPointerTable_Puzzle048::
    db $b0, $5b

Bank2_PuzzleDataPointerTable_Puzzle049::
    db $d0, $5b

Bank2_PuzzleDataPointerTable_Puzzle04A::
    db $f0, $5b

Bank2_PuzzleDataPointerTable_Puzzle04B::
    db $10, $5c

Bank2_PuzzleDataPointerTable_Puzzle04C::
    db $30, $5c

Bank2_PuzzleDataPointerTable_Puzzle04D::
    db $50, $5c

Bank2_PuzzleDataPointerTable_Puzzle04E::
    db $70, $5c

Bank2_PuzzleDataPointerTable_Puzzle04F::
    db $90, $5c

Bank2_PuzzleDataPointerTable_Puzzle050::
    db $b0, $5c

Bank2_PuzzleDataPointerTable_Puzzle051::
    db $d0, $5c

Bank2_PuzzleDataPointerTable_Puzzle052::
    db $f0, $5c

Bank2_PuzzleDataPointerTable_Puzzle053::
    db $10, $5d

Bank2_PuzzleDataPointerTable_Puzzle054::
    db $30, $5d

Bank2_PuzzleDataPointerTable_Puzzle055::
    db $50, $5d

Bank2_PuzzleDataPointerTable_Puzzle056::
    db $70, $5d

Bank2_PuzzleDataPointerTable_Puzzle057::
    db $90, $5d

Bank2_PuzzleDataPointerTable_Puzzle058::
    db $b0, $5d

Bank2_PuzzleDataPointerTable_Puzzle059::
    db $d0, $5d

Bank2_PuzzleDataPointerTable_Puzzle05A::
    db $f0, $5d

Bank2_PuzzleDataPointerTable_Puzzle05B::
    db $10, $5e

Bank2_PuzzleDataPointerTable_Puzzle05C::
    db $30, $5e

Bank2_PuzzleDataPointerTable_Puzzle05D::
    db $50, $5e

Bank2_PuzzleDataPointerTable_Puzzle05E::
    db $70, $5e

Bank2_PuzzleDataPointerTable_Puzzle05F::
    db $90, $5e

Bank2_PuzzleDataPointerTable_Puzzle060::
    db $b0, $5e

Bank2_PuzzleDataPointerTable_Puzzle061::
    db $d0, $5e

Bank2_PuzzleDataPointerTable_Puzzle062::
    db $f0, $5e

Bank2_PuzzleDataPointerTable_Puzzle063::
    db $10, $5f

Bank2_PuzzleDataPointerTable_Puzzle064::
    db $30, $5f

Bank2_PuzzleDataPointerTable_Puzzle065::
    db $50, $5f

Bank2_PuzzleDataPointerTable_Puzzle066::
    db $70, $5f

Bank2_PuzzleDataPointerTable_Puzzle067::
    db $90, $5f

Bank2_PuzzleDataPointerTable_Puzzle068::
    db $b0, $5f

Bank2_PuzzleDataPointerTable_Puzzle069::
    db $d0, $5f

Bank2_PuzzleDataPointerTable_Puzzle06A::
    db $f0, $5f

Bank2_PuzzleDataPointerTable_Puzzle06B::
    db $10, $60

Bank2_PuzzleDataPointerTable_Puzzle06C::
    db $30, $60

Bank2_PuzzleDataPointerTable_Puzzle06D::
    db $50, $60

Bank2_PuzzleDataPointerTable_Puzzle06E::
    db $70, $60

Bank2_PuzzleDataPointerTable_Puzzle06F::
    db $90, $60

Bank2_PuzzleDataPointerTable_Puzzle070::
    db $b0, $60

Bank2_PuzzleDataPointerTable_Puzzle071::
    db $d0, $60

Bank2_PuzzleDataPointerTable_Puzzle072::
    db $f0, $60

Bank2_PuzzleDataPointerTable_Puzzle073::
    db $10, $61

Bank2_PuzzleDataPointerTable_Puzzle074::
    db $30, $61

Bank2_PuzzleDataPointerTable_Puzzle075::
    db $50, $61

Bank2_PuzzleDataPointerTable_Puzzle076::
    db $70, $61

Bank2_PuzzleDataPointerTable_Puzzle077::
    db $90, $61

Bank2_PuzzleDataPointerTable_Puzzle078::
    db $b0, $61

Bank2_PuzzleDataPointerTable_Puzzle079::
    db $d0, $61

Bank2_PuzzleDataPointerTable_Puzzle07A::
    db $f0, $61

Bank2_PuzzleDataPointerTable_Puzzle07B::
    db $10, $62

Bank2_PuzzleDataPointerTable_Puzzle07C::
    db $30, $62

Bank2_PuzzleDataPointerTable_Puzzle07D::
    db $50, $62

Bank2_PuzzleDataPointerTable_Puzzle07E::
    db $70, $62

Bank2_PuzzleDataPointerTable_Puzzle07F::
    db $90, $62

Bank2_PuzzleDataPointerTable_Puzzle080::
    db $b0, $62

Bank2_PuzzleDataPointerTable_Puzzle081::
    db $d0, $62

Bank2_PuzzleDataPointerTable_Puzzle082::
    db $f0, $62

Bank2_PuzzleDataPointerTable_Puzzle083::
    db $10, $63

Bank2_PuzzleDataPointerTable_Puzzle084::
    db $30, $63

Bank2_PuzzleDataPointerTable_Puzzle085::
    db $50, $63

Bank2_PuzzleDataPointerTable_Puzzle086::
    db $70, $63

Bank2_PuzzleDataPointerTable_Puzzle087::
    db $90, $63

Bank2_PuzzleDataPointerTable_Puzzle088::
    db $b0, $63

Bank2_PuzzleDataPointerTable_Puzzle089::
    db $d0, $63

Bank2_PuzzleDataPointerTable_Puzzle08A::
    db $f0, $63

Bank2_PuzzleDataPointerTable_Puzzle08B::
    db $10, $64

Bank2_PuzzleDataPointerTable_Puzzle08C::
    db $30, $64

Bank2_PuzzleDataPointerTable_Puzzle08D::
    db $50, $64

Bank2_PuzzleDataPointerTable_Puzzle08E::
    db $70, $64

Bank2_PuzzleDataPointerTable_Puzzle08F::
    db $90, $64

Bank2_PuzzleDataPointerTable_Puzzle090::
    db $b0, $64

Bank2_PuzzleDataPointerTable_Puzzle091::
    db $d0, $64

Bank2_PuzzleDataPointerTable_Puzzle092::
    db $f0, $64

Bank2_PuzzleDataPointerTable_Puzzle093::
    db $10, $65

Bank2_PuzzleDataPointerTable_Puzzle094::
    db $30, $65

Bank2_PuzzleDataPointerTable_Puzzle095::
    db $50, $65

Bank2_PuzzleDataPointerTable_Puzzle096::
    db $70, $65

Bank2_PuzzleDataPointerTable_Puzzle097::
    db $90, $65

Bank2_PuzzleDataPointerTable_Puzzle098::
    db $b0, $65

Bank2_PuzzleDataPointerTable_Puzzle099::
    db $d0, $65

Bank2_PuzzleDataPointerTable_Puzzle09A::
    db $f0, $65

Bank2_PuzzleDataPointerTable_Puzzle09B::
    db $10, $66

Bank2_PuzzleDataPointerTable_Puzzle09C::
    db $30, $66

Bank2_PuzzleDataPointerTable_Puzzle09D::
    db $50, $66

Bank2_PuzzleDataPointerTable_Puzzle09E::
    db $70, $66

Bank2_PuzzleDataPointerTable_Puzzle09F::
    db $90, $66

Bank2_PuzzleDataPointerTable_Puzzle0A0::
    db $b0, $66

Bank2_PuzzleDataPointerTable_Puzzle0A1::
    db $d0, $66

Bank2_PuzzleDataPointerTable_Puzzle0A2::
    db $f0, $66

Bank2_PuzzleDataPointerTable_Puzzle0A3::
    db $10, $67

Bank2_PuzzleDataPointerTable_Puzzle0A4::
    db $30, $67

Bank2_PuzzleDataPointerTable_Puzzle0A5::
    db $50, $67

Bank2_PuzzleDataPointerTable_Puzzle0A6::
    db $70, $67

Bank2_PuzzleDataPointerTable_Puzzle0A7::
    db $90, $67

Bank2_PuzzleDataPointerTable_Puzzle0A8::
    db $b0, $67

Bank2_PuzzleDataPointerTable_Puzzle0A9::
    db $d0, $67

Bank2_PuzzleDataPointerTable_Puzzle0AA::
    db $f0, $67

Bank2_PuzzleDataPointerTable_Puzzle0AB::
    db $10, $68

Bank2_PuzzleDataPointerTable_Puzzle0AC::
    db $30, $68

Bank2_PuzzleDataPointerTable_Puzzle0AD::
    db $50, $68

Bank2_PuzzleDataPointerTable_Puzzle0AE::
    db $70, $68

Bank2_PuzzleDataPointerTable_Puzzle0AF::
    db $90, $68

Bank2_PuzzleDataPointerTable_Puzzle0B0::
    db $b0, $68

Bank2_PuzzleDataPointerTable_Puzzle0B1::
    db $d0, $68

Bank2_PuzzleDataPointerTable_Puzzle0B2::
    db $f0, $68

Bank2_PuzzleDataPointerTable_Puzzle0B3::
    db $10, $69

Bank2_PuzzleDataPointerTable_Puzzle0B4::
    db $30, $69

Bank2_PuzzleDataPointerTable_Puzzle0B5::
    db $50, $69

Bank2_PuzzleDataPointerTable_Puzzle0B6::
    db $70, $69

Bank2_PuzzleDataPointerTable_Puzzle0B7::
    db $90, $69

Bank2_PuzzleDataPointerTable_Puzzle0B8::
    db $b0, $69

Bank2_PuzzleDataPointerTable_Puzzle0B9::
    db $d0, $69

Bank2_PuzzleDataPointerTable_Puzzle0BA::
    db $f0, $69

Bank2_PuzzleDataPointerTable_Puzzle0BB::
    db $10, $6a

Bank2_PuzzleDataPointerTable_Puzzle0BC::
    db $30, $6a

Bank2_PuzzleDataPointerTable_Puzzle0BD::
    db $50, $6a

Bank2_PuzzleDataPointerTable_Puzzle0BE::
    db $70, $6a

Bank2_PuzzleDataPointerTable_Puzzle0BF::
    db $90, $6a

Bank2_PuzzleDataPointerTable_Puzzle0C0::
    db $b0, $6a

Bank2_PuzzleDataPointerTable_Puzzle0C1::
    db $d0, $6a

Bank2_PuzzleDataPointerTable_Puzzle0C2::
    db $f0, $6a

Bank2_PuzzleDataPointerTable_Puzzle0C3::
    db $10, $6b

Bank2_PuzzleDataPointerTable_Puzzle0C4::
    db $30, $6b

Bank2_PuzzleDataPointerTable_Puzzle0C5::
    db $50, $6b

Bank2_PuzzleDataPointerTable_Puzzle0C6::
    db $70, $6b

Bank2_PuzzleDataPointerTable_Puzzle0C7::
    db $90, $6b

Bank2_PuzzleDataPointerTable_Puzzle0C8::
    db $b0, $6b

Bank2_PuzzleDataPointerTable_Puzzle0C9::
    db $d0, $6b

Bank2_PuzzleDataPointerTable_Puzzle0CA::
    db $f0, $6b

Bank2_PuzzleDataPointerTable_Puzzle0CB::
    db $10, $6c

Bank2_PuzzleDataPointerTable_Puzzle0CC::
    db $30, $6c

Bank2_PuzzleDataPointerTable_Puzzle0CD::
    db $50, $6c

Bank2_PuzzleDataPointerTable_Puzzle0CE::
    db $70, $6c

Bank2_PuzzleDataPointerTable_Puzzle0CF::
    db $90, $6c

Bank2_PuzzleDataPointerTable_Puzzle0D0::
    db $b0, $6c

Bank2_PuzzleDataPointerTable_Puzzle0D1::
    db $d0, $6c

Bank2_PuzzleDataPointerTable_Puzzle0D2::
    db $f0, $6c

Bank2_PuzzleDataPointerTable_Puzzle0D3::
    db $10, $6d

Bank2_PuzzleDataPointerTable_Puzzle0D4::
    db $30, $6d

Bank2_PuzzleDataPointerTable_Puzzle0D5::
    db $50, $6d

Bank2_PuzzleDataPointerTable_Puzzle0D6::
    db $70, $6d

Bank2_PuzzleDataPointerTable_Puzzle0D7::
    db $90, $6d

Bank2_PuzzleDataPointerTable_Puzzle0D8::
    db $b0, $6d

Bank2_PuzzleDataPointerTable_Puzzle0D9::
    db $d0, $6d

Bank2_PuzzleDataPointerTable_Puzzle0DA::
    db $f0, $6d

Bank2_PuzzleDataPointerTable_Puzzle0DB::
    db $10, $6e

Bank2_PuzzleDataPointerTable_Puzzle0DC::
    db $30, $6e

Bank2_PuzzleDataPointerTable_Puzzle0DD::
    db $50, $6e

Bank2_PuzzleDataPointerTable_Puzzle0DE::
    db $70, $6e

Bank2_PuzzleDataPointerTable_Puzzle0DF::
    db $90, $6e

Bank2_PuzzleDataPointerTable_Puzzle0E0::
    db $b0, $6e

Bank2_PuzzleDataPointerTable_Puzzle0E1::
    db $d0, $6e

Bank2_PuzzleDataPointerTable_Puzzle0E2::
    db $f0, $6e

Bank2_PuzzleDataPointerTable_Puzzle0E3::
    db $10, $6f

Bank2_PuzzleDataPointerTable_Puzzle0E4::
    db $30, $6f

Bank2_PuzzleDataPointerTable_Puzzle0E5::
    db $50, $6f

Bank2_PuzzleDataPointerTable_Puzzle0E6::
    db $70, $6f

Bank2_PuzzleDataPointerTable_Puzzle0E7::
    db $90, $6f

Bank2_PuzzleDataPointerTable_Puzzle0E8::
    db $b0, $6f

Bank2_PuzzleDataPointerTable_Puzzle0E9::
    db $d0, $6f

Bank2_PuzzleDataPointerTable_Puzzle0EA::
    db $f0, $6f

Bank2_PuzzleDataPointerTable_Puzzle0EB::
    db $10, $70

Bank2_PuzzleDataPointerTable_Puzzle0EC::
    db $30, $70

Bank2_PuzzleDataPointerTable_Puzzle0ED::
    db $50, $70

Bank2_PuzzleDataPointerTable_Puzzle0EE::
    db $70, $70

Bank2_PuzzleDataPointerTable_Puzzle0EF::
    db $90, $70

Bank2_PuzzleDataPointerTable_Puzzle0F0::
    db $b0, $70

Bank2_PuzzleDataPointerTable_Puzzle0F1::
    db $d0, $70

Bank2_PuzzleDataPointerTable_Puzzle0F2::
    db $f0, $70

Bank2_PuzzleDataPointerTable_Puzzle0F3::
    db $10, $71

Bank2_PuzzleDataPointerTable_Puzzle0F4::
    db $30, $71

Bank2_PuzzleDataPointerTable_Puzzle0F5::
    db $50, $71

Bank2_PuzzleDataPointerTable_Puzzle0F6::
    db $70, $71

Bank2_PuzzleDataPointerTable_Puzzle0F7::
    db $90, $71

Bank2_PuzzleDataPointerTable_Puzzle0F8::
    db $b0, $71

Bank2_PuzzleDataPointerTable_Puzzle0F9::
    db $d0, $71

Bank2_PuzzleDataPointerTable_Puzzle0FA::
    db $f0, $71

Bank2_PuzzleDataPointerTable_Puzzle0FB::
    db $10, $72

Bank2_PuzzleDataPointerTable_Puzzle0FC::
    db $30, $72

Bank2_PuzzleDataPointerTable_Puzzle0FD::
    db $50, $72

Bank2_PuzzleDataPointerTable_Puzzle0FE::
    db $70, $72

Bank2_PuzzleDataPointerTable_Puzzle0FF::
    db $90, $72

Bank2_PuzzleDataPointerTable_Puzzle100::
    db $b0, $72

PuzzleNamePointerTable::
    db $62, $6c
    db $62, $6c
    db $62, $6c
    db $62, $6c
    db $62, $6c
    db $62, $6c
    db $62, $6c
    db $62, $6c
    db $62, $6c
    db $32, $59
    db $3f, $59
    db $52, $59
    db $61, $59
    db $70, $59
    db $81, $59
    db $a2, $59
    db $bf, $59
    db $ce, $59
    db $e3, $59
    db $f0, $59
    db $05, $5a
    db $10, $5a
    db $21, $5a
    db $30, $5a
    db $45, $5a
    db $5a, $5a
    db $7d, $5a
    db $8a, $5a
    db $95, $5a
    db $a4, $5a
    db $b3, $5a
    db $c2, $5a
    db $d5, $5a
    db $e6, $5a
    db $f1, $5a
    db $06, $5b
    db $13, $5b
    db $20, $5b
    db $31, $5b
    db $42, $5b
    db $4f, $5b
    db $60, $5b
    db $79, $5b
    db $86, $5b
    db $a1, $5b
    db $b0, $5b
    db $c7, $5b
    db $da, $5b
    db $e9, $5b
    db $f8, $5b
    db $0d, $5c
    db $22, $5c
    db $2b, $5c
    db $44, $5c
    db $5d, $5c
    db $76, $5c
    db $87, $5c
    db $96, $5c
    db $a5, $5c
    db $bc, $5c
    db $cf, $5c
    db $e2, $5c
    db $01, $5d
    db $16, $5d
    db $27, $5d
    db $3c, $5d
    db $51, $5d
    db $5e, $5d
    db $75, $5d
    db $84, $5d
    db $91, $5d
    db $a2, $5d
    db $ad, $5d
    db $be, $5d
    db $cd, $5d
    db $da, $5d
    db $e5, $5d
    db $fc, $5d
    db $07, $5e
    db $18, $5e
    db $25, $5e
    db $3c, $5e
    db $4d, $5e
    db $62, $5e
    db $6d, $5e
    db $8a, $5e
    db $9b, $5e
    db $ac, $5e
    db $cd, $5e
    db $e6, $5e
    db $f3, $5e
    db $08, $5f
    db $15, $5f
    db $28, $5f
    db $35, $5f
    db $4e, $5f
    db $5d, $5f
    db $8e, $5f
    db $a1, $5f
    db $b8, $5f
    db $cd, $5f
    db $e4, $5f
    db $f1, $5f
    db $fc, $5f
    db $13, $60
    db $32, $60
    db $4b, $60
    db $58, $60
    db $69, $60
    db $8c, $60
    db $a9, $60
    db $b6, $60
    db $d1, $60
    db $de, $60
    db $ef, $60
    db $fe, $60
    db $0d, $61
    db $20, $61
    db $31, $61
    db $40, $61
    db $59, $61
    db $68, $61
    db $8b, $61
    db $ae, $61
    db $bb, $61
    db $d4, $61
    db $e7, $61
    db $10, $62
    db $27, $62
    db $3c, $62
    db $59, $62
    db $68, $62
    db $85, $62
    db $a6, $62
    db $b5, $62
    db $c2, $62
    db $d7, $62
    db $f0, $62
    db $03, $63
    db $16, $63
    db $29, $63
    db $40, $63
    db $5b, $63
    db $76, $63
    db $85, $63
    db $96, $63
    db $ad, $63
    db $bc, $63
    db $cd, $63
    db $da, $63
    db $ef, $63
    db $0c, $64
    db $2f, $64
    db $3e, $64
    db $5d, $64
    db $72, $64
    db $8b, $64
    db $b2, $64
    db $cb, $64
    db $d6, $64
    db $e5, $64
    db $f6, $64
    db $0d, $65
    db $1a, $65
    db $27, $65
    db $32, $65
    db $51, $65
    db $66, $65
    db $7b, $65
    db $88, $65
    db $99, $65
    db $a6, $65
    db $b3, $65
    db $c8, $65
    db $dd, $65
    db $02, $66
    db $0d, $66
    db $2e, $66
    db $3d, $66
    db $50, $66
    db $5b, $66
    db $7c, $66
    db $89, $66
    db $9e, $66
    db $af, $66
    db $c0, $66
    db $d1, $66
    db $e4, $66
    db $fb, $66
    db $12, $67
    db $23, $67
    db $30, $67
    db $3d, $67
    db $54, $67
    db $63, $67
    db $6e, $67
    db $95, $67
    db $b0, $67
    db $cb, $67
    db $e2, $67
    db $f3, $67
    db $04, $68
    db $11, $68
    db $22, $68
    db $2f, $68
    db $42, $68
    db $65, $68
    db $7c, $68
    db $8f, $68
    db $9e, $68
    db $b1, $68
    db $be, $68
    db $cf, $68
    db $dc, $68
    db $fd, $68
    db $08, $69
    db $13, $69
    db $34, $69
    db $43, $69
    db $52, $69
    db $5d, $69
    db $70, $69
    db $85, $69
    db $9a, $69
    db $a5, $69
    db $c0, $69
    db $dd, $69
    db $ee, $69
    db $0d, $6a
    db $1e, $6a
    db $3b, $6a
    db $4a, $6a
    db $63, $6a
    db $82, $6a
    db $91, $6a
    db $a8, $6a
    db $bd, $6a
    db $d2, $6a
    db $e5, $6a
    db $f4, $6a
    db $01, $6b
    db $10, $6b
    db $31, $6b
    db $40, $6b
    db $57, $6b
    db $6c, $6b
    db $7b, $6b
    db $8e, $6b
    db $a1, $6b
    db $ba, $6b
    db $cb, $6b
    db $d8, $6b
    db $f1, $6b
    db $0c, $6c
    db $21, $6c
    db $3a, $6c
    db $4f, $6c

SETCHARMAP messages

PuzzleName_009_EP_Note::
    db $4d, $60, "note", $ff, $ff, $00

    db $45, $60, "diamond", $ff, $ff, $00

    ld c, d                                       ; $5952: $4a
    ld h, b                                       ; $5953: $60
    rst $10                                       ; $5954: $d7
    nop                                           ; $5955: $00
    call nc, $c500                                ; $5956: $d4 $00 $c5
    nop                                           ; $5959: $00
    ret z                                         ; $595a: $c8

    nop                                           ; $595b: $00
    ret                                           ; $595c: $c9


    nop                                           ; $595d: $00
    rst $38                                       ; $595e: $ff
    rst $38                                       ; $595f: $ff
    nop                                           ; $5960: $00
    ld c, d                                       ; $5961: $4a
    ld h, b                                       ; $5962: $60
    call z, $c900                                 ; $5963: $cc $00 $c9
    nop                                           ; $5966: $00
    push bc                                       ; $5967: $c5
    nop                                           ; $5968: $00
    sub $00                                       ; $5969: $d6 $00
    ret c                                         ; $596b: $d8

    nop                                           ; $596c: $00
    rst $38                                       ; $596d: $ff
    rst $38                                       ; $596e: $ff
    nop                                           ; $596f: $00
    ld c, b                                       ; $5970: $48
    ld h, b                                       ; $5971: $60
    rst RST_00                                    ; $5972: $c7
    nop                                           ; $5973: $00
    ret nc                                        ; $5974: $d0

    nop                                           ; $5975: $00
    db $d3                                        ; $5976: $d3
    nop                                           ; $5977: $00
    jp c, $c900                                   ; $5978: $da $00 $c9

    nop                                           ; $597b: $00
    sub $00                                       ; $597c: $d6 $00
    rst $38                                       ; $597e: $ff
    rst $38                                       ; $597f: $ff
    nop                                           ; $5980: $00
    ld b, e                                       ; $5981: $43
    ld e, e                                       ; $5982: $5b
    push de                                       ; $5983: $d5
    nop                                           ; $5984: $00
    reti                                          ; $5985: $d9


    nop                                           ; $5986: $00
    ret                                           ; $5987: $c9


    nop                                           ; $5988: $00
    rst $10                                       ; $5989: $d7
    nop                                           ; $598a: $00
    ret c                                         ; $598b: $d8

    nop                                           ; $598c: $00
    call $d300                                    ; $598d: $cd $00 $d3
    nop                                           ; $5990: $00
    jp nc, rP1                                    ; $5991: $d2 $00 $ff

    rst $38                                       ; $5994: $ff
    ld c, h                                       ; $5995: $4c
    ld h, h                                       ; $5996: $64
    pop de                                        ; $5997: $d1
    nop                                           ; $5998: $00
    push bc                                       ; $5999: $c5
    nop                                           ; $599a: $00
    sub $00                                       ; $599b: $d6 $00
    rst RST_08                                    ; $599d: $cf
    nop                                           ; $599e: $00
    rst $38                                       ; $599f: $ff
    rst $38                                       ; $59a0: $ff
    nop                                           ; $59a1: $00
    ld c, c                                       ; $59a2: $49
    ld e, e                                       ; $59a3: $5b
    ret z                                         ; $59a4: $c8

    nop                                           ; $59a5: $00
    db $d3                                        ; $59a6: $d3
    nop                                           ; $59a7: $00
    ret nc                                        ; $59a8: $d0

    nop                                           ; $59a9: $00
    ret nc                                        ; $59aa: $d0

    nop                                           ; $59ab: $00
    push bc                                       ; $59ac: $c5
    nop                                           ; $59ad: $00
    sub $00                                       ; $59ae: $d6 $00
    rst $38                                       ; $59b0: $ff
    rst $38                                       ; $59b1: $ff
    ld c, a                                       ; $59b2: $4f
    ld h, h                                       ; $59b3: $64
    rst $10                                       ; $59b4: $d7
    nop                                           ; $59b5: $00
    call $cb00                                    ; $59b6: $cd $00 $cb
    nop                                           ; $59b9: $00
    jp nc, rP1                                    ; $59ba: $d2 $00 $ff

    rst $38                                       ; $59bd: $ff
    nop                                           ; $59be: $00
    ld c, c                                       ; $59bf: $49
    ld h, b                                       ; $59c0: $60
    push bc                                       ; $59c1: $c5
    nop                                           ; $59c2: $00
    sub $00                                       ; $59c3: $d6 $00
    sub $00                                       ; $59c5: $d6 $00
    db $d3                                        ; $59c7: $d3
    nop                                           ; $59c8: $00
    db $db                                        ; $59c9: $db
    nop                                           ; $59ca: $00
    rst $38                                       ; $59cb: $ff
    rst $38                                       ; $59cc: $ff
    nop                                           ; $59cd: $00
    ld b, c                                       ; $59ce: $41
    ld h, b                                       ; $59cf: $60
    rst RST_00                                    ; $59d0: $c7
    nop                                           ; $59d1: $00
    sub $00                                       ; $59d2: $d6 $00
    ret                                           ; $59d4: $c9


    nop                                           ; $59d5: $00
    rst $10                                       ; $59d6: $d7
    nop                                           ; $59d7: $00
    rst RST_00                                    ; $59d8: $c7
    nop                                           ; $59d9: $00
    ret                                           ; $59da: $c9


    nop                                           ; $59db: $00
    jp nc, rPuzzleGridWidth                       ; $59dc: $d2 $00 $d8

    nop                                           ; $59df: $00
    rst $38                                       ; $59e0: $ff
    rst $38                                       ; $59e1: $ff
    nop                                           ; $59e2: $00
    ld c, l                                       ; $59e3: $4d
    ld h, b                                       ; $59e4: $60
    rst $10                                       ; $59e5: $d7
    nop                                           ; $59e6: $00
    ret c                                         ; $59e7: $d8

    nop                                           ; $59e8: $00
    push bc                                       ; $59e9: $c5
    nop                                           ; $59ea: $00
    sub $00                                       ; $59eb: $d6 $00
    rst $38                                       ; $59ed: $ff
    rst $38                                       ; $59ee: $ff
    nop                                           ; $59ef: $00
    ld b, e                                       ; $59f0: $43
    ld h, b                                       ; $59f1: $60
    rst $10                                       ; $59f2: $d7
    nop                                           ; $59f3: $00
    push bc                                       ; $59f4: $c5
    nop                                           ; $59f5: $00
    call $d000                                    ; $59f6: $cd $00 $d0
    nop                                           ; $59f9: $00
    add $00                                       ; $59fa: $c6 $00
    db $d3                                        ; $59fc: $d3
    nop                                           ; $59fd: $00
    push bc                                       ; $59fe: $c5
    nop                                           ; $59ff: $00
    ret c                                         ; $5a00: $d8

    nop                                           ; $5a01: $00
    rst $38                                       ; $5a02: $ff
    rst $38                                       ; $5a03: $ff
    nop                                           ; $5a04: $00
    ld d, b                                       ; $5a05: $50
    ld h, b                                       ; $5a06: $60
    rst RST_00                                    ; $5a07: $c7
    nop                                           ; $5a08: $00
    push bc                                       ; $5a09: $c5
    nop                                           ; $5a0a: $00
    sub $00                                       ; $5a0b: $d6 $00
    rst $38                                       ; $5a0d: $ff
    rst $38                                       ; $5a0e: $ff
    nop                                           ; $5a0f: $00
    ld b, a                                       ; $5a10: $47
    ld h, b                                       ; $5a11: $60
    rst RST_00                                    ; $5a12: $c7
    nop                                           ; $5a13: $00
    push bc                                       ; $5a14: $c5
    nop                                           ; $5a15: $00
    rst RST_00                                    ; $5a16: $c7
    nop                                           ; $5a17: $00
    ret c                                         ; $5a18: $d8

    nop                                           ; $5a19: $00
    reti                                          ; $5a1a: $d9


    nop                                           ; $5a1b: $00
    rst $10                                       ; $5a1c: $d7
    nop                                           ; $5a1d: $00
    rst $38                                       ; $5a1e: $ff
    rst $38                                       ; $5a1f: $ff
    nop                                           ; $5a20: $00
    ld c, e                                       ; $5a21: $4b
    ld h, b                                       ; $5a22: $60
    push bc                                       ; $5a23: $c5
    nop                                           ; $5a24: $00
    call nc, $d400                                ; $5a25: $d4 $00 $d4
    nop                                           ; $5a28: $00
    ret nc                                        ; $5a29: $d0

    nop                                           ; $5a2a: $00
    ret                                           ; $5a2b: $c9


    nop                                           ; $5a2c: $00
    rst $38                                       ; $5a2d: $ff
    rst $38                                       ; $5a2e: $ff
    nop                                           ; $5a2f: $00
    ld b, c                                       ; $5a30: $41
    ld h, b                                       ; $5a31: $60
    rst RST_00                                    ; $5a32: $c7
    nop                                           ; $5a33: $00
    call z, $c900                                 ; $5a34: $cc $00 $c9
    nop                                           ; $5a37: $00
    rst $10                                       ; $5a38: $d7
    nop                                           ; $5a39: $00
    ret c                                         ; $5a3a: $d8

    nop                                           ; $5a3b: $00
    jp nc, $d900                                  ; $5a3c: $d2 $00 $d9

    nop                                           ; $5a3f: $00
    ret c                                         ; $5a40: $d8

    nop                                           ; $5a41: $00
    rst $38                                       ; $5a42: $ff
    rst $38                                       ; $5a43: $ff
    nop                                           ; $5a44: $00
    ld b, c                                       ; $5a45: $41
    ld h, b                                       ; $5a46: $60
    ret z                                         ; $5a47: $c8

    nop                                           ; $5a48: $00
    db $d3                                        ; $5a49: $d3
    nop                                           ; $5a4a: $00
    reti                                          ; $5a4b: $d9


    nop                                           ; $5a4c: $00
    rlc b                                         ; $5a4d: $cb $00
    call z, $d200                                 ; $5a4f: $cc $00 $d2
    nop                                           ; $5a52: $00
    reti                                          ; $5a53: $d9


    nop                                           ; $5a54: $00
    ret c                                         ; $5a55: $d8

    nop                                           ; $5a56: $00
    rst $38                                       ; $5a57: $ff
    rst $38                                       ; $5a58: $ff
    nop                                           ; $5a59: $00
    ld c, h                                       ; $5a5a: $4c
    ld e, e                                       ; $5a5b: $5b
    rst RST_08                                    ; $5a5c: $cf
    nop                                           ; $5a5d: $00
    jp nc, $cd00                                  ; $5a5e: $d2 $00 $cd

    nop                                           ; $5a61: $00
    jp z, $c900                                   ; $5a62: $ca $00 $c9

    nop                                           ; $5a65: $00
    rst $38                                       ; $5a66: $ff
    rst $38                                       ; $5a67: $ff
    ld b, d                                       ; $5a68: $42
    ld h, h                                       ; $5a69: $64
    push bc                                       ; $5a6a: $c5
    nop                                           ; $5a6b: $00
    jp nc, $c800                                  ; $5a6c: $d2 $00 $c8

    nop                                           ; $5a6f: $00
    rst RST_18                                    ; $5a70: $df
    nop                                           ; $5a71: $00
    jp z, $d300                                   ; $5a72: $ca $00 $d3

    nop                                           ; $5a75: $00
    sub $00                                       ; $5a76: $d6 $00
    rst RST_08                                    ; $5a78: $cf
    nop                                           ; $5a79: $00
    rst $38                                       ; $5a7a: $ff
    rst $38                                       ; $5a7b: $ff
    nop                                           ; $5a7c: $00
    ld c, [hl]                                    ; $5a7d: $4e
    ld h, b                                       ; $5a7e: $60
    jp z, $d000                                   ; $5a7f: $ca $00 $d0

    nop                                           ; $5a82: $00
    push bc                                       ; $5a83: $c5
    nop                                           ; $5a84: $00
    rlc b                                         ; $5a85: $cb $00
    rst $38                                       ; $5a87: $ff
    rst $38                                       ; $5a88: $ff
    nop                                           ; $5a89: $00
    ld d, b                                       ; $5a8a: $50
    ld h, b                                       ; $5a8b: $60
    rst RST_00                                    ; $5a8c: $c7
    nop                                           ; $5a8d: $00
    reti                                          ; $5a8e: $d9


    nop                                           ; $5a8f: $00
    call nc, rP1                                  ; $5a90: $d4 $00 $ff
    rst $38                                       ; $5a93: $ff
    nop                                           ; $5a94: $00
    ld c, e                                       ; $5a95: $4b
    ld h, b                                       ; $5a96: $60
    jp z, $d000                                   ; $5a97: $ca $00 $d0

    nop                                           ; $5a9a: $00
    push bc                                       ; $5a9b: $c5
    nop                                           ; $5a9c: $00
    rst $10                                       ; $5a9d: $d7
    nop                                           ; $5a9e: $00
    rst RST_08                                    ; $5a9f: $cf
    nop                                           ; $5aa0: $00
    rst $38                                       ; $5aa1: $ff
    rst $38                                       ; $5aa2: $ff
    nop                                           ; $5aa3: $00
    ld c, d                                       ; $5aa4: $4a
    ld h, b                                       ; $5aa5: $60
    call z, $d300                                 ; $5aa6: $cc $00 $d3
    nop                                           ; $5aa9: $00
    reti                                          ; $5aaa: $d9


    nop                                           ; $5aab: $00
    rst $10                                       ; $5aac: $d7
    nop                                           ; $5aad: $00
    ret                                           ; $5aae: $c9


    nop                                           ; $5aaf: $00
    rst $38                                       ; $5ab0: $ff
    rst $38                                       ; $5ab1: $ff
    nop                                           ; $5ab2: $00
    ld c, e                                       ; $5ab3: $4b
    ld h, b                                       ; $5ab4: $60
    rlc b                                         ; $5ab5: $cb $00
    ret nc                                        ; $5ab7: $d0

    nop                                           ; $5ab8: $00
    db $d3                                        ; $5ab9: $d3
    nop                                           ; $5aba: $00
    jp c, $c900                                   ; $5abb: $da $00 $c9

    nop                                           ; $5abe: $00
    rst $38                                       ; $5abf: $ff
    rst $38                                       ; $5ac0: $ff
    nop                                           ; $5ac1: $00
    ld b, [hl]                                    ; $5ac2: $46
    ld h, b                                       ; $5ac3: $60
    add $00                                       ; $5ac4: $c6 $00
    push bc                                       ; $5ac6: $c5
    nop                                           ; $5ac7: $00
    ret nc                                        ; $5ac8: $d0

    nop                                           ; $5ac9: $00
    ret nc                                        ; $5aca: $d0

    nop                                           ; $5acb: $00
    db $d3                                        ; $5acc: $d3
    nop                                           ; $5acd: $00
    db $d3                                        ; $5ace: $d3
    nop                                           ; $5acf: $00
    jp nc, rP1                                    ; $5ad0: $d2 $00 $ff

    rst $38                                       ; $5ad3: $ff
    nop                                           ; $5ad4: $00
    ld c, d                                       ; $5ad5: $4a
    ld h, b                                       ; $5ad6: $60
    call nc, $c900                                ; $5ad7: $d4 $00 $c9
    nop                                           ; $5ada: $00
    jp nc, $c700                                  ; $5adb: $d2 $00 $c7

    nop                                           ; $5ade: $00
    call $d000                                    ; $5adf: $cd $00 $d0
    nop                                           ; $5ae2: $00
    rst $38                                       ; $5ae3: $ff
    rst $38                                       ; $5ae4: $ff
    nop                                           ; $5ae5: $00
    ld d, b                                       ; $5ae6: $50
    ld h, b                                       ; $5ae7: $60
    call nc, $d300                                ; $5ae8: $d4 $00 $d3
    nop                                           ; $5aeb: $00
    ret c                                         ; $5aec: $d8

    nop                                           ; $5aed: $00
    rst $38                                       ; $5aee: $ff
    rst $38                                       ; $5aef: $ff
    nop                                           ; $5af0: $00
    ld b, d                                       ; $5af1: $42
    ld h, b                                       ; $5af2: $60
    reti                                          ; $5af3: $d9


    nop                                           ; $5af4: $00
    pop de                                        ; $5af5: $d1
    nop                                           ; $5af6: $00
    add $00                                       ; $5af7: $c6 $00
    sub $00                                       ; $5af9: $d6 $00
    ret                                           ; $5afb: $c9


    nop                                           ; $5afc: $00
    ret nc                                        ; $5afd: $d0

    nop                                           ; $5afe: $00
    ret nc                                        ; $5aff: $d0

    nop                                           ; $5b00: $00
    push bc                                       ; $5b01: $c5
    nop                                           ; $5b02: $00
    rst $38                                       ; $5b03: $ff
    rst $38                                       ; $5b04: $ff
    nop                                           ; $5b05: $00
    ld c, a                                       ; $5b06: $4f
    ld h, b                                       ; $5b07: $60
    add $00                                       ; $5b08: $c6 $00
    ret                                           ; $5b0a: $c9


    nop                                           ; $5b0b: $00
    ret nc                                        ; $5b0c: $d0

    nop                                           ; $5b0d: $00
    ret nc                                        ; $5b0e: $d0

    nop                                           ; $5b0f: $00
    rst $38                                       ; $5b10: $ff
    rst $38                                       ; $5b11: $ff
    nop                                           ; $5b12: $00
    ld c, l                                       ; $5b13: $4d
    ld h, b                                       ; $5b14: $60
    add $00                                       ; $5b15: $c6 $00
    db $d3                                        ; $5b17: $d3
    nop                                           ; $5b18: $00
    db $d3                                        ; $5b19: $d3
    nop                                           ; $5b1a: $00
    ret c                                         ; $5b1b: $d8

    nop                                           ; $5b1c: $00
    rst $38                                       ; $5b1d: $ff
    rst $38                                       ; $5b1e: $ff
    nop                                           ; $5b1f: $00
    ld c, b                                       ; $5b20: $48
    ld h, b                                       ; $5b21: $60
    rst RST_00                                    ; $5b22: $c7
    nop                                           ; $5b23: $00
    push bc                                       ; $5b24: $c5
    nop                                           ; $5b25: $00
    jp nc, $c800                                  ; $5b26: $d2 $00 $c8

    nop                                           ; $5b29: $00
    ret nc                                        ; $5b2a: $d0

    nop                                           ; $5b2b: $00
    ret                                           ; $5b2c: $c9


    nop                                           ; $5b2d: $00
    rst $38                                       ; $5b2e: $ff
    rst $38                                       ; $5b2f: $ff
    nop                                           ; $5b30: $00
    ld b, a                                       ; $5b31: $47
    ld h, b                                       ; $5b32: $60
    jp z, $c500                                   ; $5b33: $ca $00 $c5

    nop                                           ; $5b36: $00
    reti                                          ; $5b37: $d9


    nop                                           ; $5b38: $00
    rst RST_00                                    ; $5b39: $c7
    nop                                           ; $5b3a: $00
    ret                                           ; $5b3b: $c9


    nop                                           ; $5b3c: $00
    ret c                                         ; $5b3d: $d8

    nop                                           ; $5b3e: $00
    rst $38                                       ; $5b3f: $ff
    rst $38                                       ; $5b40: $ff
    nop                                           ; $5b41: $00
    ld c, [hl]                                    ; $5b42: $4e
    ld h, b                                       ; $5b43: $60
    add $00                                       ; $5b44: $c6 $00
    reti                                          ; $5b46: $d9


    nop                                           ; $5b47: $00
    ret nc                                        ; $5b48: $d0

    nop                                           ; $5b49: $00
    add $00                                       ; $5b4a: $c6 $00
    rst $38                                       ; $5b4c: $ff
    rst $38                                       ; $5b4d: $ff
    nop                                           ; $5b4e: $00
    ld b, a                                       ; $5b4f: $47
    ld h, b                                       ; $5b50: $60
    push bc                                       ; $5b51: $c5
    nop                                           ; $5b52: $00
    jp nc, $c700                                  ; $5b53: $d2 $00 $c7

    nop                                           ; $5b56: $00
    call z, $d300                                 ; $5b57: $cc $00 $d3
    nop                                           ; $5b5a: $00
    sub $00                                       ; $5b5b: $d6 $00
    rst $38                                       ; $5b5d: $ff
    rst $38                                       ; $5b5e: $ff
    nop                                           ; $5b5f: $00
    ld a, $60                                     ; $5b60: $3e $60
    rst RST_00                                    ; $5b62: $c7
    nop                                           ; $5b63: $00
    call z, $d300                                 ; $5b64: $cc $00 $d3
    nop                                           ; $5b67: $00
    call nc, $d000                                ; $5b68: $d4 $00 $d0
    nop                                           ; $5b6b: $00
    call $ca00                                    ; $5b6c: $cd $00 $ca
    nop                                           ; $5b6f: $00
    ret c                                         ; $5b70: $d8

    nop                                           ; $5b71: $00
    ret                                           ; $5b72: $c9


    nop                                           ; $5b73: $00
    sub $00                                       ; $5b74: $d6 $00
    rst $38                                       ; $5b76: $ff
    rst $38                                       ; $5b77: $ff
    nop                                           ; $5b78: $00
    ld c, a                                       ; $5b79: $4f
    ld h, b                                       ; $5b7a: $60
    add $00                                       ; $5b7b: $c6 $00
    push bc                                       ; $5b7d: $c5
    nop                                           ; $5b7e: $00
    ret nc                                        ; $5b7f: $d0

    nop                                           ; $5b80: $00
    ret nc                                        ; $5b81: $d0

    nop                                           ; $5b82: $00
    rst $38                                       ; $5b83: $ff
    rst $38                                       ; $5b84: $ff
    nop                                           ; $5b85: $00
    ld c, a                                       ; $5b86: $4f
    ld e, e                                       ; $5b87: $5b
    xor h                                         ; $5b88: $ac
    nop                                           ; $5b89: $00
    cp c                                          ; $5b8a: $b9
    nop                                           ; $5b8b: $00
    cp c                                          ; $5b8c: $b9
    nop                                           ; $5b8d: $00
    rst $38                                       ; $5b8e: $ff
    rst $38                                       ; $5b8f: $ff
    ld b, [hl]                                    ; $5b90: $46
    ld h, h                                       ; $5b91: $64
    xor [hl]                                      ; $5b92: $ae
    nop                                           ; $5b93: $00
    or e                                          ; $5b94: $b3
    nop                                           ; $5b95: $00
    xor [hl]                                      ; $5b96: $ae
    nop                                           ; $5b97: $00
    xor [hl]                                      ; $5b98: $ae
    nop                                           ; $5b99: $00
    or [hl]                                       ; $5b9a: $b6
    nop                                           ; $5b9b: $00
    jp rP1                                        ; $5b9c: $c3 $00 $ff


    rst $38                                       ; $5b9f: $ff
    nop                                           ; $5ba0: $00
    ld c, c                                       ; $5ba1: $49
    ld h, b                                       ; $5ba2: $60
    call nc, $c500                                ; $5ba3: $d4 $00 $c5
    nop                                           ; $5ba6: $00
    jp nc, $c800                                  ; $5ba7: $d2 $00 $c8

    nop                                           ; $5baa: $00
    push bc                                       ; $5bab: $c5
    nop                                           ; $5bac: $00
    rst $38                                       ; $5bad: $ff
    rst $38                                       ; $5bae: $ff
    nop                                           ; $5baf: $00
    ld b, d                                       ; $5bb0: $42
    ld h, b                                       ; $5bb1: $60
    db $db                                        ; $5bb2: $db
    nop                                           ; $5bb3: $00
    call $d000                                    ; $5bb4: $cd $00 $d0
    nop                                           ; $5bb7: $00
    ret z                                         ; $5bb8: $c8

    nop                                           ; $5bb9: $00
    rst RST_18                                    ; $5bba: $df
    nop                                           ; $5bbb: $00
    ret z                                         ; $5bbc: $c8

    nop                                           ; $5bbd: $00
    reti                                          ; $5bbe: $d9


    nop                                           ; $5bbf: $00
    rst RST_00                                    ; $5bc0: $c7
    nop                                           ; $5bc1: $00
    rst RST_08                                    ; $5bc2: $cf
    nop                                           ; $5bc3: $00
    rst $38                                       ; $5bc4: $ff
    rst $38                                       ; $5bc5: $ff
    nop                                           ; $5bc6: $00
    ld b, [hl]                                    ; $5bc7: $46
    ld h, b                                       ; $5bc8: $60
    rst RST_00                                    ; $5bc9: $c7
    nop                                           ; $5bca: $00
    call z, $cd00                                 ; $5bcb: $cc $00 $cd
    nop                                           ; $5bce: $00
    rst RST_00                                    ; $5bcf: $c7
    nop                                           ; $5bd0: $00
    rst RST_08                                    ; $5bd1: $cf
    nop                                           ; $5bd2: $00
    ret                                           ; $5bd3: $c9


    nop                                           ; $5bd4: $00
    jp nc, rP1                                    ; $5bd5: $d2 $00 $ff

    rst $38                                       ; $5bd8: $ff
    nop                                           ; $5bd9: $00
    ld c, h                                       ; $5bda: $4c
    ld h, b                                       ; $5bdb: $60
    rst $10                                       ; $5bdc: $d7
    nop                                           ; $5bdd: $00
    jp nc, $c500                                  ; $5bde: $d2 $00 $c5

    nop                                           ; $5be1: $00
    call $d000                                    ; $5be2: $cd $00 $d0
    nop                                           ; $5be5: $00
    rst $38                                       ; $5be6: $ff
    rst $38                                       ; $5be7: $ff
    nop                                           ; $5be8: $00
    ld c, d                                       ; $5be9: $4a
    ld h, b                                       ; $5bea: $60
    or a                                          ; $5beb: $b7
    nop                                           ; $5bec: $00
    xor e                                         ; $5bed: $ab
    nop                                           ; $5bee: $00
    cp h                                          ; $5bef: $bc
    nop                                           ; $5bf0: $00
    or e                                          ; $5bf1: $b3
    nop                                           ; $5bf2: $00
    cp c                                          ; $5bf3: $b9
    nop                                           ; $5bf4: $00
    rst $38                                       ; $5bf5: $ff
    rst $38                                       ; $5bf6: $ff
    nop                                           ; $5bf7: $00
    ld d, h                                       ; $5bf8: $54
    ld a, b                                       ; $5bf9: $78
    ret nc                                        ; $5bfa: $d0

    nop                                           ; $5bfb: $00
    call $d400                                    ; $5bfc: $cd $00 $d4
    nop                                           ; $5bff: $00
    rst $10                                       ; $5c00: $d7
    nop                                           ; $5c01: $00
    ret c                                         ; $5c02: $d8

    nop                                           ; $5c03: $00
    call $c700                                    ; $5c04: $cd $00 $c7
    nop                                           ; $5c07: $00
    rst RST_08                                    ; $5c08: $cf
    nop                                           ; $5c09: $00
    rst $38                                       ; $5c0a: $ff
    rst $38                                       ; $5c0b: $ff
    nop                                           ; $5c0c: $00
    ld d, h                                       ; $5c0d: $54
    ld a, b                                       ; $5c0e: $78
    rst $10                                       ; $5c0f: $d7
    nop                                           ; $5c10: $00
    call $d000                                    ; $5c11: $cd $00 $d0
    nop                                           ; $5c14: $00
    rst RST_08                                    ; $5c15: $cf
    nop                                           ; $5c16: $00
    rst RST_18                                    ; $5c17: $df
    nop                                           ; $5c18: $00
    call z, $c500                                 ; $5c19: $cc $00 $c5
    nop                                           ; $5c1c: $00
    ret c                                         ; $5c1d: $d8

    nop                                           ; $5c1e: $00
    rst $38                                       ; $5c1f: $ff
    rst $38                                       ; $5c20: $ff
    nop                                           ; $5c21: $00
    ld h, d                                       ; $5c22: $62
    ld a, b                                       ; $5c23: $78
    push bc                                       ; $5c24: $c5
    nop                                           ; $5c25: $00
    call c, rP1                                   ; $5c26: $dc $00 $ff
    rst $38                                       ; $5c29: $ff
    nop                                           ; $5c2a: $00
    ld c, e                                       ; $5c2b: $4b
    ld a, b                                       ; $5c2c: $78
    db $db                                        ; $5c2d: $db
    nop                                           ; $5c2e: $00
    db $d3                                        ; $5c2f: $d3
    nop                                           ; $5c30: $00
    db $d3                                        ; $5c31: $d3
    nop                                           ; $5c32: $00
    ret z                                         ; $5c33: $c8

    nop                                           ; $5c34: $00
    rst RST_18                                    ; $5c35: $df
    nop                                           ; $5c36: $00
    rst $10                                       ; $5c37: $d7
    nop                                           ; $5c38: $00
    ret c                                         ; $5c39: $d8

    nop                                           ; $5c3a: $00
    db $d3                                        ; $5c3b: $d3
    nop                                           ; $5c3c: $00
    jp c, $c900                                   ; $5c3d: $da $00 $c9

    nop                                           ; $5c40: $00
    rst $38                                       ; $5c41: $ff
    rst $38                                       ; $5c42: $ff
    nop                                           ; $5c43: $00
    ld c, h                                       ; $5c44: $4c
    ld a, b                                       ; $5c45: $78
    ret nc                                        ; $5c46: $d0

    nop                                           ; $5c47: $00
    db $d3                                        ; $5c48: $d3
    nop                                           ; $5c49: $00
    rst RST_00                                    ; $5c4a: $c7
    nop                                           ; $5c4b: $00
    db $d3                                        ; $5c4c: $d3
    nop                                           ; $5c4d: $00
    pop de                                        ; $5c4e: $d1
    nop                                           ; $5c4f: $00
    db $d3                                        ; $5c50: $d3
    nop                                           ; $5c51: $00
    ret c                                         ; $5c52: $d8

    nop                                           ; $5c53: $00
    call $da00                                    ; $5c54: $cd $00 $da
    nop                                           ; $5c57: $00
    ret                                           ; $5c58: $c9


    nop                                           ; $5c59: $00
    rst $38                                       ; $5c5a: $ff
    rst $38                                       ; $5c5b: $ff
    nop                                           ; $5c5c: $00
    ld c, h                                       ; $5c5d: $4c
    ld a, b                                       ; $5c5e: $78
    jp z, $d600                                   ; $5c5f: $ca $00 $d6

    nop                                           ; $5c62: $00
    db $d3                                        ; $5c63: $d3
    nop                                           ; $5c64: $00
    sbc $00                                       ; $5c65: $de $00
    ret                                           ; $5c67: $c9


    nop                                           ; $5c68: $00
    jp nc, $df00                                  ; $5c69: $d2 $00 $df

    nop                                           ; $5c6c: $00
    call nc, $d300                                ; $5c6d: $d4 $00 $d3
    nop                                           ; $5c70: $00
    call nc, rP1                                  ; $5c71: $d4 $00 $ff
    rst $38                                       ; $5c74: $ff
    nop                                           ; $5c75: $00
    ld d, [hl]                                    ; $5c76: $56
    ld a, b                                       ; $5c77: $78
    rst RST_00                                    ; $5c78: $c7
    nop                                           ; $5c79: $00
    push bc                                       ; $5c7a: $c5
    nop                                           ; $5c7b: $00
    sub $00                                       ; $5c7c: $d6 $00
    sub $00                                       ; $5c7e: $d6 $00
    db $d3                                        ; $5c80: $d3
    nop                                           ; $5c81: $00
    ret c                                         ; $5c82: $d8

    nop                                           ; $5c83: $00
    rst $38                                       ; $5c84: $ff
    rst $38                                       ; $5c85: $ff
    nop                                           ; $5c86: $00
    ld e, c                                       ; $5c87: $59
    ld a, b                                       ; $5c88: $78
    db $db                                        ; $5c89: $db
    nop                                           ; $5c8a: $00
    call z, $c500                                 ; $5c8b: $cc $00 $c5
    nop                                           ; $5c8e: $00
    ret nc                                        ; $5c8f: $d0

    nop                                           ; $5c90: $00
    ret                                           ; $5c91: $c9


    nop                                           ; $5c92: $00
    rst $38                                       ; $5c93: $ff
    rst $38                                       ; $5c94: $ff
    nop                                           ; $5c95: $00
    ld e, d                                       ; $5c96: $5a
    ld a, b                                       ; $5c97: $78
    rst RST_00                                    ; $5c98: $c7
    nop                                           ; $5c99: $00
    call z, $c500                                 ; $5c9a: $cc $00 $c5
    nop                                           ; $5c9d: $00
    call $d600                                    ; $5c9e: $cd $00 $d6
    nop                                           ; $5ca1: $00
    rst $38                                       ; $5ca2: $ff
    rst $38                                       ; $5ca3: $ff
    nop                                           ; $5ca4: $00
    ld c, [hl]                                    ; $5ca5: $4e
    ld a, b                                       ; $5ca6: $78
    call z, $d300                                 ; $5ca7: $cc $00 $d3
    nop                                           ; $5caa: $00
    reti                                          ; $5cab: $d9


    nop                                           ; $5cac: $00
    sub $00                                       ; $5cad: $d6 $00
    rlc b                                         ; $5caf: $cb $00
    ret nc                                        ; $5cb1: $d0

    nop                                           ; $5cb2: $00
    push bc                                       ; $5cb3: $c5
    nop                                           ; $5cb4: $00
    rst $10                                       ; $5cb5: $d7
    nop                                           ; $5cb6: $00
    rst $10                                       ; $5cb7: $d7
    nop                                           ; $5cb8: $00
    rst $38                                       ; $5cb9: $ff
    rst $38                                       ; $5cba: $ff
    nop                                           ; $5cbb: $00
    ld d, h                                       ; $5cbc: $54
    ld a, b                                       ; $5cbd: $78
    add $00                                       ; $5cbe: $c6 $00
    db $d3                                        ; $5cc0: $d3
    nop                                           ; $5cc1: $00
    ret c                                         ; $5cc2: $d8

    nop                                           ; $5cc3: $00
    ret c                                         ; $5cc4: $d8

    nop                                           ; $5cc5: $00
    ret nc                                        ; $5cc6: $d0

    nop                                           ; $5cc7: $00
    ret                                           ; $5cc8: $c9


    nop                                           ; $5cc9: $00
    rst $10                                       ; $5cca: $d7
    nop                                           ; $5ccb: $00
    rst $38                                       ; $5ccc: $ff
    rst $38                                       ; $5ccd: $ff
    nop                                           ; $5cce: $00
    ld d, a                                       ; $5ccf: $57
    ld a, b                                       ; $5cd0: $78
    rst $10                                       ; $5cd1: $d7
    nop                                           ; $5cd2: $00
    rst RST_08                                    ; $5cd3: $cf
    nop                                           ; $5cd4: $00
    call $d000                                    ; $5cd5: $cd $00 $d0
    nop                                           ; $5cd8: $00
    ret nc                                        ; $5cd9: $d0

    nop                                           ; $5cda: $00
    ret                                           ; $5cdb: $c9


    nop                                           ; $5cdc: $00
    ret c                                         ; $5cdd: $d8

    nop                                           ; $5cde: $00
    rst $38                                       ; $5cdf: $ff
    rst $38                                       ; $5ce0: $ff
    nop                                           ; $5ce1: $00
    ld d, [hl]                                    ; $5ce2: $56
    ld [hl], e                                    ; $5ce3: $73
    rst RST_00                                    ; $5ce4: $c7
    nop                                           ; $5ce5: $00
    db $d3                                        ; $5ce6: $d3
    nop                                           ; $5ce7: $00
    jp z, $ca00                                   ; $5ce8: $ca $00 $ca

    nop                                           ; $5ceb: $00
    ret                                           ; $5cec: $c9


    nop                                           ; $5ced: $00
    ret                                           ; $5cee: $c9


    nop                                           ; $5cef: $00
    rst $38                                       ; $5cf0: $ff
    rst $38                                       ; $5cf1: $ff
    ld e, b                                       ; $5cf2: $58
    ld a, h                                       ; $5cf3: $7c
    pop de                                        ; $5cf4: $d1
    nop                                           ; $5cf5: $00
    push bc                                       ; $5cf6: $c5
    nop                                           ; $5cf7: $00
    rst RST_08                                    ; $5cf8: $cf
    nop                                           ; $5cf9: $00
    ret                                           ; $5cfa: $c9


    nop                                           ; $5cfb: $00
    sub $00                                       ; $5cfc: $d6 $00
    rst $38                                       ; $5cfe: $ff
    rst $38                                       ; $5cff: $ff
    nop                                           ; $5d00: $00
    ld d, e                                       ; $5d01: $53
    ld a, b                                       ; $5d02: $78
    pop de                                        ; $5d03: $d1
    nop                                           ; $5d04: $00
    push bc                                       ; $5d05: $c5
    nop                                           ; $5d06: $00
    call $d000                                    ; $5d07: $cd $00 $d0
    nop                                           ; $5d0a: $00
    rst RST_18                                    ; $5d0b: $df
    nop                                           ; $5d0c: $00
    add $00                                       ; $5d0d: $c6 $00
    db $d3                                        ; $5d0f: $d3
    nop                                           ; $5d10: $00
    call c, rP1                                   ; $5d11: $dc $00 $ff
    rst $38                                       ; $5d14: $ff
    nop                                           ; $5d15: $00
    ld d, l                                       ; $5d16: $55
    ld a, b                                       ; $5d17: $78
    rst RST_00                                    ; $5d18: $c7
    nop                                           ; $5d19: $00
    push bc                                       ; $5d1a: $c5
    nop                                           ; $5d1b: $00
    pop de                                        ; $5d1c: $d1
    nop                                           ; $5d1d: $00
    ret                                           ; $5d1e: $c9


    nop                                           ; $5d1f: $00
    sub $00                                       ; $5d20: $d6 $00
    push bc                                       ; $5d22: $c5
    nop                                           ; $5d23: $00
    rst $38                                       ; $5d24: $ff
    rst $38                                       ; $5d25: $ff
    nop                                           ; $5d26: $00
    ld d, d                                       ; $5d27: $52
    ld a, b                                       ; $5d28: $78
    rst $10                                       ; $5d29: $d7
    nop                                           ; $5d2a: $00
    rst RST_00                                    ; $5d2b: $c7
    nop                                           ; $5d2c: $00
    call $d700                                    ; $5d2d: $cd $00 $d7
    nop                                           ; $5d30: $00
    rst $10                                       ; $5d31: $d7
    nop                                           ; $5d32: $00
    db $d3                                        ; $5d33: $d3
    nop                                           ; $5d34: $00
    sub $00                                       ; $5d35: $d6 $00
    rst $10                                       ; $5d37: $d7
    nop                                           ; $5d38: $00
    rst $38                                       ; $5d39: $ff
    rst $38                                       ; $5d3a: $ff
    nop                                           ; $5d3b: $00
    ld c, [hl]                                    ; $5d3c: $4e
    ld a, b                                       ; $5d3d: $78
    or c                                          ; $5d3e: $b1
    nop                                           ; $5d3f: $00
    xor e                                         ; $5d40: $ab
    nop                                           ; $5d41: $00
    or a                                          ; $5d42: $b7
    nop                                           ; $5d43: $00
    xor a                                         ; $5d44: $af
    nop                                           ; $5d45: $00
    rst RST_18                                    ; $5d46: $df
    nop                                           ; $5d47: $00
    xor h                                         ; $5d48: $ac
    nop                                           ; $5d49: $00
    cp c                                          ; $5d4a: $b9
    nop                                           ; $5d4b: $00
    jp rP1                                        ; $5d4c: $c3 $00 $ff


    rst $38                                       ; $5d4f: $ff
    nop                                           ; $5d50: $00
    ld e, d                                       ; $5d51: $5a
    ld a, b                                       ; $5d52: $78
    cp l                                          ; $5d53: $bd
    nop                                           ; $5d54: $00
    cp [hl]                                       ; $5d55: $be
    nop                                           ; $5d56: $00
    xor e                                         ; $5d57: $ab
    nop                                           ; $5d58: $00
    cp h                                          ; $5d59: $bc
    nop                                           ; $5d5a: $00
    rst $38                                       ; $5d5b: $ff
    rst $38                                       ; $5d5c: $ff
    nop                                           ; $5d5d: $00
    ld d, b                                       ; $5d5e: $50
    ld a, b                                       ; $5d5f: $78
    call z, $cd00                                 ; $5d60: $cc $00 $cd
    nop                                           ; $5d63: $00
    rlc b                                         ; $5d64: $cb $00
    call z, $f000                                 ; $5d66: $cc $00 $f0
    nop                                           ; $5d69: $00
    call z, $c900                                 ; $5d6a: $cc $00 $c9
    nop                                           ; $5d6d: $00
    ret                                           ; $5d6e: $c9


    nop                                           ; $5d6f: $00
    ret nc                                        ; $5d70: $d0

    nop                                           ; $5d71: $00
    rst $38                                       ; $5d72: $ff
    rst $38                                       ; $5d73: $ff
    nop                                           ; $5d74: $00
    ld e, c                                       ; $5d75: $59
    ld a, b                                       ; $5d76: $78
    add $00                                       ; $5d77: $c6 $00
    sub $00                                       ; $5d79: $d6 $00
    ret                                           ; $5d7b: $c9


    nop                                           ; $5d7c: $00
    push bc                                       ; $5d7d: $c5
    nop                                           ; $5d7e: $00
    ret z                                         ; $5d7f: $c8

    nop                                           ; $5d80: $00
    rst $38                                       ; $5d81: $ff
    rst $38                                       ; $5d82: $ff
    nop                                           ; $5d83: $00
    ld e, h                                       ; $5d84: $5c
    ld a, b                                       ; $5d85: $78
    rst RST_00                                    ; $5d86: $c7
    nop                                           ; $5d87: $00
    push bc                                       ; $5d88: $c5
    nop                                           ; $5d89: $00
    rst RST_08                                    ; $5d8a: $cf
    nop                                           ; $5d8b: $00
    ret                                           ; $5d8c: $c9


    nop                                           ; $5d8d: $00
    rst $38                                       ; $5d8e: $ff
    rst $38                                       ; $5d8f: $ff
    nop                                           ; $5d90: $00
    ld d, [hl]                                    ; $5d91: $56
    ld a, b                                       ; $5d92: $78
    call z, $c500                                 ; $5d93: $cc $00 $c5
    nop                                           ; $5d96: $00
    jp nc, $cb00                                  ; $5d97: $d2 $00 $cb

    nop                                           ; $5d9a: $00
    ret                                           ; $5d9b: $c9


    nop                                           ; $5d9c: $00
    sub $00                                       ; $5d9d: $d6 $00
    rst $38                                       ; $5d9f: $ff
    rst $38                                       ; $5da0: $ff
    nop                                           ; $5da1: $00
    ld e, a                                       ; $5da2: $5f
    ld a, b                                       ; $5da3: $78
    add $00                                       ; $5da4: $c6 $00
    reti                                          ; $5da6: $d9


    nop                                           ; $5da7: $00
    rst $10                                       ; $5da8: $d7
    nop                                           ; $5da9: $00
    rst $38                                       ; $5daa: $ff
    rst $38                                       ; $5dab: $ff
    nop                                           ; $5dac: $00
    ld e, c                                       ; $5dad: $59
    ld a, b                                       ; $5dae: $78
    ret c                                         ; $5daf: $d8

    nop                                           ; $5db0: $00
    call $d200                                    ; $5db1: $cd $00 $d2
    nop                                           ; $5db4: $00
    rst RST_08                                    ; $5db5: $cf
    nop                                           ; $5db6: $00
    ret nc                                        ; $5db7: $d0

    nop                                           ; $5db8: $00
    ret                                           ; $5db9: $c9


    nop                                           ; $5dba: $00
    rst $38                                       ; $5dbb: $ff
    rst $38                                       ; $5dbc: $ff
    nop                                           ; $5dbd: $00
    ld e, c                                       ; $5dbe: $59
    ld a, b                                       ; $5dbf: $78
    rst $10                                       ; $5dc0: $d7
    nop                                           ; $5dc1: $00
    rst RST_08                                    ; $5dc2: $cf
    nop                                           ; $5dc3: $00
    push bc                                       ; $5dc4: $c5
    nop                                           ; $5dc5: $00
    ret c                                         ; $5dc6: $d8

    nop                                           ; $5dc7: $00
    ret                                           ; $5dc8: $c9


    nop                                           ; $5dc9: $00
    rst $38                                       ; $5dca: $ff
    rst $38                                       ; $5dcb: $ff
    nop                                           ; $5dcc: $00
    ld e, h                                       ; $5dcd: $5c
    ld a, b                                       ; $5dce: $78
    rst $10                                       ; $5dcf: $d7
    nop                                           ; $5dd0: $00
    call z, $d300                                 ; $5dd1: $cc $00 $d3
    nop                                           ; $5dd4: $00
    ret                                           ; $5dd5: $c9


    nop                                           ; $5dd6: $00
    rst $38                                       ; $5dd7: $ff
    rst $38                                       ; $5dd8: $ff
    nop                                           ; $5dd9: $00
    ld e, a                                       ; $5dda: $5f
    ld a, b                                       ; $5ddb: $78
    rst RST_00                                    ; $5ddc: $c7
    nop                                           ; $5ddd: $00
    push bc                                       ; $5dde: $c5
    nop                                           ; $5ddf: $00
    call nc, rP1                                  ; $5de0: $d4 $00 $ff
    rst $38                                       ; $5de3: $ff
    nop                                           ; $5de4: $00
    ld c, [hl]                                    ; $5de5: $4e
    ld a, b                                       ; $5de6: $78
    ret c                                         ; $5de7: $d8

    nop                                           ; $5de8: $00
    ret                                           ; $5de9: $c9


    nop                                           ; $5dea: $00
    ret nc                                        ; $5deb: $d0

    nop                                           ; $5dec: $00
    ret                                           ; $5ded: $c9


    nop                                           ; $5dee: $00
    call nc, $cc00                                ; $5def: $d4 $00 $cc
    nop                                           ; $5df2: $00
    db $d3                                        ; $5df3: $d3
    nop                                           ; $5df4: $00
    jp nc, $c900                                  ; $5df5: $d2 $00 $c9

    nop                                           ; $5df8: $00
    rst $38                                       ; $5df9: $ff
    rst $38                                       ; $5dfa: $ff
    nop                                           ; $5dfb: $00
    ld e, a                                       ; $5dfc: $5f
    ld a, b                                       ; $5dfd: $78
    rst RST_00                                    ; $5dfe: $c7
    nop                                           ; $5dff: $00
    push bc                                       ; $5e00: $c5
    nop                                           ; $5e01: $00
    jp nc, rP1                                    ; $5e02: $d2 $00 $ff

    rst $38                                       ; $5e05: $ff
    nop                                           ; $5e06: $00
    ld e, b                                       ; $5e07: $58
    ld a, b                                       ; $5e08: $78
    rlc b                                         ; $5e09: $cb $00
    push bc                                       ; $5e0b: $c5
    nop                                           ; $5e0c: $00
    sub $00                                       ; $5e0d: $d6 $00
    ret nc                                        ; $5e0f: $d0

    nop                                           ; $5e10: $00
    call $c700                                    ; $5e11: $cd $00 $c7
    nop                                           ; $5e14: $00
    rst $38                                       ; $5e15: $ff
    rst $38                                       ; $5e16: $ff
    nop                                           ; $5e17: $00
    ld e, h                                       ; $5e18: $5c
    ld a, b                                       ; $5e19: $78
    call z, $c500                                 ; $5e1a: $cc $00 $c5
    nop                                           ; $5e1d: $00
    jp nc, $c800                                  ; $5e1e: $d2 $00 $c8

    nop                                           ; $5e21: $00
    rst $38                                       ; $5e22: $ff
    rst $38                                       ; $5e23: $ff
    nop                                           ; $5e24: $00
    ld c, h                                       ; $5e25: $4c
    ld a, b                                       ; $5e26: $78
    call z, $c500                                 ; $5e27: $cc $00 $c5
    nop                                           ; $5e2a: $00
    pop de                                        ; $5e2b: $d1
    nop                                           ; $5e2c: $00
    add $00                                       ; $5e2d: $c6 $00
    reti                                          ; $5e2f: $d9


    nop                                           ; $5e30: $00
    sub $00                                       ; $5e31: $d6 $00
    rlc b                                         ; $5e33: $cb $00
    ret                                           ; $5e35: $c9


    nop                                           ; $5e36: $00
    sub $00                                       ; $5e37: $d6 $00
    rst $38                                       ; $5e39: $ff
    rst $38                                       ; $5e3a: $ff
    nop                                           ; $5e3b: $00
    ld d, a                                       ; $5e3c: $57
    ld a, b                                       ; $5e3d: $78
    rst $10                                       ; $5e3e: $d7
    nop                                           ; $5e3f: $00
    call z, $d300                                 ; $5e40: $cc $00 $d3
    nop                                           ; $5e43: $00
    jp c, $c900                                   ; $5e44: $da $00 $c9

    nop                                           ; $5e47: $00
    ret nc                                        ; $5e48: $d0

    nop                                           ; $5e49: $00
    rst $38                                       ; $5e4a: $ff
    rst $38                                       ; $5e4b: $ff
    nop                                           ; $5e4c: $00
    ld d, c                                       ; $5e4d: $51
    ld a, b                                       ; $5e4e: $78
    jp nc, $c900                                  ; $5e4f: $d2 $00 $c9

    nop                                           ; $5e52: $00
    rst RST_00                                    ; $5e53: $c7
    nop                                           ; $5e54: $00
    rst RST_08                                    ; $5e55: $cf
    nop                                           ; $5e56: $00
    ret nc                                        ; $5e57: $d0

    nop                                           ; $5e58: $00
    push bc                                       ; $5e59: $c5
    nop                                           ; $5e5a: $00
    rst RST_00                                    ; $5e5b: $c7
    nop                                           ; $5e5c: $00
    ret                                           ; $5e5d: $c9


    nop                                           ; $5e5e: $00
    rst $38                                       ; $5e5f: $ff
    rst $38                                       ; $5e60: $ff
    nop                                           ; $5e61: $00
    ld e, [hl]                                    ; $5e62: $5e
    ld a, b                                       ; $5e63: $78
    cp a                                          ; $5e64: $bf
    nop                                           ; $5e65: $00
    or b                                          ; $5e66: $b0
    nop                                           ; $5e67: $00
    cp c                                          ; $5e68: $b9
    nop                                           ; $5e69: $00
    rst $38                                       ; $5e6a: $ff
    rst $38                                       ; $5e6b: $ff
    nop                                           ; $5e6c: $00
    ld d, e                                       ; $5e6d: $53
    ld [hl], e                                    ; $5e6e: $73
    xor h                                         ; $5e6f: $ac
    nop                                           ; $5e70: $00
    cp a                                          ; $5e71: $bf
    nop                                           ; $5e72: $00
    or [hl]                                       ; $5e73: $b6
    nop                                           ; $5e74: $00
    or [hl]                                       ; $5e75: $b6
    nop                                           ; $5e76: $00
    xor a                                         ; $5e77: $af
    nop                                           ; $5e78: $00
    cp [hl]                                       ; $5e79: $be
    nop                                           ; $5e7a: $00
    rst $38                                       ; $5e7b: $ff
    rst $38                                       ; $5e7c: $ff
    ld e, h                                       ; $5e7d: $5c
    ld a, h                                       ; $5e7e: $7c
    xor h                                         ; $5e7f: $ac
    nop                                           ; $5e80: $00
    or e                                          ; $5e81: $b3
    nop                                           ; $5e82: $00
    or [hl]                                       ; $5e83: $b6
    nop                                           ; $5e84: $00
    or [hl]                                       ; $5e85: $b6
    nop                                           ; $5e86: $00
    rst $38                                       ; $5e87: $ff
    rst $38                                       ; $5e88: $ff
    nop                                           ; $5e89: $00
    ld d, l                                       ; $5e8a: $55
    ld a, b                                       ; $5e8b: $78
    ret c                                         ; $5e8c: $d8

    nop                                           ; $5e8d: $00
    db $d3                                        ; $5e8e: $d3
    nop                                           ; $5e8f: $00
    pop de                                        ; $5e90: $d1
    nop                                           ; $5e91: $00
    push bc                                       ; $5e92: $c5
    nop                                           ; $5e93: $00
    ret c                                         ; $5e94: $d8

    nop                                           ; $5e95: $00
    db $d3                                        ; $5e96: $d3
    nop                                           ; $5e97: $00
    rst $38                                       ; $5e98: $ff
    rst $38                                       ; $5e99: $ff
    nop                                           ; $5e9a: $00
    ld d, a                                       ; $5e9b: $57
    ld a, b                                       ; $5e9c: $78
    jp z, $d000                                   ; $5e9d: $ca $00 $d0

    nop                                           ; $5ea0: $00
    db $d3                                        ; $5ea1: $d3
    nop                                           ; $5ea2: $00
    db $db                                        ; $5ea3: $db
    nop                                           ; $5ea4: $00
    ret                                           ; $5ea5: $c9


    nop                                           ; $5ea6: $00
    sub $00                                       ; $5ea7: $d6 $00
    rst $38                                       ; $5ea9: $ff
    rst $38                                       ; $5eaa: $ff
    nop                                           ; $5eab: $00
    ld d, a                                       ; $5eac: $57
    ld [hl], e                                    ; $5ead: $73
    or c                                          ; $5eae: $b1
    nop                                           ; $5eaf: $00
    cp h                                          ; $5eb0: $bc
    nop                                           ; $5eb1: $00
    xor e                                         ; $5eb2: $ab
    nop                                           ; $5eb3: $00
    cp b                                          ; $5eb4: $b8
    nop                                           ; $5eb5: $00
    xor [hl]                                      ; $5eb6: $ae
    nop                                           ; $5eb7: $00
    rst $38                                       ; $5eb8: $ff
    rst $38                                       ; $5eb9: $ff
    ld d, b                                       ; $5eba: $50
    ld a, h                                       ; $5ebb: $7c
    or c                                          ; $5ebc: $b1
    nop                                           ; $5ebd: $00
    cp c                                          ; $5ebe: $b9
    nop                                           ; $5ebf: $00
    cp c                                          ; $5ec0: $b9
    nop                                           ; $5ec1: $00
    or a                                          ; $5ec2: $b7
    nop                                           ; $5ec3: $00
    xor h                                         ; $5ec4: $ac
    nop                                           ; $5ec5: $00
    xor e                                         ; $5ec6: $ab
    nop                                           ; $5ec7: $00
    cp l                                          ; $5ec8: $bd
    nop                                           ; $5ec9: $00
    rst $38                                       ; $5eca: $ff
    rst $38                                       ; $5ecb: $ff
    nop                                           ; $5ecc: $00
    ld c, h                                       ; $5ecd: $4c
    ld a, b                                       ; $5ece: $78
    rst RST_00                                    ; $5ecf: $c7
    nop                                           ; $5ed0: $00
    db $d3                                        ; $5ed1: $d3
    nop                                           ; $5ed2: $00
    jp z, $ca00                                   ; $5ed3: $ca $00 $ca

    nop                                           ; $5ed6: $00
    ret                                           ; $5ed7: $c9


    nop                                           ; $5ed8: $00
    ret                                           ; $5ed9: $c9


    nop                                           ; $5eda: $00
    rst RST_18                                    ; $5edb: $df
    nop                                           ; $5edc: $00
    rst RST_00                                    ; $5edd: $c7
    nop                                           ; $5ede: $00
    reti                                          ; $5edf: $d9


    nop                                           ; $5ee0: $00
    call nc, rP1                                  ; $5ee1: $d4 $00 $ff
    rst $38                                       ; $5ee4: $ff
    nop                                           ; $5ee5: $00
    ld e, h                                       ; $5ee6: $5c
    ld a, b                                       ; $5ee7: $78
    pop de                                        ; $5ee8: $d1
    nop                                           ; $5ee9: $00
    reti                                          ; $5eea: $d9


    nop                                           ; $5eeb: $00
    ret c                                         ; $5eec: $d8

    nop                                           ; $5eed: $00
    ret c                                         ; $5eee: $d8

    nop                                           ; $5eef: $00
    rst $38                                       ; $5ef0: $ff
    rst $38                                       ; $5ef1: $ff
    nop                                           ; $5ef2: $00
    ld d, d                                       ; $5ef3: $52
    ld a, b                                       ; $5ef4: $78
    db $d3                                        ; $5ef5: $d3
    nop                                           ; $5ef6: $00
    jp c, $c900                                   ; $5ef7: $da $00 $c9

    nop                                           ; $5efa: $00
    sub $00                                       ; $5efb: $d6 $00
    push bc                                       ; $5efd: $c5
    nop                                           ; $5efe: $00
    ret nc                                        ; $5eff: $d0

    nop                                           ; $5f00: $00
    ret nc                                        ; $5f01: $d0

    nop                                           ; $5f02: $00
    rst $10                                       ; $5f03: $d7
    nop                                           ; $5f04: $00
    rst $38                                       ; $5f05: $ff
    rst $38                                       ; $5f06: $ff
    nop                                           ; $5f07: $00
    ld e, l                                       ; $5f08: $5d
    ld a, b                                       ; $5f09: $78
    ret nc                                        ; $5f0a: $d0

    nop                                           ; $5f0b: $00
    ret                                           ; $5f0c: $c9


    nop                                           ; $5f0d: $00
    push bc                                       ; $5f0e: $c5
    nop                                           ; $5f0f: $00
    jp z, rP1                                     ; $5f10: $ca $00 $ff

    rst $38                                       ; $5f13: $ff
    nop                                           ; $5f14: $00
    ld d, l                                       ; $5f15: $55
    ld a, b                                       ; $5f16: $78
    reti                                          ; $5f17: $d9


    nop                                           ; $5f18: $00
    jp nc, $cd00                                  ; $5f19: $d2 $00 $cd

    nop                                           ; $5f1c: $00
    rst RST_00                                    ; $5f1d: $c7
    nop                                           ; $5f1e: $00
    db $d3                                        ; $5f1f: $d3
    nop                                           ; $5f20: $00
    sub $00                                       ; $5f21: $d6 $00
    jp nc, rP1                                    ; $5f23: $d2 $00 $ff

    rst $38                                       ; $5f26: $ff
    nop                                           ; $5f27: $00
    ld e, [hl]                                    ; $5f28: $5e
    ld a, b                                       ; $5f29: $78
    add $00                                       ; $5f2a: $c6 $00
    reti                                          ; $5f2c: $d9


    nop                                           ; $5f2d: $00
    ret nc                                        ; $5f2e: $d0

    nop                                           ; $5f2f: $00
    ret nc                                        ; $5f30: $d0

    nop                                           ; $5f31: $00
    rst $38                                       ; $5f32: $ff
    rst $38                                       ; $5f33: $ff
    nop                                           ; $5f34: $00
    ld c, h                                       ; $5f35: $4c
    ld a, b                                       ; $5f36: $78
    rst RST_00                                    ; $5f37: $c7
    nop                                           ; $5f38: $00
    db $d3                                        ; $5f39: $d3
    nop                                           ; $5f3a: $00
    jp nc, rPuzzleGridWidth                       ; $5f3b: $d2 $00 $d8

    nop                                           ; $5f3e: $00
    sub $00                                       ; $5f3f: $d6 $00
    db $d3                                        ; $5f41: $d3
    nop                                           ; $5f42: $00
    ret nc                                        ; $5f43: $d0

    nop                                           ; $5f44: $00
    ret nc                                        ; $5f45: $d0

    nop                                           ; $5f46: $00
    ret                                           ; $5f47: $c9


    nop                                           ; $5f48: $00
    sub $00                                       ; $5f49: $d6 $00
    rst $38                                       ; $5f4b: $ff
    rst $38                                       ; $5f4c: $ff
    nop                                           ; $5f4d: $00
    ld e, e                                       ; $5f4e: $5b
    ld a, b                                       ; $5f4f: $78
    db $d3                                        ; $5f50: $d3
    nop                                           ; $5f51: $00
    jp nc, $cd00                                  ; $5f52: $d2 $00 $cd

    nop                                           ; $5f55: $00
    db $d3                                        ; $5f56: $d3
    nop                                           ; $5f57: $00
    jp nc, rP1                                    ; $5f58: $d2 $00 $ff

    rst $38                                       ; $5f5b: $ff
    nop                                           ; $5f5c: $00
    ld e, e                                       ; $5f5d: $5b
    ld l, a                                       ; $5f5e: $6f
    rst $10                                       ; $5f5f: $d7
    nop                                           ; $5f60: $00
    rst RST_08                                    ; $5f61: $cf
    nop                                           ; $5f62: $00
    reti                                          ; $5f63: $d9


    nop                                           ; $5f64: $00
    ret nc                                        ; $5f65: $d0

    nop                                           ; $5f66: $00
    ret nc                                        ; $5f67: $d0

    nop                                           ; $5f68: $00
    rst $38                                       ; $5f69: $ff
    rst $38                                       ; $5f6a: $ff
    ld e, a                                       ; $5f6b: $5f
    ld a, b                                       ; $5f6c: $78
    push bc                                       ; $5f6d: $c5
    nop                                           ; $5f6e: $00
    jp nc, $c800                                  ; $5f6f: $d2 $00 $c8

    nop                                           ; $5f72: $00
    rst $38                                       ; $5f73: $ff
    rst $38                                       ; $5f74: $ff
    ld c, d                                       ; $5f75: $4a
    add c                                         ; $5f76: $81
    rst RST_00                                    ; $5f77: $c7
    nop                                           ; $5f78: $00
    sub $00                                       ; $5f79: $d6 $00
    db $d3                                        ; $5f7b: $d3
    nop                                           ; $5f7c: $00
    rst $10                                       ; $5f7d: $d7
    nop                                           ; $5f7e: $00
    rst $10                                       ; $5f7f: $d7
    nop                                           ; $5f80: $00
    add $00                                       ; $5f81: $c6 $00
    db $d3                                        ; $5f83: $d3
    nop                                           ; $5f84: $00
    jp nc, $c900                                  ; $5f85: $d2 $00 $c9

    nop                                           ; $5f88: $00
    rst $10                                       ; $5f89: $d7
    nop                                           ; $5f8a: $00
    rst $38                                       ; $5f8b: $ff
    rst $38                                       ; $5f8c: $ff
    nop                                           ; $5f8d: $00
    ld d, d                                       ; $5f8e: $52
    ld a, b                                       ; $5f8f: $78
    rst $10                                       ; $5f90: $d7
    nop                                           ; $5f91: $00
    jp nc, $d300                                  ; $5f92: $d2 $00 $d3

    nop                                           ; $5f95: $00
    db $db                                        ; $5f96: $db
    nop                                           ; $5f97: $00
    pop de                                        ; $5f98: $d1
    nop                                           ; $5f99: $00
    push bc                                       ; $5f9a: $c5
    nop                                           ; $5f9b: $00
    jp nc, rP1                                    ; $5f9c: $d2 $00 $ff

    rst $38                                       ; $5f9f: $ff
    nop                                           ; $5fa0: $00
    ld c, l                                       ; $5fa1: $4d
    ld a, b                                       ; $5fa2: $78
    rst RST_00                                    ; $5fa3: $c7
    nop                                           ; $5fa4: $00
    call z, $c500                                 ; $5fa5: $cc $00 $c5
    nop                                           ; $5fa8: $00
    pop de                                        ; $5fa9: $d1
    nop                                           ; $5faa: $00
    ret                                           ; $5fab: $c9


    nop                                           ; $5fac: $00
    ret nc                                        ; $5fad: $d0

    nop                                           ; $5fae: $00
    ret                                           ; $5faf: $c9


    nop                                           ; $5fb0: $00
    db $d3                                        ; $5fb1: $d3
    nop                                           ; $5fb2: $00
    jp nc, rP1                                    ; $5fb3: $d2 $00 $ff

    rst $38                                       ; $5fb6: $ff
    nop                                           ; $5fb7: $00
    ld d, b                                       ; $5fb8: $50
    ld a, b                                       ; $5fb9: $78
    rst RST_00                                    ; $5fba: $c7
    nop                                           ; $5fbb: $00
    reti                                          ; $5fbc: $d9


    nop                                           ; $5fbd: $00
    rst RST_00                                    ; $5fbe: $c7
    nop                                           ; $5fbf: $00
    reti                                          ; $5fc0: $d9


    nop                                           ; $5fc1: $00
    pop de                                        ; $5fc2: $d1
    nop                                           ; $5fc3: $00
    add $00                                       ; $5fc4: $c6 $00
    ret                                           ; $5fc6: $c9


    nop                                           ; $5fc7: $00
    sub $00                                       ; $5fc8: $d6 $00
    rst $38                                       ; $5fca: $ff
    rst $38                                       ; $5fcb: $ff
    nop                                           ; $5fcc: $00
    ld d, c                                       ; $5fcd: $51
    ld a, b                                       ; $5fce: $78
    add $00                                       ; $5fcf: $c6 $00
    reti                                          ; $5fd1: $d9


    nop                                           ; $5fd2: $00
    call $d000                                    ; $5fd3: $cd $00 $d0
    nop                                           ; $5fd6: $00
    ret z                                         ; $5fd7: $c8

    nop                                           ; $5fd8: $00
    call $d200                                    ; $5fd9: $cd $00 $d2
    nop                                           ; $5fdc: $00
    rlc b                                         ; $5fdd: $cb $00
    rst $10                                       ; $5fdf: $d7
    nop                                           ; $5fe0: $00
    rst $38                                       ; $5fe1: $ff
    rst $38                                       ; $5fe2: $ff
    nop                                           ; $5fe3: $00
    ld e, h                                       ; $5fe4: $5c
    ld a, b                                       ; $5fe5: $78
    call nc, $c900                                ; $5fe6: $d4 $00 $c9
    nop                                           ; $5fe9: $00
    push bc                                       ; $5fea: $c5
    nop                                           ; $5feb: $00
    sub $00                                       ; $5fec: $d6 $00
    rst $38                                       ; $5fee: $ff
    rst $38                                       ; $5fef: $ff
    nop                                           ; $5ff0: $00
    ld h, b                                       ; $5ff1: $60
    ld a, b                                       ; $5ff2: $78
    db $d3                                        ; $5ff3: $d3
    nop                                           ; $5ff4: $00
    db $db                                        ; $5ff5: $db
    nop                                           ; $5ff6: $00
    ret nc                                        ; $5ff7: $d0

    nop                                           ; $5ff8: $00
    rst $38                                       ; $5ff9: $ff
    rst $38                                       ; $5ffa: $ff
    nop                                           ; $5ffb: $00
    ld d, d                                       ; $5ffc: $52
    ld a, b                                       ; $5ffd: $78
    sub $00                                       ; $5ffe: $d6 $00
    call $c700                                    ; $6000: $cd $00 $c7
    nop                                           ; $6003: $00
    ret                                           ; $6004: $c9


    nop                                           ; $6005: $00
    rst RST_18                                    ; $6006: $df
    nop                                           ; $6007: $00
    add $00                                       ; $6008: $c6 $00
    push bc                                       ; $600a: $c5
    nop                                           ; $600b: $00
    ret nc                                        ; $600c: $d0

    nop                                           ; $600d: $00
    ret nc                                        ; $600e: $d0

    nop                                           ; $600f: $00
    rst $38                                       ; $6010: $ff
    rst $38                                       ; $6011: $ff
    nop                                           ; $6012: $00
    ld e, h                                       ; $6013: $5c
    ld [hl], e                                    ; $6014: $73
    rst $10                                       ; $6015: $d7
    nop                                           ; $6016: $00
    db $d3                                        ; $6017: $d3
    nop                                           ; $6018: $00
    push bc                                       ; $6019: $c5
    nop                                           ; $601a: $00
    call nc, rP1                                  ; $601b: $d4 $00 $ff
    rst $38                                       ; $601e: $ff
    ld d, h                                       ; $601f: $54
    ld a, h                                       ; $6020: $7c
    add $00                                       ; $6021: $c6 $00
    reti                                          ; $6023: $d9


    nop                                           ; $6024: $00
    add $00                                       ; $6025: $c6 $00
    add $00                                       ; $6027: $c6 $00
    ret nc                                        ; $6029: $d0

    nop                                           ; $602a: $00
    ret                                           ; $602b: $c9


    nop                                           ; $602c: $00
    rst $10                                       ; $602d: $d7
    nop                                           ; $602e: $00
    rst $38                                       ; $602f: $ff
    rst $38                                       ; $6030: $ff
    nop                                           ; $6031: $00
    ld c, e                                       ; $6032: $4b
    ld a, b                                       ; $6033: $78
    add $00                                       ; $6034: $c6 $00
    push bc                                       ; $6036: $c5
    nop                                           ; $6037: $00
    add $00                                       ; $6038: $c6 $00
    db $dd                                        ; $603a: $dd
    nop                                           ; $603b: $00
    rst RST_18                                    ; $603c: $df
    nop                                           ; $603d: $00
    add $00                                       ; $603e: $c6 $00
    reti                                          ; $6040: $d9


    nop                                           ; $6041: $00
    rlc b                                         ; $6042: $cb $00
    rlc b                                         ; $6044: $cb $00
    db $dd                                        ; $6046: $dd
    nop                                           ; $6047: $00
    rst $38                                       ; $6048: $ff
    rst $38                                       ; $6049: $ff
    nop                                           ; $604a: $00
    ld e, h                                       ; $604b: $5c
    ld a, b                                       ; $604c: $78
    add $00                                       ; $604d: $c6 $00
    db $d3                                        ; $604f: $d3
    nop                                           ; $6050: $00
    pop de                                        ; $6051: $d1
    nop                                           ; $6052: $00
    add $00                                       ; $6053: $c6 $00
    rst $38                                       ; $6055: $ff
    rst $38                                       ; $6056: $ff
    nop                                           ; $6057: $00
    ld d, a                                       ; $6058: $57
    ld a, b                                       ; $6059: $78
    rst RST_08                                    ; $605a: $cf
    nop                                           ; $605b: $00
    ret                                           ; $605c: $c9


    nop                                           ; $605d: $00
    ret c                                         ; $605e: $d8

    nop                                           ; $605f: $00
    ret c                                         ; $6060: $d8

    nop                                           ; $6061: $00
    ret nc                                        ; $6062: $d0

    nop                                           ; $6063: $00
    ret                                           ; $6064: $c9


    nop                                           ; $6065: $00
    rst $38                                       ; $6066: $ff
    rst $38                                       ; $6067: $ff
    nop                                           ; $6068: $00
    ld d, a                                       ; $6069: $57
    ld [hl], e                                    ; $606a: $73
    db $db                                        ; $606b: $db
    nop                                           ; $606c: $00
    ret                                           ; $606d: $c9


    nop                                           ; $606e: $00
    call $cb00                                    ; $606f: $cd $00 $cb
    nop                                           ; $6072: $00
    call z, rPuzzleGridWidth                      ; $6073: $cc $00 $d8
    nop                                           ; $6076: $00
    rst $38                                       ; $6077: $ff
    rst $38                                       ; $6078: $ff
    ld d, a                                       ; $6079: $57
    ld a, h                                       ; $607a: $7c
    ret nc                                        ; $607b: $d0

    nop                                           ; $607c: $00
    call $ca00                                    ; $607d: $cd $00 $ca
    nop                                           ; $6080: $00
    ret c                                         ; $6081: $d8

    nop                                           ; $6082: $00
    call $d200                                    ; $6083: $cd $00 $d2
    nop                                           ; $6086: $00
    rlc b                                         ; $6087: $cb $00
    rst $38                                       ; $6089: $ff
    rst $38                                       ; $608a: $ff
    nop                                           ; $608b: $00
    ld d, [hl]                                    ; $608c: $56
    ld [hl], e                                    ; $608d: $73
    rst RST_00                                    ; $608e: $c7
    nop                                           ; $608f: $00
    db $d3                                        ; $6090: $d3
    nop                                           ; $6091: $00
    jp z, $ca00                                   ; $6092: $ca $00 $ca

    nop                                           ; $6095: $00
    ret                                           ; $6096: $c9


    nop                                           ; $6097: $00
    ret                                           ; $6098: $c9


    nop                                           ; $6099: $00
    rst $38                                       ; $609a: $ff
    rst $38                                       ; $609b: $ff
    ld e, a                                       ; $609c: $5f
    ld a, h                                       ; $609d: $7c
    pop de                                        ; $609e: $d1
    nop                                           ; $609f: $00
    call $d000                                    ; $60a0: $cd $00 $d0
    nop                                           ; $60a3: $00
    ret nc                                        ; $60a4: $d0

    nop                                           ; $60a5: $00
    rst $38                                       ; $60a6: $ff
    rst $38                                       ; $60a7: $ff
    nop                                           ; $60a8: $00
    ld e, l                                       ; $60a9: $5d
    ld a, b                                       ; $60aa: $78
    call nc, $d000                                ; $60ab: $d4 $00 $d0
    nop                                           ; $60ae: $00
    reti                                          ; $60af: $d9


    nop                                           ; $60b0: $00
    rlc b                                         ; $60b1: $cb $00
    rst $38                                       ; $60b3: $ff
    rst $38                                       ; $60b4: $ff
    nop                                           ; $60b5: $00
    ld c, b                                       ; $60b6: $48
    ld a, b                                       ; $60b7: $78
    rst $10                                       ; $60b8: $d7
    nop                                           ; $60b9: $00
    reti                                          ; $60ba: $d9


    nop                                           ; $60bb: $00
    jp nc, $f000                                  ; $60bc: $d2 $00 $f0

    nop                                           ; $60bf: $00
    rlc b                                         ; $60c0: $cb $00
    ret nc                                        ; $60c2: $d0

    nop                                           ; $60c3: $00
    push bc                                       ; $60c4: $c5
    nop                                           ; $60c5: $00
    rst $10                                       ; $60c6: $d7
    nop                                           ; $60c7: $00
    rst $10                                       ; $60c8: $d7
    nop                                           ; $60c9: $00
    ret                                           ; $60ca: $c9


    nop                                           ; $60cb: $00
    rst $10                                       ; $60cc: $d7
    nop                                           ; $60cd: $00
    rst $38                                       ; $60ce: $ff
    rst $38                                       ; $60cf: $ff
    nop                                           ; $60d0: $00
    ld e, h                                       ; $60d1: $5c
    ld a, b                                       ; $60d2: $78
    rst RST_00                                    ; $60d3: $c7
    nop                                           ; $60d4: $00
    sub $00                                       ; $60d5: $d6 $00
    db $d3                                        ; $60d7: $d3
    nop                                           ; $60d8: $00
    db $db                                        ; $60d9: $db
    nop                                           ; $60da: $00
    rst $38                                       ; $60db: $ff
    rst $38                                       ; $60dc: $ff
    nop                                           ; $60dd: $00
    ld d, l                                       ; $60de: $55
    ld a, b                                       ; $60df: $78
    jp c, $c500                                   ; $60e0: $da $00 $c5

    nop                                           ; $60e3: $00
    rst RST_00                                    ; $60e4: $c7
    nop                                           ; $60e5: $00
    reti                                          ; $60e6: $d9


    nop                                           ; $60e7: $00
    reti                                          ; $60e8: $d9


    nop                                           ; $60e9: $00
    pop de                                        ; $60ea: $d1
    nop                                           ; $60eb: $00
    rst $38                                       ; $60ec: $ff
    rst $38                                       ; $60ed: $ff
    nop                                           ; $60ee: $00
    ld d, a                                       ; $60ef: $57
    ld a, b                                       ; $60f0: $78
    cp b                                          ; $60f1: $b8
    nop                                           ; $60f2: $00
    xor a                                         ; $60f3: $af
    nop                                           ; $60f4: $00
    cp l                                          ; $60f5: $bd
    nop                                           ; $60f6: $00
    cp l                                          ; $60f7: $bd
    nop                                           ; $60f8: $00
    jp rP1                                        ; $60f9: $c3 $00 $ff


    rst $38                                       ; $60fc: $ff
    nop                                           ; $60fd: $00
    ld e, c                                       ; $60fe: $59
    ld a, b                                       ; $60ff: $78
    rst RST_00                                    ; $6100: $c7
    nop                                           ; $6101: $00
    push bc                                       ; $6102: $c5
    nop                                           ; $6103: $00
    pop de                                        ; $6104: $d1
    nop                                           ; $6105: $00
    ret                                           ; $6106: $c9


    nop                                           ; $6107: $00
    ret nc                                        ; $6108: $d0

    nop                                           ; $6109: $00
    rst $38                                       ; $610a: $ff
    rst $38                                       ; $610b: $ff
    nop                                           ; $610c: $00
    ld d, e                                       ; $610d: $53
    ld a, b                                       ; $610e: $78
    db $d3                                        ; $610f: $d3
    nop                                           ; $6110: $00
    sub $00                                       ; $6111: $d6 $00
    push bc                                       ; $6113: $c5
    nop                                           ; $6114: $00
    jp nc, $cb00                                  ; $6115: $d2 $00 $cb

    nop                                           ; $6118: $00
    ret                                           ; $6119: $c9


    nop                                           ; $611a: $00
    rst $10                                       ; $611b: $d7
    nop                                           ; $611c: $00
    rst $38                                       ; $611d: $ff
    rst $38                                       ; $611e: $ff
    nop                                           ; $611f: $00
    ld d, [hl]                                    ; $6120: $56
    ld a, b                                       ; $6121: $78
    add $00                                       ; $6122: $c6 $00
    reti                                          ; $6124: $d9


    nop                                           ; $6125: $00
    rst RST_00                                    ; $6126: $c7
    nop                                           ; $6127: $00
    rst RST_08                                    ; $6128: $cf
    nop                                           ; $6129: $00
    ret                                           ; $612a: $c9


    nop                                           ; $612b: $00
    ret c                                         ; $612c: $d8

    nop                                           ; $612d: $00
    rst $38                                       ; $612e: $ff
    rst $38                                       ; $612f: $ff
    nop                                           ; $6130: $00
    ld e, d                                       ; $6131: $5a
    ld a, b                                       ; $6132: $78
    push bc                                       ; $6133: $c5
    nop                                           ; $6134: $00
    jp nc, $cb00                                  ; $6135: $d2 $00 $cb

    nop                                           ; $6138: $00
    ret                                           ; $6139: $c9


    nop                                           ; $613a: $00
    ret nc                                        ; $613b: $d0

    nop                                           ; $613c: $00
    rst $38                                       ; $613d: $ff
    rst $38                                       ; $613e: $ff
    nop                                           ; $613f: $00
    ld c, h                                       ; $6140: $4c
    ld a, b                                       ; $6141: $78
    sub $00                                       ; $6142: $d6 $00
    push bc                                       ; $6144: $c5
    nop                                           ; $6145: $00
    rst RST_00                                    ; $6146: $c7
    nop                                           ; $6147: $00
    call $d200                                    ; $6148: $cd $00 $d2
    nop                                           ; $614b: $00
    rlc b                                         ; $614c: $cb $00
    rst RST_18                                    ; $614e: $df
    nop                                           ; $614f: $00
    rst RST_00                                    ; $6150: $c7
    nop                                           ; $6151: $00
    push bc                                       ; $6152: $c5
    nop                                           ; $6153: $00
    sub $00                                       ; $6154: $d6 $00
    rst $38                                       ; $6156: $ff
    rst $38                                       ; $6157: $ff
    nop                                           ; $6158: $00
    ld e, c                                       ; $6159: $59
    ld a, b                                       ; $615a: $78
    call nc, $d900                                ; $615b: $d4 $00 $d9
    nop                                           ; $615e: $00
    sub $00                                       ; $615f: $d6 $00
    rst $10                                       ; $6161: $d7
    nop                                           ; $6162: $00
    ret                                           ; $6163: $c9


    nop                                           ; $6164: $00
    rst $38                                       ; $6165: $ff
    rst $38                                       ; $6166: $ff
    nop                                           ; $6167: $00
    ld d, d                                       ; $6168: $52
    ld [hl], e                                    ; $6169: $73
    sub $00                                       ; $616a: $d6 $00
    db $d3                                        ; $616c: $d3
    nop                                           ; $616d: $00
    rst RST_00                                    ; $616e: $c7
    nop                                           ; $616f: $00
    rst RST_08                                    ; $6170: $cf
    nop                                           ; $6171: $00
    call $d200                                    ; $6172: $cd $00 $d2
    nop                                           ; $6175: $00
    rlc b                                         ; $6176: $cb $00
    ldh a, [rP1]                                  ; $6178: $f0 $00
    rst $38                                       ; $617a: $ff
    rst $38                                       ; $617b: $ff
    ld e, c                                       ; $617c: $59
    ld a, h                                       ; $617d: $7c
    call z, $d300                                 ; $617e: $cc $00 $d3
    nop                                           ; $6181: $00
    sub $00                                       ; $6182: $d6 $00
    rst $10                                       ; $6184: $d7
    nop                                           ; $6185: $00
    ret                                           ; $6186: $c9


    nop                                           ; $6187: $00
    rst $38                                       ; $6188: $ff
    rst $38                                       ; $6189: $ff
    nop                                           ; $618a: $00
    ld c, [hl]                                    ; $618b: $4e
    ld [hl], e                                    ; $618c: $73
    call $c700                                    ; $618d: $cd $00 $c7
    nop                                           ; $6190: $00
    ret                                           ; $6191: $c9


    nop                                           ; $6192: $00
    ldh a, [rP1]                                  ; $6193: $f0 $00
    rst RST_00                                    ; $6195: $c7
    nop                                           ; $6196: $00
    sub $00                                       ; $6197: $d6 $00
    ret                                           ; $6199: $c9


    nop                                           ; $619a: $00
    push bc                                       ; $619b: $c5
    nop                                           ; $619c: $00
    pop de                                        ; $619d: $d1
    nop                                           ; $619e: $00
    rst $38                                       ; $619f: $ff
    rst $38                                       ; $61a0: $ff
    ld e, h                                       ; $61a1: $5c
    ld a, h                                       ; $61a2: $7c
    rst RST_00                                    ; $61a3: $c7
    nop                                           ; $61a4: $00
    db $d3                                        ; $61a5: $d3
    nop                                           ; $61a6: $00
    jp nc, $c900                                  ; $61a7: $d2 $00 $c9

    nop                                           ; $61aa: $00
    rst $38                                       ; $61ab: $ff
    rst $38                                       ; $61ac: $ff
    nop                                           ; $61ad: $00
    ld e, h                                       ; $61ae: $5c
    ld a, b                                       ; $61af: $78
    ret z                                         ; $61b0: $c8

    nop                                           ; $61b1: $00
    ret                                           ; $61b2: $c9


    nop                                           ; $61b3: $00
    ret                                           ; $61b4: $c9


    nop                                           ; $61b5: $00
    sub $00                                       ; $61b6: $d6 $00
    rst $38                                       ; $61b8: $ff
    rst $38                                       ; $61b9: $ff
    nop                                           ; $61ba: $00
    ld c, c                                       ; $61bb: $49
    ld a, b                                       ; $61bc: $78
    rst $10                                       ; $61bd: $d7
    nop                                           ; $61be: $00
    ret c                                         ; $61bf: $d8

    nop                                           ; $61c0: $00
    sub $00                                       ; $61c1: $d6 $00
    push bc                                       ; $61c3: $c5
    nop                                           ; $61c4: $00
    db $db                                        ; $61c5: $db
    nop                                           ; $61c6: $00
    add $00                                       ; $61c7: $c6 $00
    ret                                           ; $61c9: $c9


    nop                                           ; $61ca: $00
    sub $00                                       ; $61cb: $d6 $00
    sub $00                                       ; $61cd: $d6 $00
    db $dd                                        ; $61cf: $dd
    nop                                           ; $61d0: $00
    rst $38                                       ; $61d1: $ff
    rst $38                                       ; $61d2: $ff
    nop                                           ; $61d3: $00
    ld d, [hl]                                    ; $61d4: $56
    ld a, b                                       ; $61d5: $78
    add $00                                       ; $61d6: $c6 $00
    call $c700                                    ; $61d8: $cd $00 $c7
    nop                                           ; $61db: $00
    db $dd                                        ; $61dc: $dd
    nop                                           ; $61dd: $00
    rst RST_00                                    ; $61de: $c7
    nop                                           ; $61df: $00
    ret nc                                        ; $61e0: $d0

    nop                                           ; $61e1: $00
    ret                                           ; $61e2: $c9


    nop                                           ; $61e3: $00
    rst $38                                       ; $61e4: $ff
    rst $38                                       ; $61e5: $ff
    nop                                           ; $61e6: $00
    ld c, a                                       ; $61e7: $4f
    ld [hl], e                                    ; $61e8: $73
    push bc                                       ; $61e9: $c5
    nop                                           ; $61ea: $00
    ret c                                         ; $61eb: $d8

    nop                                           ; $61ec: $00
    ret nc                                        ; $61ed: $d0

    nop                                           ; $61ee: $00
    push bc                                       ; $61ef: $c5
    nop                                           ; $61f0: $00
    jp nc, rPuzzleGridWidth                       ; $61f1: $d2 $00 $d8

    nop                                           ; $61f4: $00
    call $c700                                    ; $61f5: $cd $00 $c7
    nop                                           ; $61f8: $00
    ldh a, [rP1]                                  ; $61f9: $f0 $00
    rst $38                                       ; $61fb: $ff
    rst $38                                       ; $61fc: $ff
    ld d, l                                       ; $61fd: $55
    ld a, h                                       ; $61fe: $7c
    call nc, $c900                                ; $61ff: $d4 $00 $c9
    nop                                           ; $6202: $00
    jp nc, $cb00                                  ; $6203: $d2 $00 $cb

    nop                                           ; $6206: $00
    reti                                          ; $6207: $d9


    nop                                           ; $6208: $00
    call $d200                                    ; $6209: $cd $00 $d2
    nop                                           ; $620c: $00
    rst $38                                       ; $620d: $ff
    rst $38                                       ; $620e: $ff
    nop                                           ; $620f: $00
    ld c, l                                       ; $6210: $4d
    ld a, b                                       ; $6211: $78
    push bc                                       ; $6212: $c5
    nop                                           ; $6213: $00
    pop de                                        ; $6214: $d1
    nop                                           ; $6215: $00
    add $00                                       ; $6216: $c6 $00
    reti                                          ; $6218: $d9


    nop                                           ; $6219: $00
    ret nc                                        ; $621a: $d0

    nop                                           ; $621b: $00
    push bc                                       ; $621c: $c5
    nop                                           ; $621d: $00
    jp nc, $c700                                  ; $621e: $d2 $00 $c7

    nop                                           ; $6221: $00
    ret                                           ; $6222: $c9


    nop                                           ; $6223: $00
    rst $38                                       ; $6224: $ff
    rst $38                                       ; $6225: $ff
    nop                                           ; $6226: $00
    ld d, c                                       ; $6227: $51
    ld a, b                                       ; $6228: $78
    add $00                                       ; $6229: $c6 $00
    push bc                                       ; $622b: $c5
    nop                                           ; $622c: $00
    rst RST_00                                    ; $622d: $c7
    nop                                           ; $622e: $00
    rst RST_08                                    ; $622f: $cf
    nop                                           ; $6230: $00
    rst RST_18                                    ; $6231: $df
    nop                                           ; $6232: $00
    call z, $d300                                 ; $6233: $cc $00 $d3
    nop                                           ; $6236: $00
    ret                                           ; $6237: $c9


    nop                                           ; $6238: $00
    rst $38                                       ; $6239: $ff
    rst $38                                       ; $623a: $ff
    nop                                           ; $623b: $00
    ld d, a                                       ; $623c: $57
    ld [hl], e                                    ; $623d: $73
    add $00                                       ; $623e: $c6 $00
    reti                                          ; $6240: $d9


    nop                                           ; $6241: $00
    add $00                                       ; $6242: $c6 $00
    add $00                                       ; $6244: $c6 $00
    ret nc                                        ; $6246: $d0

    nop                                           ; $6247: $00
    ret                                           ; $6248: $c9


    nop                                           ; $6249: $00
    rst $38                                       ; $624a: $ff
    rst $38                                       ; $624b: $ff
    ld e, [hl]                                    ; $624c: $5e
    ld a, h                                       ; $624d: $7c
    call nc, $cd00                                ; $624e: $d4 $00 $cd
    nop                                           ; $6251: $00
    call nc, $c900                                ; $6252: $d4 $00 $c9
    nop                                           ; $6255: $00
    rst $38                                       ; $6256: $ff
    rst $38                                       ; $6257: $ff
    nop                                           ; $6258: $00
    ld e, e                                       ; $6259: $5b
    ld a, b                                       ; $625a: $78
    rst $10                                       ; $625b: $d7
    nop                                           ; $625c: $00
    call z, $cd00                                 ; $625d: $cc $00 $cd
    nop                                           ; $6260: $00
    sub $00                                       ; $6261: $d6 $00
    ret c                                         ; $6263: $d8

    nop                                           ; $6264: $00
    rst $38                                       ; $6265: $ff
    rst $38                                       ; $6266: $ff
    nop                                           ; $6267: $00
    ld d, a                                       ; $6268: $57
    ld [hl], e                                    ; $6269: $73
    call z, $c900                                 ; $626a: $cc $00 $c9
    nop                                           ; $626d: $00
    sub $00                                       ; $626e: $d6 $00
    pop de                                        ; $6270: $d1
    nop                                           ; $6271: $00
    call rPuzzleGridWidth                         ; $6272: $cd $00 $d8
    nop                                           ; $6275: $00
    rst $38                                       ; $6276: $ff
    rst $38                                       ; $6277: $ff
    ld e, h                                       ; $6278: $5c
    ld a, h                                       ; $6279: $7c
    rst RST_00                                    ; $627a: $c7
    nop                                           ; $627b: $00
    sub $00                                       ; $627c: $d6 $00
    push bc                                       ; $627e: $c5
    nop                                           ; $627f: $00
    add $00                                       ; $6280: $c6 $00
    rst $38                                       ; $6282: $ff
    rst $38                                       ; $6283: $ff
    nop                                           ; $6284: $00
    ld d, d                                       ; $6285: $52
    ld [hl], e                                    ; $6286: $73
    rst $10                                       ; $6287: $d7
    nop                                           ; $6288: $00
    call z, $d300                                 ; $6289: $cc $00 $d3
    nop                                           ; $628c: $00
    db $d3                                        ; $628d: $d3
    nop                                           ; $628e: $00
    ret c                                         ; $628f: $d8

    nop                                           ; $6290: $00
    call $d200                                    ; $6291: $cd $00 $d2
    nop                                           ; $6294: $00
    rlc b                                         ; $6295: $cb $00
    rst $38                                       ; $6297: $ff
    rst $38                                       ; $6298: $ff
    ld e, h                                       ; $6299: $5c
    ld a, h                                       ; $629a: $7c
    rst $10                                       ; $629b: $d7
    nop                                           ; $629c: $00
    ret c                                         ; $629d: $d8

    nop                                           ; $629e: $00
    push bc                                       ; $629f: $c5
    nop                                           ; $62a0: $00
    sub $00                                       ; $62a1: $d6 $00
    rst $38                                       ; $62a3: $ff
    rst $38                                       ; $62a4: $ff
    nop                                           ; $62a5: $00
    ld e, c                                       ; $62a6: $59
    ld a, b                                       ; $62a7: $78
    push bc                                       ; $62a8: $c5
    nop                                           ; $62a9: $00
    rst RST_00                                    ; $62aa: $c7
    nop                                           ; $62ab: $00
    db $d3                                        ; $62ac: $d3
    nop                                           ; $62ad: $00
    sub $00                                       ; $62ae: $d6 $00
    jp nc, rP1                                    ; $62b0: $d2 $00 $ff

    rst $38                                       ; $62b3: $ff
    nop                                           ; $62b4: $00
    ld e, h                                       ; $62b5: $5c
    ld a, b                                       ; $62b6: $78
    ret nc                                        ; $62b7: $d0

    nop                                           ; $62b8: $00
    push bc                                       ; $62b9: $c5
    nop                                           ; $62ba: $00
    pop de                                        ; $62bb: $d1
    nop                                           ; $62bc: $00
    call nc, rP1                                  ; $62bd: $d4 $00 $ff
    rst $38                                       ; $62c0: $ff
    nop                                           ; $62c1: $00
    ld d, e                                       ; $62c2: $53
    ld a, b                                       ; $62c3: $78
    rst $10                                       ; $62c4: $d7
    nop                                           ; $62c5: $00
    reti                                          ; $62c6: $d9


    nop                                           ; $62c7: $00
    jp nc, $df00                                  ; $62c8: $d2 $00 $df

    nop                                           ; $62cb: $00
    jp z, $cd00                                   ; $62cc: $ca $00 $cd

    nop                                           ; $62cf: $00
    rst $10                                       ; $62d0: $d7
    nop                                           ; $62d1: $00
    call z, rP1                                   ; $62d2: $cc $00 $ff
    rst $38                                       ; $62d5: $ff
    nop                                           ; $62d6: $00
    ld c, e                                       ; $62d7: $4b
    ld a, b                                       ; $62d8: $78
    rlc b                                         ; $62d9: $cb $00
    sub $00                                       ; $62db: $d6 $00
    ret                                           ; $62dd: $c9


    nop                                           ; $62de: $00
    ret                                           ; $62df: $c9


    nop                                           ; $62e0: $00
    jp nc, $df00                                  ; $62e1: $d2 $00 $df

    nop                                           ; $62e4: $00
    call nc, $c900                                ; $62e5: $d4 $00 $c9
    nop                                           ; $62e8: $00
    push bc                                       ; $62e9: $c5
    nop                                           ; $62ea: $00
    rst $10                                       ; $62eb: $d7
    nop                                           ; $62ec: $00
    rst $38                                       ; $62ed: $ff
    rst $38                                       ; $62ee: $ff
    nop                                           ; $62ef: $00
    ld d, h                                       ; $62f0: $54
    ld a, b                                       ; $62f1: $78
    ret nc                                        ; $62f2: $d0

    nop                                           ; $62f3: $00
    push bc                                       ; $62f4: $c5
    nop                                           ; $62f5: $00
    ret z                                         ; $62f6: $c8

    nop                                           ; $62f7: $00
    db $dd                                        ; $62f8: $dd
    nop                                           ; $62f9: $00
    add $00                                       ; $62fa: $c6 $00
    reti                                          ; $62fc: $d9


    nop                                           ; $62fd: $00
    rlc b                                         ; $62fe: $cb $00
    rst $38                                       ; $6300: $ff
    rst $38                                       ; $6301: $ff
    nop                                           ; $6302: $00
    ld d, e                                       ; $6303: $53
    ld a, b                                       ; $6304: $78
    add $00                                       ; $6305: $c6 $00
    push bc                                       ; $6307: $c5
    nop                                           ; $6308: $00
    ret nc                                        ; $6309: $d0

    nop                                           ; $630a: $00
    push bc                                       ; $630b: $c5
    nop                                           ; $630c: $00
    jp nc, $c700                                  ; $630d: $d2 $00 $c7

    nop                                           ; $6310: $00
    ret                                           ; $6311: $c9


    nop                                           ; $6312: $00
    rst $38                                       ; $6313: $ff
    rst $38                                       ; $6314: $ff
    nop                                           ; $6315: $00
    ld d, e                                       ; $6316: $53
    ld a, b                                       ; $6317: $78
    rst $10                                       ; $6318: $d7
    nop                                           ; $6319: $00
    push bc                                       ; $631a: $c5
    nop                                           ; $631b: $00
    pop de                                        ; $631c: $d1
    nop                                           ; $631d: $00
    reti                                          ; $631e: $d9


    nop                                           ; $631f: $00
    sub $00                                       ; $6320: $d6 $00
    push bc                                       ; $6322: $c5
    nop                                           ; $6323: $00
    call rP1                                      ; $6324: $cd $00 $ff
    rst $38                                       ; $6327: $ff
    nop                                           ; $6328: $00
    ld d, c                                       ; $6329: $51
    ld a, b                                       ; $632a: $78
    db $db                                        ; $632b: $db
    nop                                           ; $632c: $00
    call $d000                                    ; $632d: $cd $00 $d0
    nop                                           ; $6330: $00
    ret z                                         ; $6331: $c8

    nop                                           ; $6332: $00
    rst RST_18                                    ; $6333: $df
    nop                                           ; $6334: $00
    ret z                                         ; $6335: $c8

    nop                                           ; $6336: $00
    reti                                          ; $6337: $d9


    nop                                           ; $6338: $00
    rst RST_00                                    ; $6339: $c7
    nop                                           ; $633a: $00
    rst RST_08                                    ; $633b: $cf
    nop                                           ; $633c: $00
    rst $38                                       ; $633d: $ff
    rst $38                                       ; $633e: $ff
    nop                                           ; $633f: $00
    ld e, [hl]                                    ; $6340: $5e
    ld [hl], e                                    ; $6341: $73
    or a                                          ; $6342: $b7
    nop                                           ; $6343: $00
    or e                                          ; $6344: $b3
    nop                                           ; $6345: $00
    cp b                                          ; $6346: $b8
    nop                                           ; $6347: $00
    or e                                          ; $6348: $b3
    nop                                           ; $6349: $00
    rst $38                                       ; $634a: $ff
    rst $38                                       ; $634b: $ff
    ld e, c                                       ; $634c: $59
    ld a, h                                       ; $634d: $7c
    jp $b900                                      ; $634e: $c3 $00 $b9


    nop                                           ; $6351: $00
    cp l                                          ; $6352: $bd
    nop                                           ; $6353: $00
    or d                                          ; $6354: $b2
    nop                                           ; $6355: $00
    or e                                          ; $6356: $b3
    nop                                           ; $6357: $00
    rst $38                                       ; $6358: $ff
    rst $38                                       ; $6359: $ff
    nop                                           ; $635a: $00
    ld b, [hl]                                    ; $635b: $46
    ld a, b                                       ; $635c: $78
    db $db                                        ; $635d: $db
    nop                                           ; $635e: $00
    ret                                           ; $635f: $c9


    nop                                           ; $6360: $00
    push bc                                       ; $6361: $c5
    nop                                           ; $6362: $00
    ret c                                         ; $6363: $d8

    nop                                           ; $6364: $00
    call z, $c900                                 ; $6365: $cc $00 $c9
    nop                                           ; $6368: $00
    sub $00                                       ; $6369: $d6 $00
    rst RST_00                                    ; $636b: $c7
    nop                                           ; $636c: $00
    db $d3                                        ; $636d: $d3
    nop                                           ; $636e: $00
    rst RST_00                                    ; $636f: $c7
    nop                                           ; $6370: $00
    rst RST_08                                    ; $6371: $cf
    nop                                           ; $6372: $00
    rst $38                                       ; $6373: $ff
    rst $38                                       ; $6374: $ff
    nop                                           ; $6375: $00
    ld e, c                                       ; $6376: $59
    ld a, b                                       ; $6377: $78
    rst RST_00                                    ; $6378: $c7
    nop                                           ; $6379: $00
    sub $00                                       ; $637a: $d6 $00
    db $d3                                        ; $637c: $d3
    nop                                           ; $637d: $00
    db $db                                        ; $637e: $db
    nop                                           ; $637f: $00
    jp nc, rP1                                    ; $6380: $d2 $00 $ff

    rst $38                                       ; $6383: $ff
    nop                                           ; $6384: $00
    ld d, a                                       ; $6385: $57
    ld a, b                                       ; $6386: $78
    call nc, $d300                                ; $6387: $d4 $00 $d3
    nop                                           ; $638a: $00
    db $d3                                        ; $638b: $d3
    nop                                           ; $638c: $00
    ret z                                         ; $638d: $c8

    nop                                           ; $638e: $00
    ret nc                                        ; $638f: $d0

    nop                                           ; $6390: $00
    ret                                           ; $6391: $c9


    nop                                           ; $6392: $00
    rst $38                                       ; $6393: $ff
    rst $38                                       ; $6394: $ff
    nop                                           ; $6395: $00
    ld c, h                                       ; $6396: $4c
    ld a, b                                       ; $6397: $78
    rst $10                                       ; $6398: $d7
    nop                                           ; $6399: $00
    rst RST_00                                    ; $639a: $c7
    nop                                           ; $639b: $00
    push bc                                       ; $639c: $c5
    nop                                           ; $639d: $00
    sub $00                                       ; $639e: $d6 $00
    ret                                           ; $63a0: $c9


    nop                                           ; $63a1: $00
    rst RST_00                                    ; $63a2: $c7
    nop                                           ; $63a3: $00
    sub $00                                       ; $63a4: $d6 $00
    db $d3                                        ; $63a6: $d3
    nop                                           ; $63a7: $00
    db $db                                        ; $63a8: $db
    nop                                           ; $63a9: $00
    rst $38                                       ; $63aa: $ff
    rst $38                                       ; $63ab: $ff
    nop                                           ; $63ac: $00
    ld e, c                                       ; $63ad: $59
    ld a, b                                       ; $63ae: $78
    rlc b                                         ; $63af: $cb $00
    sub $00                                       ; $63b1: $d6 $00
    push bc                                       ; $63b3: $c5
    nop                                           ; $63b4: $00
    call nc, $c900                                ; $63b5: $d4 $00 $c9
    nop                                           ; $63b8: $00
    rst $38                                       ; $63b9: $ff
    rst $38                                       ; $63ba: $ff
    nop                                           ; $63bb: $00
    ld d, [hl]                                    ; $63bc: $56
    ld a, b                                       ; $63bd: $78
    rst RST_00                                    ; $63be: $c7
    nop                                           ; $63bf: $00
    push bc                                       ; $63c0: $c5
    nop                                           ; $63c1: $00
    jp nc, $d200                                  ; $63c2: $d2 $00 $d2

    nop                                           ; $63c5: $00
    db $d3                                        ; $63c6: $d3
    nop                                           ; $63c7: $00
    jp nc, rP1                                    ; $63c8: $d2 $00 $ff

    rst $38                                       ; $63cb: $ff
    nop                                           ; $63cc: $00
    ld e, [hl]                                    ; $63cd: $5e
    ld a, b                                       ; $63ce: $78
    rst $10                                       ; $63cf: $d7
    nop                                           ; $63d0: $00
    call z, $cd00                                 ; $63d1: $cc $00 $cd
    nop                                           ; $63d4: $00
    call nc, rP1                                  ; $63d5: $d4 $00 $ff
    rst $38                                       ; $63d8: $ff
    nop                                           ; $63d9: $00
    ld d, h                                       ; $63da: $54
    ld a, b                                       ; $63db: $78
    ret z                                         ; $63dc: $c8

    nop                                           ; $63dd: $00
    reti                                          ; $63de: $d9


    nop                                           ; $63df: $00
    rst RST_00                                    ; $63e0: $c7
    nop                                           ; $63e1: $00
    rst RST_08                                    ; $63e2: $cf
    nop                                           ; $63e3: $00
    add $00                                       ; $63e4: $c6 $00
    call $d000                                    ; $63e6: $cd $00 $d0
    nop                                           ; $63e9: $00
    ret nc                                        ; $63ea: $d0

    nop                                           ; $63eb: $00
    rst $38                                       ; $63ec: $ff
    rst $38                                       ; $63ed: $ff
    nop                                           ; $63ee: $00
    ld e, h                                       ; $63ef: $5c
    ld [hl], e                                    ; $63f0: $73
    rst RST_00                                    ; $63f1: $c7
    nop                                           ; $63f2: $00
    sub $00                                       ; $63f3: $d6 $00
    push bc                                       ; $63f5: $c5
    nop                                           ; $63f6: $00
    add $00                                       ; $63f7: $c6 $00
    rst $38                                       ; $63f9: $ff
    rst $38                                       ; $63fa: $ff
    ld d, a                                       ; $63fb: $57
    ld a, h                                       ; $63fc: $7c
    add $00                                       ; $63fd: $c6 $00
    ret                                           ; $63ff: $c9


    nop                                           ; $6400: $00
    ret                                           ; $6401: $c9


    nop                                           ; $6402: $00
    ret c                                         ; $6403: $d8

    nop                                           ; $6404: $00
    ret nc                                        ; $6405: $d0

    nop                                           ; $6406: $00
    ret                                           ; $6407: $c9


    nop                                           ; $6408: $00
    rst $38                                       ; $6409: $ff
    rst $38                                       ; $640a: $ff
    nop                                           ; $640b: $00
    ld c, [hl]                                    ; $640c: $4e
    ld [hl], e                                    ; $640d: $73
    rst RST_00                                    ; $640e: $c7
    nop                                           ; $640f: $00
    call z, $d600                                 ; $6410: $cc $00 $d6
    nop                                           ; $6413: $00
    call $d700                                    ; $6414: $cd $00 $d7
    nop                                           ; $6417: $00
    ret c                                         ; $6418: $d8

    nop                                           ; $6419: $00
    pop de                                        ; $641a: $d1
    nop                                           ; $641b: $00
    push bc                                       ; $641c: $c5
    nop                                           ; $641d: $00
    rst $10                                       ; $641e: $d7
    nop                                           ; $641f: $00
    rst $38                                       ; $6420: $ff
    rst $38                                       ; $6421: $ff
    ld e, h                                       ; $6422: $5c
    ld a, h                                       ; $6423: $7c
    ret c                                         ; $6424: $d8

    nop                                           ; $6425: $00
    sub $00                                       ; $6426: $d6 $00
    ret                                           ; $6428: $c9


    nop                                           ; $6429: $00
    ret                                           ; $642a: $c9


    nop                                           ; $642b: $00
    rst $38                                       ; $642c: $ff
    rst $38                                       ; $642d: $ff
    nop                                           ; $642e: $00
    ld e, e                                       ; $642f: $5b
    ld a, b                                       ; $6430: $78
    ret c                                         ; $6431: $d8

    nop                                           ; $6432: $00
    call $cb00                                    ; $6433: $cd $00 $cb
    nop                                           ; $6436: $00
    ret                                           ; $6437: $c9


    nop                                           ; $6438: $00
    sub $00                                       ; $6439: $d6 $00
    rst $38                                       ; $643b: $ff
    rst $38                                       ; $643c: $ff
    nop                                           ; $643d: $00
    ld d, l                                       ; $643e: $55
    ld [hl], e                                    ; $643f: $73
    add $00                                       ; $6440: $c6 $00
    db $d3                                        ; $6442: $d3
    nop                                           ; $6443: $00
    db $db                                        ; $6444: $db
    nop                                           ; $6445: $00
    ret nc                                        ; $6446: $d0

    nop                                           ; $6447: $00
    call $d200                                    ; $6448: $cd $00 $d2
    nop                                           ; $644b: $00
    rlc b                                         ; $644c: $cb $00
    rst $38                                       ; $644e: $ff
    rst $38                                       ; $644f: $ff
    ld e, [hl]                                    ; $6450: $5e
    ld a, h                                       ; $6451: $7c
    call nc, $cd00                                ; $6452: $d4 $00 $cd
    nop                                           ; $6455: $00
    jp nc, $d700                                  ; $6456: $d2 $00 $d7

    nop                                           ; $6459: $00
    rst $38                                       ; $645a: $ff
    rst $38                                       ; $645b: $ff
    nop                                           ; $645c: $00
    ld d, h                                       ; $645d: $54
    ld a, b                                       ; $645e: $78
    rst $10                                       ; $645f: $d7
    nop                                           ; $6460: $00
    ret                                           ; $6461: $c9


    nop                                           ; $6462: $00
    push bc                                       ; $6463: $c5
    nop                                           ; $6464: $00
    rst RST_18                                    ; $6465: $df
    nop                                           ; $6466: $00
    ret nc                                        ; $6467: $d0

    nop                                           ; $6468: $00
    call $d300                                    ; $6469: $cd $00 $d3
    nop                                           ; $646c: $00
    jp nc, rP1                                    ; $646d: $d2 $00 $ff

    rst $38                                       ; $6470: $ff
    nop                                           ; $6471: $00
    ld b, [hl]                                    ; $6472: $46
    ld a, b                                       ; $6473: $78
    cp l                                          ; $6474: $bd
    nop                                           ; $6475: $00
    cp a                                          ; $6476: $bf
    nop                                           ; $6477: $00
    cp b                                          ; $6478: $b8
    nop                                           ; $6479: $00
    ldh a, [rP1]                                  ; $647a: $f0 $00
    or b                                          ; $647c: $b0
    nop                                           ; $647d: $00
    or [hl]                                       ; $647e: $b6
    nop                                           ; $647f: $00
    cp c                                          ; $6480: $b9
    nop                                           ; $6481: $00
    pop bc                                        ; $6482: $c1
    nop                                           ; $6483: $00
    xor a                                         ; $6484: $af
    nop                                           ; $6485: $00
    cp h                                          ; $6486: $bc
    nop                                           ; $6487: $00
    rst $38                                       ; $6488: $ff
    rst $38                                       ; $6489: $ff
    nop                                           ; $648a: $00
    ld c, [hl]                                    ; $648b: $4e
    ld [hl], e                                    ; $648c: $73
    call $c700                                    ; $648d: $cd $00 $c7
    nop                                           ; $6490: $00
    ret                                           ; $6491: $c9


    nop                                           ; $6492: $00
    ldh a, [rP1]                                  ; $6493: $f0 $00
    rst RST_00                                    ; $6495: $c7
    nop                                           ; $6496: $00
    sub $00                                       ; $6497: $d6 $00
    ret                                           ; $6499: $c9


    nop                                           ; $649a: $00
    push bc                                       ; $649b: $c5
    nop                                           ; $649c: $00
    pop de                                        ; $649d: $d1
    nop                                           ; $649e: $00
    rst $38                                       ; $649f: $ff
    rst $38                                       ; $64a0: $ff
    ld d, [hl]                                    ; $64a1: $56
    ld a, h                                       ; $64a2: $7c
    rst $10                                       ; $64a3: $d7
    nop                                           ; $64a4: $00
    reti                                          ; $64a5: $d9


    nop                                           ; $64a6: $00
    jp nc, $c800                                  ; $64a7: $d2 $00 $c8

    nop                                           ; $64aa: $00
    push bc                                       ; $64ab: $c5
    nop                                           ; $64ac: $00
    ret                                           ; $64ad: $c9


    nop                                           ; $64ae: $00
    rst $38                                       ; $64af: $ff
    rst $38                                       ; $64b0: $ff
    nop                                           ; $64b1: $00
    ld c, e                                       ; $64b2: $4b
    ld a, b                                       ; $64b3: $78
    rst RST_00                                    ; $64b4: $c7
    nop                                           ; $64b5: $00
    db $d3                                        ; $64b6: $d3
    nop                                           ; $64b7: $00
    db $db                                        ; $64b8: $db
    nop                                           ; $64b9: $00
    add $00                                       ; $64ba: $c6 $00
    db $d3                                        ; $64bc: $d3
    nop                                           ; $64bd: $00
    db $dd                                        ; $64be: $dd
    nop                                           ; $64bf: $00
    rst RST_18                                    ; $64c0: $df
    nop                                           ; $64c1: $00
    call z, $c500                                 ; $64c2: $cc $00 $c5
    nop                                           ; $64c5: $00
    ret c                                         ; $64c6: $d8

    nop                                           ; $64c7: $00
    rst $38                                       ; $64c8: $ff
    rst $38                                       ; $64c9: $ff
    nop                                           ; $64ca: $00
    ld e, a                                       ; $64cb: $5f
    ld a, b                                       ; $64cc: $78
    sub $00                                       ; $64cd: $d6 $00
    push bc                                       ; $64cf: $c5
    nop                                           ; $64d0: $00
    db $dd                                        ; $64d1: $dd
    nop                                           ; $64d2: $00
    rst $38                                       ; $64d3: $ff
    rst $38                                       ; $64d4: $ff
    nop                                           ; $64d5: $00
    ld e, c                                       ; $64d6: $59
    ld a, b                                       ; $64d7: $78
    cp l                                          ; $64d8: $bd
    nop                                           ; $64d9: $00
    cp d                                          ; $64da: $ba
    nop                                           ; $64db: $00
    or e                                          ; $64dc: $b3
    nop                                           ; $64dd: $00
    cp b                                          ; $64de: $b8
    nop                                           ; $64df: $00
    jp rP1                                        ; $64e0: $c3 $00 $ff


    rst $38                                       ; $64e3: $ff
    nop                                           ; $64e4: $00
    ld d, [hl]                                    ; $64e5: $56
    ld a, b                                       ; $64e6: $78
    rst RST_00                                    ; $64e7: $c7
    nop                                           ; $64e8: $00
    call z, $c900                                 ; $64e9: $cc $00 $c9
    nop                                           ; $64ec: $00
    sub $00                                       ; $64ed: $d6 $00
    sub $00                                       ; $64ef: $d6 $00
    db $dd                                        ; $64f1: $dd
    nop                                           ; $64f2: $00
    rst $38                                       ; $64f3: $ff
    rst $38                                       ; $64f4: $ff
    nop                                           ; $64f5: $00
    ld c, a                                       ; $64f6: $4f
    ld a, b                                       ; $64f7: $78
    call nc, $c500                                ; $64f8: $d4 $00 $c5
    nop                                           ; $64fb: $00
    ret nc                                        ; $64fc: $d0

    nop                                           ; $64fd: $00
    pop de                                        ; $64fe: $d1
    nop                                           ; $64ff: $00
    rst RST_18                                    ; $6500: $df
    nop                                           ; $6501: $00
    ret c                                         ; $6502: $d8

    nop                                           ; $6503: $00
    sub $00                                       ; $6504: $d6 $00
    ret                                           ; $6506: $c9


    nop                                           ; $6507: $00
    ret                                           ; $6508: $c9


    nop                                           ; $6509: $00
    rst $38                                       ; $650a: $ff
    rst $38                                       ; $650b: $ff
    nop                                           ; $650c: $00
    ld e, h                                       ; $650d: $5c
    ld a, b                                       ; $650e: $78
    ret c                                         ; $650f: $d8

    nop                                           ; $6510: $00
    push bc                                       ; $6511: $c5
    nop                                           ; $6512: $00
    jp nc, $cf00                                  ; $6513: $d2 $00 $cf

    nop                                           ; $6516: $00
    rst $38                                       ; $6517: $ff
    rst $38                                       ; $6518: $ff
    nop                                           ; $6519: $00
    ld e, e                                       ; $651a: $5b
    ld a, b                                       ; $651b: $78
    call z, $c500                                 ; $651c: $cc $00 $c5
    nop                                           ; $651f: $00
    db $db                                        ; $6520: $db
    nop                                           ; $6521: $00
    rst RST_08                                    ; $6522: $cf
    nop                                           ; $6523: $00
    rst $38                                       ; $6524: $ff
    rst $38                                       ; $6525: $ff
    nop                                           ; $6526: $00
    ld h, b                                       ; $6527: $60
    ld a, b                                       ; $6528: $78
    jp z, $d000                                   ; $6529: $ca $00 $d0

    nop                                           ; $652c: $00
    db $dd                                        ; $652d: $dd
    nop                                           ; $652e: $00
    rst $38                                       ; $652f: $ff
    rst $38                                       ; $6530: $ff
    nop                                           ; $6531: $00
    ld d, e                                       ; $6532: $53
    ld [hl], e                                    ; $6533: $73
    rst $10                                       ; $6534: $d7
    nop                                           ; $6535: $00
    call nc, $cd00                                ; $6536: $d4 $00 $cd
    nop                                           ; $6539: $00
    jp nc, $d200                                  ; $653a: $d2 $00 $d2

    nop                                           ; $653d: $00
    call $d200                                    ; $653e: $cd $00 $d2
    nop                                           ; $6541: $00
    rlc b                                         ; $6542: $cb $00
    rst $38                                       ; $6544: $ff
    rst $38                                       ; $6545: $ff
    ld e, a                                       ; $6546: $5f
    ld a, h                                       ; $6547: $7c
    ret c                                         ; $6548: $d8

    nop                                           ; $6549: $00
    db $d3                                        ; $654a: $d3
    nop                                           ; $654b: $00
    call nc, rP1                                  ; $654c: $d4 $00 $ff
    rst $38                                       ; $654f: $ff
    nop                                           ; $6550: $00
    ld c, h                                       ; $6551: $4c
    ld a, b                                       ; $6552: $78
    or a                                          ; $6553: $b7
    nop                                           ; $6554: $00
    cp a                                          ; $6555: $bf
    nop                                           ; $6556: $00
    cp l                                          ; $6557: $bd
    nop                                           ; $6558: $00
    or d                                          ; $6559: $b2
    nop                                           ; $655a: $00
    cp h                                          ; $655b: $bc
    nop                                           ; $655c: $00
    cp c                                          ; $655d: $b9
    nop                                           ; $655e: $00
    cp c                                          ; $655f: $b9
    nop                                           ; $6560: $00
    or a                                          ; $6561: $b7
    nop                                           ; $6562: $00
    rst $38                                       ; $6563: $ff
    rst $38                                       ; $6564: $ff
    nop                                           ; $6565: $00
    ld d, e                                       ; $6566: $53
    ld a, b                                       ; $6567: $78
    rst $10                                       ; $6568: $d7
    nop                                           ; $6569: $00
    push de                                       ; $656a: $d5
    nop                                           ; $656b: $00
    reti                                          ; $656c: $d9


    nop                                           ; $656d: $00
    call $d600                                    ; $656e: $cd $00 $d6
    nop                                           ; $6571: $00
    sub $00                                       ; $6572: $d6 $00
    ret                                           ; $6574: $c9


    nop                                           ; $6575: $00
    ret nc                                        ; $6576: $d0

    nop                                           ; $6577: $00
    rst $38                                       ; $6578: $ff
    rst $38                                       ; $6579: $ff
    nop                                           ; $657a: $00
    ld e, h                                       ; $657b: $5c
    ld a, b                                       ; $657c: $78
    add $00                                       ; $657d: $c6 $00
    push bc                                       ; $657f: $c5
    nop                                           ; $6580: $00
    ret c                                         ; $6581: $d8

    nop                                           ; $6582: $00
    call z, rP1                                   ; $6583: $cc $00 $ff
    rst $38                                       ; $6586: $ff
    nop                                           ; $6587: $00
    ld e, c                                       ; $6588: $59
    ld a, b                                       ; $6589: $78
    rst $10                                       ; $658a: $d7
    nop                                           ; $658b: $00
    rst RST_08                                    ; $658c: $cf
    nop                                           ; $658d: $00
    call $cd00                                    ; $658e: $cd $00 $cd
    nop                                           ; $6591: $00
    jp nc, $cb00                                  ; $6592: $d2 $00 $cb

    nop                                           ; $6595: $00
    rst $38                                       ; $6596: $ff
    rst $38                                       ; $6597: $ff
    nop                                           ; $6598: $00
    ld e, h                                       ; $6599: $5c
    ld a, b                                       ; $659a: $78
    rst RST_00                                    ; $659b: $c7
    nop                                           ; $659c: $00
    db $d3                                        ; $659d: $d3
    nop                                           ; $659e: $00
    push bc                                       ; $659f: $c5
    nop                                           ; $65a0: $00
    ret c                                         ; $65a1: $d8

    nop                                           ; $65a2: $00
    rst $38                                       ; $65a3: $ff
    rst $38                                       ; $65a4: $ff
    nop                                           ; $65a5: $00
    ld e, h                                       ; $65a6: $5c
    ld a, b                                       ; $65a7: $78
    rst RST_00                                    ; $65a8: $c7
    nop                                           ; $65a9: $00
    sub $00                                       ; $65aa: $d6 $00
    push bc                                       ; $65ac: $c5
    nop                                           ; $65ad: $00
    add $00                                       ; $65ae: $c6 $00
    rst $38                                       ; $65b0: $ff
    rst $38                                       ; $65b1: $ff
    nop                                           ; $65b2: $00
    ld d, e                                       ; $65b3: $53
    ld a, b                                       ; $65b4: $78
    rlc b                                         ; $65b5: $cb $00
    db $d3                                        ; $65b7: $d3
    nop                                           ; $65b8: $00
    ret nc                                        ; $65b9: $d0

    nop                                           ; $65ba: $00
    ret z                                         ; $65bb: $c8

    nop                                           ; $65bc: $00
    jp z, $cd00                                   ; $65bd: $ca $00 $cd

    nop                                           ; $65c0: $00
    rst $10                                       ; $65c1: $d7
    nop                                           ; $65c2: $00
    call z, rP1                                   ; $65c3: $cc $00 $ff
    rst $38                                       ; $65c6: $ff
    nop                                           ; $65c7: $00
    ld d, d                                       ; $65c8: $52
    ld a, b                                       ; $65c9: $78
    sub $00                                       ; $65ca: $d6 $00
    ret                                           ; $65cc: $c9


    nop                                           ; $65cd: $00
    call $d200                                    ; $65ce: $cd $00 $d2
    nop                                           ; $65d1: $00
    ret z                                         ; $65d2: $c8

    nop                                           ; $65d3: $00
    ret                                           ; $65d4: $c9


    nop                                           ; $65d5: $00
    ret                                           ; $65d6: $c9


    nop                                           ; $65d7: $00
    sub $00                                       ; $65d8: $d6 $00
    rst $38                                       ; $65da: $ff
    rst $38                                       ; $65db: $ff
    nop                                           ; $65dc: $00
    ld e, c                                       ; $65dd: $59
    ld [hl], e                                    ; $65de: $73
    adc $00                                       ; $65df: $ce $00
    push bc                                       ; $65e1: $c5
    nop                                           ; $65e2: $00
    rst RST_00                                    ; $65e3: $c7
    nop                                           ; $65e4: $00
    rst RST_08                                    ; $65e5: $cf
    nop                                           ; $65e6: $00
    ldh a, [rP1]                                  ; $65e7: $f0 $00
    rst $38                                       ; $65e9: $ff
    rst $38                                       ; $65ea: $ff
    ld c, [hl]                                    ; $65eb: $4e
    ld a, h                                       ; $65ec: $7c
    db $d3                                        ; $65ed: $d3
    nop                                           ; $65ee: $00
    ldh a, [rP1]                                  ; $65ef: $f0 $00
    ret nc                                        ; $65f1: $d0

    nop                                           ; $65f2: $00
    push bc                                       ; $65f3: $c5
    nop                                           ; $65f4: $00
    jp nc, rPuzzleGridWidth                       ; $65f5: $d2 $00 $d8

    nop                                           ; $65f8: $00
    ret                                           ; $65f9: $c9


    nop                                           ; $65fa: $00
    sub $00                                       ; $65fb: $d6 $00
    jp nc, rP1                                    ; $65fd: $d2 $00 $ff

    rst $38                                       ; $6600: $ff
    nop                                           ; $6601: $00
    ld e, a                                       ; $6602: $5f
    ld a, b                                       ; $6603: $78
    pop de                                        ; $6604: $d1
    nop                                           ; $6605: $00
    reti                                          ; $6606: $d9


    nop                                           ; $6607: $00
    ret z                                         ; $6608: $c8

    nop                                           ; $6609: $00
    rst $38                                       ; $660a: $ff
    rst $38                                       ; $660b: $ff
    nop                                           ; $660c: $00
    ld e, l                                       ; $660d: $5d
    ld [hl], e                                    ; $660e: $73
    rst RST_00                                    ; $660f: $c7
    nop                                           ; $6610: $00
    call z, $cd00                                 ; $6611: $cc $00 $cd
    nop                                           ; $6614: $00
    ret nc                                        ; $6615: $d0

    nop                                           ; $6616: $00
    call rP1                                      ; $6617: $cd $00 $ff
    rst $38                                       ; $661a: $ff
    ld d, e                                       ; $661b: $53
    ld a, h                                       ; $661c: $7c
    call nc, $c900                                ; $661d: $d4 $00 $c9
    nop                                           ; $6620: $00
    call nc, $d400                                ; $6621: $d4 $00 $d4
    nop                                           ; $6624: $00
    ret                                           ; $6625: $c9


    nop                                           ; $6626: $00
    sub $00                                       ; $6627: $d6 $00
    rst $10                                       ; $6629: $d7
    nop                                           ; $662a: $00
    rst $38                                       ; $662b: $ff
    rst $38                                       ; $662c: $ff
    nop                                           ; $662d: $00
    ld e, b                                       ; $662e: $58
    ld a, b                                       ; $662f: $78
    sub $00                                       ; $6630: $d6 $00
    push bc                                       ; $6632: $c5
    nop                                           ; $6633: $00
    ret z                                         ; $6634: $c8

    nop                                           ; $6635: $00
    push bc                                       ; $6636: $c5
    nop                                           ; $6637: $00
    sub $00                                       ; $6638: $d6 $00
    rst $38                                       ; $663a: $ff
    rst $38                                       ; $663b: $ff
    nop                                           ; $663c: $00
    ld d, e                                       ; $663d: $53
    ld a, b                                       ; $663e: $78
    pop de                                        ; $663f: $d1
    nop                                           ; $6640: $00
    ret                                           ; $6641: $c9


    nop                                           ; $6642: $00
    sub $00                                       ; $6643: $d6 $00
    pop de                                        ; $6645: $d1
    nop                                           ; $6646: $00
    push bc                                       ; $6647: $c5
    nop                                           ; $6648: $00
    call $c800                                    ; $6649: $cd $00 $c8
    nop                                           ; $664c: $00
    rst $38                                       ; $664d: $ff
    rst $38                                       ; $664e: $ff
    nop                                           ; $664f: $00
    ld e, a                                       ; $6650: $5f
    ld a, b                                       ; $6651: $78
    jp z, $d300                                   ; $6652: $ca $00 $d3

    nop                                           ; $6655: $00
    call c, rP1                                   ; $6656: $dc $00 $ff
    rst $38                                       ; $6659: $ff
    nop                                           ; $665a: $00
    ld e, h                                       ; $665b: $5c
    ld [hl], e                                    ; $665c: $73
    rst $10                                       ; $665d: $d7
    nop                                           ; $665e: $00
    reti                                          ; $665f: $d9


    nop                                           ; $6660: $00
    pop de                                        ; $6661: $d1
    nop                                           ; $6662: $00
    db $d3                                        ; $6663: $d3
    nop                                           ; $6664: $00
    rst $38                                       ; $6665: $ff
    rst $38                                       ; $6666: $ff
    ld d, c                                       ; $6667: $51
    ld a, h                                       ; $6668: $7c
    db $db                                        ; $6669: $db
    nop                                           ; $666a: $00
    sub $00                                       ; $666b: $d6 $00
    ret                                           ; $666d: $c9


    nop                                           ; $666e: $00
    rst $10                                       ; $666f: $d7
    nop                                           ; $6670: $00
    ret c                                         ; $6671: $d8

    nop                                           ; $6672: $00
    ret nc                                        ; $6673: $d0

    nop                                           ; $6674: $00
    ret                                           ; $6675: $c9


    nop                                           ; $6676: $00
    sub $00                                       ; $6677: $d6 $00
    rst $38                                       ; $6679: $ff
    rst $38                                       ; $667a: $ff
    nop                                           ; $667b: $00
    ld e, h                                       ; $667c: $5c
    ld a, b                                       ; $667d: $78
    jp z, $d600                                   ; $667e: $ca $00 $d6

    nop                                           ; $6681: $00
    db $d3                                        ; $6682: $d3
    nop                                           ; $6683: $00
    rlc b                                         ; $6684: $cb $00
    rst $38                                       ; $6686: $ff
    rst $38                                       ; $6687: $ff
    nop                                           ; $6688: $00
    ld d, e                                       ; $6689: $53
    ld a, b                                       ; $668a: $78
    rst RST_00                                    ; $668b: $c7
    nop                                           ; $668c: $00
    push bc                                       ; $668d: $c5
    nop                                           ; $668e: $00
    ret c                                         ; $668f: $d8

    nop                                           ; $6690: $00
    rst RST_18                                    ; $6691: $df
    nop                                           ; $6692: $00
    jp z, $cd00                                   ; $6693: $ca $00 $cd

    nop                                           ; $6696: $00
    rst $10                                       ; $6697: $d7
    nop                                           ; $6698: $00
    call z, rP1                                   ; $6699: $cc $00 $ff
    rst $38                                       ; $669c: $ff
    nop                                           ; $669d: $00
    ld d, [hl]                                    ; $669e: $56
    ld a, b                                       ; $669f: $78
    sub $00                                       ; $66a0: $d6 $00
    push bc                                       ; $66a2: $c5
    nop                                           ; $66a3: $00
    rst RST_00                                    ; $66a4: $c7
    nop                                           ; $66a5: $00
    rst RST_08                                    ; $66a6: $cf
    nop                                           ; $66a7: $00
    ret                                           ; $66a8: $c9


    nop                                           ; $66a9: $00
    ret c                                         ; $66aa: $d8

    nop                                           ; $66ab: $00
    rst $38                                       ; $66ac: $ff
    rst $38                                       ; $66ad: $ff
    nop                                           ; $66ae: $00
    ld d, a                                       ; $66af: $57
    ld a, b                                       ; $66b0: $78
    rlc b                                         ; $66b1: $cb $00
    reti                                          ; $66b3: $d9


    nop                                           ; $66b4: $00
    call rPuzzleGridWidth                         ; $66b5: $cd $00 $d8
    nop                                           ; $66b8: $00
    push bc                                       ; $66b9: $c5
    nop                                           ; $66ba: $00
    sub $00                                       ; $66bb: $d6 $00
    rst $38                                       ; $66bd: $ff
    rst $38                                       ; $66be: $ff
    nop                                           ; $66bf: $00
    ld e, b                                       ; $66c0: $58
    ld a, b                                       ; $66c1: $78
    rst $10                                       ; $66c2: $d7
    nop                                           ; $66c3: $00
    call nc, $cd00                                ; $66c4: $d4 $00 $cd
    nop                                           ; $66c7: $00
    ret z                                         ; $66c8: $c8

    nop                                           ; $66c9: $00
    ret                                           ; $66ca: $c9


    nop                                           ; $66cb: $00
    sub $00                                       ; $66cc: $d6 $00
    rst $38                                       ; $66ce: $ff
    rst $38                                       ; $66cf: $ff
    nop                                           ; $66d0: $00
    ld d, l                                       ; $66d1: $55
    ld a, b                                       ; $66d2: $78
    call nc, $c900                                ; $66d3: $d4 $00 $c9
    nop                                           ; $66d6: $00
    ret nc                                        ; $66d7: $d0

    nop                                           ; $66d8: $00
    call $c700                                    ; $66d9: $cd $00 $c7
    nop                                           ; $66dc: $00
    push bc                                       ; $66dd: $c5
    nop                                           ; $66de: $00
    jp nc, rP1                                    ; $66df: $d2 $00 $ff

    rst $38                                       ; $66e2: $ff
    nop                                           ; $66e3: $00
    ld c, [hl]                                    ; $66e4: $4e
    ld a, b                                       ; $66e5: $78
    ret z                                         ; $66e6: $c8

    nop                                           ; $66e7: $00
    sub $00                                       ; $66e8: $d6 $00
    push bc                                       ; $66ea: $c5
    nop                                           ; $66eb: $00
    rlc b                                         ; $66ec: $cb $00
    db $d3                                        ; $66ee: $d3
    nop                                           ; $66ef: $00
    jp nc, $ca00                                  ; $66f0: $d2 $00 $ca

    nop                                           ; $66f3: $00
    ret nc                                        ; $66f4: $d0

    nop                                           ; $66f5: $00
    db $dd                                        ; $66f6: $dd
    nop                                           ; $66f7: $00
    rst $38                                       ; $66f8: $ff
    rst $38                                       ; $66f9: $ff
    nop                                           ; $66fa: $00
    ld d, b                                       ; $66fb: $50
    ld a, b                                       ; $66fc: $78
    db $db                                        ; $66fd: $db
    nop                                           ; $66fe: $00
    call $d000                                    ; $66ff: $cd $00 $d0
    nop                                           ; $6702: $00
    ret z                                         ; $6703: $c8

    nop                                           ; $6704: $00
    rst RST_18                                    ; $6705: $df
    nop                                           ; $6706: $00
    add $00                                       ; $6707: $c6 $00
    db $d3                                        ; $6709: $d3
    nop                                           ; $670a: $00
    push bc                                       ; $670b: $c5
    nop                                           ; $670c: $00
    sub $00                                       ; $670d: $d6 $00
    rst $38                                       ; $670f: $ff
    rst $38                                       ; $6710: $ff
    nop                                           ; $6711: $00
    ld d, a                                       ; $6712: $57
    ld a, b                                       ; $6713: $78
    add $00                                       ; $6714: $c6 $00
    ret                                           ; $6716: $c9


    nop                                           ; $6717: $00
    ret                                           ; $6718: $c9


    nop                                           ; $6719: $00
    ret c                                         ; $671a: $d8

    nop                                           ; $671b: $00
    ret nc                                        ; $671c: $d0

    nop                                           ; $671d: $00
    ret                                           ; $671e: $c9


    nop                                           ; $671f: $00
    rst $38                                       ; $6720: $ff
    rst $38                                       ; $6721: $ff
    nop                                           ; $6722: $00
    ld e, l                                       ; $6723: $5d
    ld a, b                                       ; $6724: $78
    rst $10                                       ; $6725: $d7
    nop                                           ; $6726: $00
    ret                                           ; $6727: $c9


    nop                                           ; $6728: $00
    push bc                                       ; $6729: $c5
    nop                                           ; $672a: $00
    ret nc                                        ; $672b: $d0

    nop                                           ; $672c: $00
    rst $38                                       ; $672d: $ff
    rst $38                                       ; $672e: $ff
    nop                                           ; $672f: $00
    ld e, [hl]                                    ; $6730: $5e
    ld a, b                                       ; $6731: $78
    rst RST_08                                    ; $6732: $cf
    nop                                           ; $6733: $00
    call rPuzzleGridWidth                         ; $6734: $cd $00 $d8
    nop                                           ; $6737: $00
    ret                                           ; $6738: $c9


    nop                                           ; $6739: $00
    rst $38                                       ; $673a: $ff
    rst $38                                       ; $673b: $ff
    nop                                           ; $673c: $00
    ld c, a                                       ; $673d: $4f
    ld a, b                                       ; $673e: $78
    push bc                                       ; $673f: $c5
    nop                                           ; $6740: $00
    sub $00                                       ; $6741: $d6 $00
    pop de                                        ; $6743: $d1
    nop                                           ; $6744: $00
    push bc                                       ; $6745: $c5
    nop                                           ; $6746: $00
    ret z                                         ; $6747: $c8

    nop                                           ; $6748: $00
    call $d000                                    ; $6749: $cd $00 $d0
    nop                                           ; $674c: $00
    ret nc                                        ; $674d: $d0

    nop                                           ; $674e: $00
    db $d3                                        ; $674f: $d3
    nop                                           ; $6750: $00
    rst $38                                       ; $6751: $ff
    rst $38                                       ; $6752: $ff
    nop                                           ; $6753: $00
    ld e, d                                       ; $6754: $5a
    ld a, b                                       ; $6755: $78
    db $db                                        ; $6756: $db
    nop                                           ; $6757: $00
    call rPuzzleGridWidth                         ; $6758: $cd $00 $d8
    nop                                           ; $675b: $00
    rst RST_00                                    ; $675c: $c7
    nop                                           ; $675d: $00
    call z, rP1                                   ; $675e: $cc $00 $ff
    rst $38                                       ; $6761: $ff
    nop                                           ; $6762: $00
    ld e, a                                       ; $6763: $5f
    ld a, b                                       ; $6764: $78
    add $00                                       ; $6765: $c6 $00
    db $d3                                        ; $6767: $d3
    nop                                           ; $6768: $00
    db $db                                        ; $6769: $db
    nop                                           ; $676a: $00
    rst $38                                       ; $676b: $ff
    rst $38                                       ; $676c: $ff
    nop                                           ; $676d: $00
    ld e, [hl]                                    ; $676e: $5e
    ld l, a                                       ; $676f: $6f
    or a                                          ; $6770: $b7
    nop                                           ; $6771: $00
    push bc                                       ; $6772: $c5
    nop                                           ; $6773: $00
    jp nc, rP1                                    ; $6774: $d2 $00 $ff

    rst $38                                       ; $6777: $ff
    ld h, h                                       ; $6778: $64
    ld a, b                                       ; $6779: $78
    call $d200                                    ; $677a: $cd $00 $d2
    nop                                           ; $677d: $00
    rst $38                                       ; $677e: $ff
    rst $38                                       ; $677f: $ff
    ld d, c                                       ; $6780: $51
    add c                                         ; $6781: $81
    ret c                                         ; $6782: $d8

    nop                                           ; $6783: $00
    call z, $c900                                 ; $6784: $cc $00 $c9
    nop                                           ; $6787: $00
    rst RST_18                                    ; $6788: $df
    nop                                           ; $6789: $00
    pop de                                        ; $678a: $d1
    nop                                           ; $678b: $00
    db $d3                                        ; $678c: $d3
    nop                                           ; $678d: $00
    db $d3                                        ; $678e: $d3
    nop                                           ; $678f: $00
    jp nc, rP1                                    ; $6790: $d2 $00 $ff

    rst $38                                       ; $6793: $ff
    nop                                           ; $6794: $00
    ld c, c                                       ; $6795: $49
    ld a, b                                       ; $6796: $78
    push bc                                       ; $6797: $c5
    nop                                           ; $6798: $00
    ret nc                                        ; $6799: $d0

    nop                                           ; $679a: $00
    push bc                                       ; $679b: $c5
    nop                                           ; $679c: $00
    sub $00                                       ; $679d: $d6 $00
    pop de                                        ; $679f: $d1
    nop                                           ; $67a0: $00
    rst RST_18                                    ; $67a1: $df
    nop                                           ; $67a2: $00
    rst RST_00                                    ; $67a3: $c7
    nop                                           ; $67a4: $00
    ret nc                                        ; $67a5: $d0

    nop                                           ; $67a6: $00
    db $d3                                        ; $67a7: $d3
    nop                                           ; $67a8: $00
    rst RST_00                                    ; $67a9: $c7
    nop                                           ; $67aa: $00
    rst RST_08                                    ; $67ab: $cf
    nop                                           ; $67ac: $00
    rst $38                                       ; $67ad: $ff
    rst $38                                       ; $67ae: $ff
    nop                                           ; $67af: $00
    ld c, b                                       ; $67b0: $48
    ld a, b                                       ; $67b1: $78
    db $db                                        ; $67b2: $db
    nop                                           ; $67b3: $00
    push bc                                       ; $67b4: $c5
    nop                                           ; $67b5: $00
    ret c                                         ; $67b6: $d8

    nop                                           ; $67b7: $00
    ret                                           ; $67b8: $c9


    nop                                           ; $67b9: $00
    sub $00                                       ; $67ba: $d6 $00
    rst RST_18                                    ; $67bc: $df
    nop                                           ; $67bd: $00
    pop de                                        ; $67be: $d1
    nop                                           ; $67bf: $00
    ret                                           ; $67c0: $c9


    nop                                           ; $67c1: $00
    ret nc                                        ; $67c2: $d0

    nop                                           ; $67c3: $00
    db $d3                                        ; $67c4: $d3
    nop                                           ; $67c5: $00
    jp nc, rP1                                    ; $67c6: $d2 $00 $ff

    rst $38                                       ; $67c9: $ff
    nop                                           ; $67ca: $00
    ld c, l                                       ; $67cb: $4d
    ld a, b                                       ; $67cc: $78
    rst $10                                       ; $67cd: $d7
    nop                                           ; $67ce: $00
    ret c                                         ; $67cf: $d8

    nop                                           ; $67d0: $00
    sub $00                                       ; $67d1: $d6 $00
    push bc                                       ; $67d3: $c5
    nop                                           ; $67d4: $00
    db $db                                        ; $67d5: $db
    nop                                           ; $67d6: $00
    rst RST_18                                    ; $67d7: $df
    nop                                           ; $67d8: $00
    call z, $c500                                 ; $67d9: $cc $00 $c5
    nop                                           ; $67dc: $00
    ret c                                         ; $67dd: $d8

    nop                                           ; $67de: $00
    rst $38                                       ; $67df: $ff
    rst $38                                       ; $67e0: $ff
    nop                                           ; $67e1: $00
    ld d, [hl]                                    ; $67e2: $56
    ld a, b                                       ; $67e3: $78
    sub $00                                       ; $67e4: $d6 $00
    db $d3                                        ; $67e6: $d3
    nop                                           ; $67e7: $00
    rst RST_00                                    ; $67e8: $c7
    nop                                           ; $67e9: $00
    rst RST_08                                    ; $67ea: $cf
    nop                                           ; $67eb: $00
    ret                                           ; $67ec: $c9


    nop                                           ; $67ed: $00
    ret c                                         ; $67ee: $d8

    nop                                           ; $67ef: $00
    rst $38                                       ; $67f0: $ff
    rst $38                                       ; $67f1: $ff
    nop                                           ; $67f2: $00
    ld d, a                                       ; $67f3: $57
    ld a, b                                       ; $67f4: $78
    sub $00                                       ; $67f5: $d6 $00
    push bc                                       ; $67f7: $c5
    nop                                           ; $67f8: $00
    add $00                                       ; $67f9: $c6 $00
    add $00                                       ; $67fb: $c6 $00
    call rPuzzleGridWidth                         ; $67fd: $cd $00 $d8
    nop                                           ; $6800: $00
    rst $38                                       ; $6801: $ff
    rst $38                                       ; $6802: $ff
    nop                                           ; $6803: $00
    ld e, [hl]                                    ; $6804: $5e
    ld a, b                                       ; $6805: $78
    add $00                                       ; $6806: $c6 $00
    call $d600                                    ; $6808: $cd $00 $d6
    nop                                           ; $680b: $00
    ret z                                         ; $680c: $c8

    nop                                           ; $680d: $00
    rst $38                                       ; $680e: $ff
    rst $38                                       ; $680f: $ff
    nop                                           ; $6810: $00
    ld d, l                                       ; $6811: $55
    ld a, b                                       ; $6812: $78
    add $00                                       ; $6813: $c6 $00
    push bc                                       ; $6815: $c5
    nop                                           ; $6816: $00
    jp nc, $c500                                  ; $6817: $d2 $00 $c5

    nop                                           ; $681a: $00
    jp nc, $c500                                  ; $681b: $d2 $00 $c5

    nop                                           ; $681e: $00
    rst $38                                       ; $681f: $ff
    rst $38                                       ; $6820: $ff
    nop                                           ; $6821: $00
    ld e, h                                       ; $6822: $5c
    ld a, b                                       ; $6823: $78
    rst RST_00                                    ; $6824: $c7
    nop                                           ; $6825: $00
    db $d3                                        ; $6826: $d3
    nop                                           ; $6827: $00
    sub $00                                       ; $6828: $d6 $00
    jp nc, rP1                                    ; $682a: $d2 $00 $ff

    rst $38                                       ; $682d: $ff
    nop                                           ; $682e: $00
    ld d, l                                       ; $682f: $55
    ld a, b                                       ; $6830: $78
    db $d3                                        ; $6831: $d3
    nop                                           ; $6832: $00
    rst $10                                       ; $6833: $d7
    nop                                           ; $6834: $00
    ret c                                         ; $6835: $d8

    nop                                           ; $6836: $00
    sub $00                                       ; $6837: $d6 $00
    call $c700                                    ; $6839: $cd $00 $c7
    nop                                           ; $683c: $00
    call z, rP1                                   ; $683d: $cc $00 $ff
    rst $38                                       ; $6840: $ff
    nop                                           ; $6841: $00
    ld c, h                                       ; $6842: $4c
    ld [hl], e                                    ; $6843: $73
    cp [hl]                                       ; $6844: $be
    nop                                           ; $6845: $00
    xor a                                         ; $6846: $af
    nop                                           ; $6847: $00
    cp h                                          ; $6848: $bc
    nop                                           ; $6849: $00
    cp a                                          ; $684a: $bf
    nop                                           ; $684b: $00
    cp [hl]                                       ; $684c: $be
    nop                                           ; $684d: $00
    xor a                                         ; $684e: $af
    nop                                           ; $684f: $00
    cp h                                          ; $6850: $bc
    nop                                           ; $6851: $00
    cp a                                          ; $6852: $bf
    nop                                           ; $6853: $00
    rst $38                                       ; $6854: $ff
    rst $38                                       ; $6855: $ff
    ld d, a                                       ; $6856: $57
    ld a, h                                       ; $6857: $7c
    xor h                                         ; $6858: $ac
    nop                                           ; $6859: $00
    cp c                                          ; $685a: $b9
    nop                                           ; $685b: $00
    cp a                                          ; $685c: $bf
    nop                                           ; $685d: $00
    call nz, $bf00                                ; $685e: $c4 $00 $bf
    nop                                           ; $6861: $00
    rst $38                                       ; $6862: $ff
    rst $38                                       ; $6863: $ff
    nop                                           ; $6864: $00
    ld c, a                                       ; $6865: $4f
    ld a, b                                       ; $6866: $78
    call nc, $cd00                                ; $6867: $d4 $00 $cd
    nop                                           ; $686a: $00
    jp nc, $c900                                  ; $686b: $d2 $00 $c9

    nop                                           ; $686e: $00
    push bc                                       ; $686f: $c5
    nop                                           ; $6870: $00
    call nc, $d400                                ; $6871: $d4 $00 $d4
    nop                                           ; $6874: $00
    ret nc                                        ; $6875: $d0

    nop                                           ; $6876: $00
    ret                                           ; $6877: $c9


    nop                                           ; $6878: $00
    rst $38                                       ; $6879: $ff
    rst $38                                       ; $687a: $ff
    nop                                           ; $687b: $00
    ld d, e                                       ; $687c: $53
    ld a, b                                       ; $687d: $78
    jp z, $c900                                   ; $687e: $ca $00 $c9

    nop                                           ; $6881: $00
    push bc                                       ; $6882: $c5
    nop                                           ; $6883: $00
    ret c                                         ; $6884: $d8

    nop                                           ; $6885: $00
    call z, $c900                                 ; $6886: $cc $00 $c9
    nop                                           ; $6889: $00
    sub $00                                       ; $688a: $d6 $00
    rst $38                                       ; $688c: $ff
    rst $38                                       ; $688d: $ff
    nop                                           ; $688e: $00
    ld e, c                                       ; $688f: $59
    ld a, b                                       ; $6890: $78
    pop de                                        ; $6891: $d1
    nop                                           ; $6892: $00
    db $d3                                        ; $6893: $d3
    nop                                           ; $6894: $00
    reti                                          ; $6895: $d9


    nop                                           ; $6896: $00
    rst $10                                       ; $6897: $d7
    nop                                           ; $6898: $00
    ret                                           ; $6899: $c9


    nop                                           ; $689a: $00
    rst $38                                       ; $689b: $ff
    rst $38                                       ; $689c: $ff
    nop                                           ; $689d: $00
    ld d, b                                       ; $689e: $50
    ld a, b                                       ; $689f: $78
    xor h                                         ; $68a0: $ac
    nop                                           ; $68a1: $00
    or [hl]                                       ; $68a2: $b6
    nop                                           ; $68a3: $00
    cp c                                          ; $68a4: $b9
    nop                                           ; $68a5: $00
    cp c                                          ; $68a6: $b9
    nop                                           ; $68a7: $00
    cp d                                          ; $68a8: $ba
    nop                                           ; $68a9: $00
    xor a                                         ; $68aa: $af
    nop                                           ; $68ab: $00
    cp h                                          ; $68ac: $bc
    nop                                           ; $68ad: $00
    rst $38                                       ; $68ae: $ff
    rst $38                                       ; $68af: $ff
    nop                                           ; $68b0: $00
    ld e, [hl]                                    ; $68b1: $5e
    ld a, b                                       ; $68b2: $78
    jp z, $cd00                                   ; $68b3: $ca $00 $cd

    nop                                           ; $68b6: $00
    rst $10                                       ; $68b7: $d7
    nop                                           ; $68b8: $00
    call z, rP1                                   ; $68b9: $cc $00 $ff
    rst $38                                       ; $68bc: $ff
    nop                                           ; $68bd: $00
    ld d, [hl]                                    ; $68be: $56
    ld a, b                                       ; $68bf: $78
    pop de                                        ; $68c0: $d1
    nop                                           ; $68c1: $00
    db $d3                                        ; $68c2: $d3
    nop                                           ; $68c3: $00
    jp nc, $cf00                                  ; $68c4: $d2 $00 $cf

    nop                                           ; $68c7: $00
    ret                                           ; $68c8: $c9


    nop                                           ; $68c9: $00
    db $dd                                        ; $68ca: $dd
    nop                                           ; $68cb: $00
    rst $38                                       ; $68cc: $ff
    rst $38                                       ; $68cd: $ff
    nop                                           ; $68ce: $00
    ld e, [hl]                                    ; $68cf: $5e
    ld a, b                                       ; $68d0: $78
    ret z                                         ; $68d1: $c8

    nop                                           ; $68d2: $00
    call $d600                                    ; $68d3: $cd $00 $d6
    nop                                           ; $68d6: $00
    rst RST_08                                    ; $68d7: $cf
    nop                                           ; $68d8: $00
    rst $38                                       ; $68d9: $ff
    rst $38                                       ; $68da: $ff
    nop                                           ; $68db: $00
    ld d, h                                       ; $68dc: $54
    ld [hl], e                                    ; $68dd: $73
    xor h                                         ; $68de: $ac
    nop                                           ; $68df: $00
    cp a                                          ; $68e0: $bf
    nop                                           ; $68e1: $00
    call nz, $c400                                ; $68e2: $c4 $00 $c4
    nop                                           ; $68e5: $00
    jp $f000                                      ; $68e6: $c3 $00 $f0


    nop                                           ; $68e9: $00
    rst $38                                       ; $68ea: $ff
    rst $38                                       ; $68eb: $ff
    ld d, e                                       ; $68ec: $53
    ld a, h                                       ; $68ed: $7c
    xor h                                         ; $68ee: $ac
    nop                                           ; $68ef: $00
    xor a                                         ; $68f0: $af
    nop                                           ; $68f1: $00
    xor a                                         ; $68f2: $af
    nop                                           ; $68f3: $00
    cp [hl]                                       ; $68f4: $be
    nop                                           ; $68f5: $00
    or [hl]                                       ; $68f6: $b6
    nop                                           ; $68f7: $00
    xor a                                         ; $68f8: $af
    nop                                           ; $68f9: $00
    rst $38                                       ; $68fa: $ff
    rst $38                                       ; $68fb: $ff
    nop                                           ; $68fc: $00
    ld e, a                                       ; $68fd: $5f
    ld a, b                                       ; $68fe: $78
    add $00                                       ; $68ff: $c6 $00
    ret                                           ; $6901: $c9


    nop                                           ; $6902: $00
    ret                                           ; $6903: $c9


    nop                                           ; $6904: $00
    rst $38                                       ; $6905: $ff
    rst $38                                       ; $6906: $ff
    nop                                           ; $6907: $00
    ld e, a                                       ; $6908: $5f
    ld a, b                                       ; $6909: $78
    rst RST_00                                    ; $690a: $c7
    nop                                           ; $690b: $00
    push bc                                       ; $690c: $c5
    nop                                           ; $690d: $00
    ret c                                         ; $690e: $d8

    nop                                           ; $690f: $00
    rst $38                                       ; $6910: $ff
    rst $38                                       ; $6911: $ff
    nop                                           ; $6912: $00
    ld d, a                                       ; $6913: $57
    ld [hl], e                                    ; $6914: $73
    or l                                          ; $6915: $b5
    nop                                           ; $6916: $00
    cp c                                          ; $6917: $b9
    nop                                           ; $6918: $00
    cp c                                          ; $6919: $b9
    nop                                           ; $691a: $00
    cp d                                          ; $691b: $ba
    nop                                           ; $691c: $00
    xor e                                         ; $691d: $ab
    nop                                           ; $691e: $00
    rst $38                                       ; $691f: $ff
    rst $38                                       ; $6920: $ff
    ld d, b                                       ; $6921: $50
    ld a, h                                       ; $6922: $7c
    cp [hl]                                       ; $6923: $be
    nop                                           ; $6924: $00
    cp h                                          ; $6925: $bc
    nop                                           ; $6926: $00
    cp c                                          ; $6927: $b9
    nop                                           ; $6928: $00
    cp c                                          ; $6929: $b9
    nop                                           ; $692a: $00
    cp d                                          ; $692b: $ba
    nop                                           ; $692c: $00
    xor e                                         ; $692d: $ab
    nop                                           ; $692e: $00
    cp l                                          ; $692f: $bd
    nop                                           ; $6930: $00
    rst $38                                       ; $6931: $ff
    rst $38                                       ; $6932: $ff
    nop                                           ; $6933: $00
    ld e, c                                       ; $6934: $59
    ld a, b                                       ; $6935: $78
    rst RST_00                                    ; $6936: $c7
    nop                                           ; $6937: $00
    push bc                                       ; $6938: $c5
    nop                                           ; $6939: $00
    jp nc, $c800                                  ; $693a: $d2 $00 $c8

    nop                                           ; $693d: $00
    db $dd                                        ; $693e: $dd
    nop                                           ; $693f: $00
    rst $38                                       ; $6940: $ff
    rst $38                                       ; $6941: $ff
    nop                                           ; $6942: $00
    ld e, c                                       ; $6943: $59
    ld a, b                                       ; $6944: $78
    rst RST_00                                    ; $6945: $c7
    nop                                           ; $6946: $00
    sub $00                                       ; $6947: $d6 $00
    push bc                                       ; $6949: $c5
    nop                                           ; $694a: $00
    jp nc, $c900                                  ; $694b: $d2 $00 $c9

    nop                                           ; $694e: $00
    rst $38                                       ; $694f: $ff
    rst $38                                       ; $6950: $ff
    nop                                           ; $6951: $00
    ld e, [hl]                                    ; $6952: $5e
    ld a, b                                       ; $6953: $78
    sub $00                                       ; $6954: $d6 $00
    push bc                                       ; $6956: $c5
    nop                                           ; $6957: $00
    pop de                                        ; $6958: $d1
    nop                                           ; $6959: $00
    rst $38                                       ; $695a: $ff
    rst $38                                       ; $695b: $ff
    nop                                           ; $695c: $00
    ld d, h                                       ; $695d: $54
    ld a, b                                       ; $695e: $78
    rlc b                                         ; $695f: $cb $00
    call $d600                                    ; $6961: $cd $00 $d6
    nop                                           ; $6964: $00
    push bc                                       ; $6965: $c5
    nop                                           ; $6966: $00
    jp z, $ca00                                   ; $6967: $ca $00 $ca

    nop                                           ; $696a: $00
    ret                                           ; $696b: $c9


    nop                                           ; $696c: $00
    rst $38                                       ; $696d: $ff
    rst $38                                       ; $696e: $ff
    nop                                           ; $696f: $00
    ld d, d                                       ; $6970: $52
    ld a, b                                       ; $6971: $78
    rst $10                                       ; $6972: $d7
    nop                                           ; $6973: $00
    rst RST_00                                    ; $6974: $c7
    nop                                           ; $6975: $00
    db $d3                                        ; $6976: $d3
    nop                                           ; $6977: $00
    sub $00                                       ; $6978: $d6 $00
    call nc, $cd00                                ; $697a: $d4 $00 $cd
    nop                                           ; $697d: $00
    db $d3                                        ; $697e: $d3
    nop                                           ; $697f: $00
    jp nc, rP1                                    ; $6980: $d2 $00 $ff

    rst $38                                       ; $6983: $ff
    nop                                           ; $6984: $00
    ld c, a                                       ; $6985: $4f
    ld a, b                                       ; $6986: $78
    rst RST_08                                    ; $6987: $cf
    nop                                           ; $6988: $00
    push bc                                       ; $6989: $c5
    nop                                           ; $698a: $00
    jp nc, $cb00                                  ; $698b: $d2 $00 $cb

    nop                                           ; $698e: $00
    push bc                                       ; $698f: $c5
    nop                                           ; $6990: $00
    sub $00                                       ; $6991: $d6 $00
    db $d3                                        ; $6993: $d3
    nop                                           ; $6994: $00
    db $d3                                        ; $6995: $d3
    nop                                           ; $6996: $00
    rst $38                                       ; $6997: $ff
    rst $38                                       ; $6998: $ff
    nop                                           ; $6999: $00
    ld h, c                                       ; $699a: $61
    ld a, b                                       ; $699b: $78
    call nc, $cd00                                ; $699c: $d4 $00 $cd
    nop                                           ; $699f: $00
    rlc b                                         ; $69a0: $cb $00
    rst $38                                       ; $69a2: $ff
    rst $38                                       ; $69a3: $ff
    nop                                           ; $69a4: $00
    ld e, d                                       ; $69a5: $5a
    ld [hl], e                                    ; $69a6: $73
    db $db                                        ; $69a7: $db
    nop                                           ; $69a8: $00
    call z, $cd00                                 ; $69a9: $cc $00 $cd
    nop                                           ; $69ac: $00
    ret c                                         ; $69ad: $d8

    nop                                           ; $69ae: $00
    ret                                           ; $69af: $c9


    nop                                           ; $69b0: $00
    rst $38                                       ; $69b1: $ff
    rst $38                                       ; $69b2: $ff
    ld e, a                                       ; $69b3: $5f
    ld a, h                                       ; $69b4: $7c
    ret nc                                        ; $69b5: $d0

    nop                                           ; $69b6: $00
    call $d300                                    ; $69b7: $cd $00 $d3
    nop                                           ; $69ba: $00
    jp nc, rP1                                    ; $69bb: $d2 $00 $ff

    rst $38                                       ; $69be: $ff
    nop                                           ; $69bf: $00
    ld e, h                                       ; $69c0: $5c
    ld [hl], e                                    ; $69c1: $73
    rst $10                                       ; $69c2: $d7
    nop                                           ; $69c3: $00
    push bc                                       ; $69c4: $c5
    nop                                           ; $69c5: $00
    rst RST_08                                    ; $69c6: $cf
    nop                                           ; $69c7: $00
    ret                                           ; $69c8: $c9


    nop                                           ; $69c9: $00
    rst $38                                       ; $69ca: $ff
    rst $38                                       ; $69cb: $ff
    ld d, a                                       ; $69cc: $57
    ld a, h                                       ; $69cd: $7c
    add $00                                       ; $69ce: $c6 $00
    db $d3                                        ; $69d0: $d3
    nop                                           ; $69d1: $00
    ret c                                         ; $69d2: $d8

    nop                                           ; $69d3: $00
    ret c                                         ; $69d4: $d8

    nop                                           ; $69d5: $00
    ret nc                                        ; $69d6: $d0

    nop                                           ; $69d7: $00
    ret                                           ; $69d8: $c9


    nop                                           ; $69d9: $00
    rst $38                                       ; $69da: $ff
    rst $38                                       ; $69db: $ff
    nop                                           ; $69dc: $00
    ld d, a                                       ; $69dd: $57
    ld a, b                                       ; $69de: $78
    jp z, $d000                                   ; $69df: $ca $00 $d0

    nop                                           ; $69e2: $00
    db $d3                                        ; $69e3: $d3
    nop                                           ; $69e4: $00
    db $db                                        ; $69e5: $db
    nop                                           ; $69e6: $00
    ret                                           ; $69e7: $c9


    nop                                           ; $69e8: $00
    sub $00                                       ; $69e9: $d6 $00
    rst $38                                       ; $69eb: $ff
    rst $38                                       ; $69ec: $ff
    nop                                           ; $69ed: $00
    ld d, e                                       ; $69ee: $53
    ld [hl], e                                    ; $69ef: $73
    jp z, $d600                                   ; $69f0: $ca $00 $d6

    nop                                           ; $69f3: $00
    call $c900                                    ; $69f4: $cd $00 $c9
    nop                                           ; $69f7: $00
    jp nc, $c800                                  ; $69f8: $d2 $00 $c8

    nop                                           ; $69fb: $00
    ret nc                                        ; $69fc: $d0

    nop                                           ; $69fd: $00
    db $dd                                        ; $69fe: $dd
    nop                                           ; $69ff: $00
    rst $38                                       ; $6a00: $ff
    rst $38                                       ; $6a01: $ff
    ld e, a                                       ; $6a02: $5f
    ld a, h                                       ; $6a03: $7c
    ret z                                         ; $6a04: $c8

    nop                                           ; $6a05: $00
    db $d3                                        ; $6a06: $d3
    nop                                           ; $6a07: $00
    rlc b                                         ; $6a08: $cb $00
    rst $38                                       ; $6a0a: $ff
    rst $38                                       ; $6a0b: $ff
    nop                                           ; $6a0c: $00
    ld d, a                                       ; $6a0d: $57
    ld a, b                                       ; $6a0e: $78
    rst $10                                       ; $6a0f: $d7
    nop                                           ; $6a10: $00
    call z, $d600                                 ; $6a11: $cc $00 $d6
    nop                                           ; $6a14: $00
    call $d100                                    ; $6a15: $cd $00 $d1
    nop                                           ; $6a18: $00
    call nc, rP1                                  ; $6a19: $d4 $00 $ff
    rst $38                                       ; $6a1c: $ff
    nop                                           ; $6a1d: $00
    ld b, l                                       ; $6a1e: $45
    ld a, b                                       ; $6a1f: $78
    call z, $cd00                                 ; $6a20: $cc $00 $cd
    nop                                           ; $6a23: $00
    call nc, $d400                                ; $6a24: $d4 $00 $d4
    nop                                           ; $6a27: $00
    db $d3                                        ; $6a28: $d3
    nop                                           ; $6a29: $00
    call nc, $d300                                ; $6a2a: $d4 $00 $d3
    nop                                           ; $6a2d: $00
    ret c                                         ; $6a2e: $d8

    nop                                           ; $6a2f: $00
    push bc                                       ; $6a30: $c5
    nop                                           ; $6a31: $00
    pop de                                        ; $6a32: $d1
    nop                                           ; $6a33: $00
    reti                                          ; $6a34: $d9


    nop                                           ; $6a35: $00
    rst $10                                       ; $6a36: $d7
    nop                                           ; $6a37: $00
    rst $38                                       ; $6a38: $ff
    rst $38                                       ; $6a39: $ff
    nop                                           ; $6a3a: $00
    ld e, h                                       ; $6a3b: $5c
    ld a, b                                       ; $6a3c: $78
    ret c                                         ; $6a3d: $d8

    nop                                           ; $6a3e: $00
    reti                                          ; $6a3f: $d9


    nop                                           ; $6a40: $00
    ret nc                                        ; $6a41: $d0

    nop                                           ; $6a42: $00
    call $d400                                    ; $6a43: $cd $00 $d4
    nop                                           ; $6a46: $00
    rst $38                                       ; $6a47: $ff
    rst $38                                       ; $6a48: $ff
    nop                                           ; $6a49: $00
    ld c, l                                       ; $6a4a: $4d
    ld a, b                                       ; $6a4b: $78
    rst RST_00                                    ; $6a4c: $c7
    nop                                           ; $6a4d: $00
    ret nc                                        ; $6a4e: $d0

    nop                                           ; $6a4f: $00
    push bc                                       ; $6a50: $c5
    nop                                           ; $6a51: $00
    db $dd                                        ; $6a52: $dd
    nop                                           ; $6a53: $00
    rst RST_18                                    ; $6a54: $df
    nop                                           ; $6a55: $00
    call $d100                                    ; $6a56: $cd $00 $d1
    nop                                           ; $6a59: $00
    push bc                                       ; $6a5a: $c5
    nop                                           ; $6a5b: $00
    rlc b                                         ; $6a5c: $cb $00
    ret                                           ; $6a5e: $c9


    nop                                           ; $6a5f: $00
    rst $38                                       ; $6a60: $ff
    rst $38                                       ; $6a61: $ff
    nop                                           ; $6a62: $00
    ld d, [hl]                                    ; $6a63: $56
    ld [hl], e                                    ; $6a64: $73
    db $db                                        ; $6a65: $db
    nop                                           ; $6a66: $00
    db $d3                                        ; $6a67: $d3
    nop                                           ; $6a68: $00
    db $d3                                        ; $6a69: $d3
    nop                                           ; $6a6a: $00
    ret z                                         ; $6a6b: $c8

    nop                                           ; $6a6c: $00
    ret                                           ; $6a6d: $c9


    nop                                           ; $6a6e: $00
    jp nc, rP1                                    ; $6a6f: $d2 $00 $ff

    rst $38                                       ; $6a72: $ff
    ld e, c                                       ; $6a73: $59
    ld a, h                                       ; $6a74: $7c
    call z, $d300                                 ; $6a75: $cc $00 $d3
    nop                                           ; $6a78: $00
    sub $00                                       ; $6a79: $d6 $00
    rst $10                                       ; $6a7b: $d7
    nop                                           ; $6a7c: $00
    ret                                           ; $6a7d: $c9


    nop                                           ; $6a7e: $00
    rst $38                                       ; $6a7f: $ff
    rst $38                                       ; $6a80: $ff
    nop                                           ; $6a81: $00
    ld e, c                                       ; $6a82: $59
    ld a, b                                       ; $6a83: $78
    rst $10                                       ; $6a84: $d7
    nop                                           ; $6a85: $00
    db $d3                                        ; $6a86: $d3
    nop                                           ; $6a87: $00
    rst RST_00                                    ; $6a88: $c7
    nop                                           ; $6a89: $00
    rst RST_08                                    ; $6a8a: $cf
    nop                                           ; $6a8b: $00
    rst $10                                       ; $6a8c: $d7
    nop                                           ; $6a8d: $00
    rst $38                                       ; $6a8e: $ff
    rst $38                                       ; $6a8f: $ff
    nop                                           ; $6a90: $00
    ld c, [hl]                                    ; $6a91: $4e
    ld a, b                                       ; $6a92: $78
    add $00                                       ; $6a93: $c6 $00
    reti                                          ; $6a95: $d9


    nop                                           ; $6a96: $00
    ret c                                         ; $6a97: $d8

    nop                                           ; $6a98: $00
    ret c                                         ; $6a99: $d8

    nop                                           ; $6a9a: $00
    ret                                           ; $6a9b: $c9


    nop                                           ; $6a9c: $00
    sub $00                                       ; $6a9d: $d6 $00
    jp z, $d000                                   ; $6a9f: $ca $00 $d0

    nop                                           ; $6aa2: $00
    db $dd                                        ; $6aa3: $dd
    nop                                           ; $6aa4: $00
    rst $38                                       ; $6aa5: $ff
    rst $38                                       ; $6aa6: $ff
    nop                                           ; $6aa7: $00
    ld d, d                                       ; $6aa8: $52
    ld a, b                                       ; $6aa9: $78
    ret c                                         ; $6aaa: $d8

    nop                                           ; $6aab: $00
    db $d3                                        ; $6aac: $d3
    nop                                           ; $6aad: $00
    sub $00                                       ; $6aae: $d6 $00
    ret c                                         ; $6ab0: $d8

    nop                                           ; $6ab1: $00
    db $d3                                        ; $6ab2: $d3
    nop                                           ; $6ab3: $00
    call $d700                                    ; $6ab4: $cd $00 $d7
    nop                                           ; $6ab7: $00
    ret                                           ; $6ab8: $c9


    nop                                           ; $6ab9: $00
    rst $38                                       ; $6aba: $ff
    rst $38                                       ; $6abb: $ff
    nop                                           ; $6abc: $00
    ld d, d                                       ; $6abd: $52
    ld a, b                                       ; $6abe: $78
    jp z, $d300                                   ; $6abf: $ca $00 $d3

    nop                                           ; $6ac2: $00
    db $d3                                        ; $6ac3: $d3
    nop                                           ; $6ac4: $00
    ret c                                         ; $6ac5: $d8

    nop                                           ; $6ac6: $00
    add $00                                       ; $6ac7: $c6 $00
    push bc                                       ; $6ac9: $c5
    nop                                           ; $6aca: $00
    ret nc                                        ; $6acb: $d0

    nop                                           ; $6acc: $00
    ret nc                                        ; $6acd: $d0

    nop                                           ; $6ace: $00
    rst $38                                       ; $6acf: $ff
    rst $38                                       ; $6ad0: $ff
    nop                                           ; $6ad1: $00
    ld d, e                                       ; $6ad2: $53
    ld a, b                                       ; $6ad3: $78
    rst $10                                       ; $6ad4: $d7
    nop                                           ; $6ad5: $00
    rst RST_00                                    ; $6ad6: $c7
    nop                                           ; $6ad7: $00
    db $d3                                        ; $6ad8: $d3
    nop                                           ; $6ad9: $00
    db $d3                                        ; $6ada: $d3
    nop                                           ; $6adb: $00
    ret c                                         ; $6adc: $d8

    nop                                           ; $6add: $00
    ret                                           ; $6ade: $c9


    nop                                           ; $6adf: $00
    sub $00                                       ; $6ae0: $d6 $00
    rst $38                                       ; $6ae2: $ff
    rst $38                                       ; $6ae3: $ff
    nop                                           ; $6ae4: $00
    ld e, c                                       ; $6ae5: $59
    ld a, b                                       ; $6ae6: $78
    rst RST_08                                    ; $6ae7: $cf
    nop                                           ; $6ae8: $00
    db $d3                                        ; $6ae9: $d3
    nop                                           ; $6aea: $00
    push bc                                       ; $6aeb: $c5
    nop                                           ; $6aec: $00
    ret nc                                        ; $6aed: $d0

    nop                                           ; $6aee: $00
    push bc                                       ; $6aef: $c5
    nop                                           ; $6af0: $00
    rst $38                                       ; $6af1: $ff
    rst $38                                       ; $6af2: $ff
    nop                                           ; $6af3: $00
    ld e, l                                       ; $6af4: $5d
    ld a, b                                       ; $6af5: $78
    ret nc                                        ; $6af6: $d0

    nop                                           ; $6af7: $00
    db $d3                                        ; $6af8: $d3
    nop                                           ; $6af9: $00
    rst RST_00                                    ; $6afa: $c7
    nop                                           ; $6afb: $00
    rst RST_08                                    ; $6afc: $cf
    nop                                           ; $6afd: $00
    rst $38                                       ; $6afe: $ff
    rst $38                                       ; $6aff: $ff
    nop                                           ; $6b00: $00
    ld e, e                                       ; $6b01: $5b
    ld a, b                                       ; $6b02: $78
    rst RST_00                                    ; $6b03: $c7
    nop                                           ; $6b04: $00
    call z, $cd00                                 ; $6b05: $cc $00 $cd
    nop                                           ; $6b08: $00
    rst RST_00                                    ; $6b09: $c7
    nop                                           ; $6b0a: $00
    rst RST_08                                    ; $6b0b: $cf
    nop                                           ; $6b0c: $00
    rst $38                                       ; $6b0d: $ff
    rst $38                                       ; $6b0e: $ff
    nop                                           ; $6b0f: $00
    ld d, h                                       ; $6b10: $54
    ld [hl], e                                    ; $6b11: $73
    xor l                                         ; $6b12: $ad
    nop                                           ; $6b13: $00
    or d                                          ; $6b14: $b2
    nop                                           ; $6b15: $00
    xor a                                         ; $6b16: $af
    nop                                           ; $6b17: $00
    xor a                                         ; $6b18: $af
    nop                                           ; $6b19: $00
    cp d                                          ; $6b1a: $ba
    nop                                           ; $6b1b: $00
    ldh a, [rP1]                                  ; $6b1c: $f0 $00
    rst $38                                       ; $6b1e: $ff
    rst $38                                       ; $6b1f: $ff
    ld d, e                                       ; $6b20: $53
    ld a, h                                       ; $6b21: $7c
    xor l                                         ; $6b22: $ad
    nop                                           ; $6b23: $00
    or d                                          ; $6b24: $b2
    nop                                           ; $6b25: $00
    xor a                                         ; $6b26: $af
    nop                                           ; $6b27: $00
    xor a                                         ; $6b28: $af
    nop                                           ; $6b29: $00
    cp d                                          ; $6b2a: $ba
    nop                                           ; $6b2b: $00
    cp l                                          ; $6b2c: $bd
    nop                                           ; $6b2d: $00
    rst $38                                       ; $6b2e: $ff
    rst $38                                       ; $6b2f: $ff
    nop                                           ; $6b30: $00
    ld e, c                                       ; $6b31: $59
    ld a, b                                       ; $6b32: $78
    rst $10                                       ; $6b33: $d7
    nop                                           ; $6b34: $00
    jp nc, $c500                                  ; $6b35: $d2 $00 $c5

    nop                                           ; $6b38: $00
    rst RST_08                                    ; $6b39: $cf
    nop                                           ; $6b3a: $00
    ret                                           ; $6b3b: $c9


    nop                                           ; $6b3c: $00
    rst $38                                       ; $6b3d: $ff
    rst $38                                       ; $6b3e: $ff
    nop                                           ; $6b3f: $00
    ld d, b                                       ; $6b40: $50
    ld a, b                                       ; $6b41: $78
    db $db                                        ; $6b42: $db
    nop                                           ; $6b43: $00
    call z, $cd00                                 ; $6b44: $cc $00 $cd
    nop                                           ; $6b47: $00
    ret c                                         ; $6b48: $d8

    nop                                           ; $6b49: $00
    ret                                           ; $6b4a: $c9


    nop                                           ; $6b4b: $00
    rst RST_18                                    ; $6b4c: $df
    nop                                           ; $6b4d: $00
    ret                                           ; $6b4e: $c9


    nop                                           ; $6b4f: $00
    db $dd                                        ; $6b50: $dd
    nop                                           ; $6b51: $00
    ret                                           ; $6b52: $c9


    nop                                           ; $6b53: $00
    rst $38                                       ; $6b54: $ff
    rst $38                                       ; $6b55: $ff
    nop                                           ; $6b56: $00
    ld d, c                                       ; $6b57: $51
    ld a, b                                       ; $6b58: $78
    ret                                           ; $6b59: $c9


    nop                                           ; $6b5a: $00
    ret nc                                        ; $6b5b: $d0

    nop                                           ; $6b5c: $00
    ret                                           ; $6b5d: $c9


    nop                                           ; $6b5e: $00
    call nc, $cc00                                ; $6b5f: $d4 $00 $cc
    nop                                           ; $6b62: $00
    push bc                                       ; $6b63: $c5
    nop                                           ; $6b64: $00
    jp nc, rPuzzleGridWidth                       ; $6b65: $d2 $00 $d8

    nop                                           ; $6b68: $00
    rst $38                                       ; $6b69: $ff
    rst $38                                       ; $6b6a: $ff
    nop                                           ; $6b6b: $00
    ld e, c                                       ; $6b6c: $59
    ld a, b                                       ; $6b6d: $78
    call z, $d300                                 ; $6b6e: $cc $00 $d3
    nop                                           ; $6b71: $00
    sub $00                                       ; $6b72: $d6 $00
    rst $10                                       ; $6b74: $d7
    nop                                           ; $6b75: $00
    ret                                           ; $6b76: $c9


    nop                                           ; $6b77: $00
    rst $38                                       ; $6b78: $ff
    rst $38                                       ; $6b79: $ff
    nop                                           ; $6b7a: $00
    ld d, h                                       ; $6b7b: $54
    ld a, b                                       ; $6b7c: $78
    ret c                                         ; $6b7d: $d8

    nop                                           ; $6b7e: $00
    ret                                           ; $6b7f: $c9


    nop                                           ; $6b80: $00
    push bc                                       ; $6b81: $c5
    nop                                           ; $6b82: $00
    rst RST_18                                    ; $6b83: $df
    nop                                           ; $6b84: $00
    rst RST_00                                    ; $6b85: $c7
    nop                                           ; $6b86: $00
    reti                                          ; $6b87: $d9


    nop                                           ; $6b88: $00
    call nc, rP1                                  ; $6b89: $d4 $00 $ff
    rst $38                                       ; $6b8c: $ff
    nop                                           ; $6b8d: $00
    ld d, e                                       ; $6b8e: $53
    ld a, b                                       ; $6b8f: $78
    call nc, $c900                                ; $6b90: $d4 $00 $c9
    nop                                           ; $6b93: $00
    rlc b                                         ; $6b94: $cb $00
    push bc                                       ; $6b96: $c5
    nop                                           ; $6b97: $00
    rst $10                                       ; $6b98: $d7
    nop                                           ; $6b99: $00
    reti                                          ; $6b9a: $d9


    nop                                           ; $6b9b: $00
    rst $10                                       ; $6b9c: $d7
    nop                                           ; $6b9d: $00
    rst $38                                       ; $6b9e: $ff
    rst $38                                       ; $6b9f: $ff
    nop                                           ; $6ba0: $00
    ld c, h                                       ; $6ba1: $4c
    ld a, b                                       ; $6ba2: $78
    sub $00                                       ; $6ba3: $d6 $00
    call z, $cd00                                 ; $6ba5: $cc $00 $cd
    nop                                           ; $6ba8: $00
    jp nc, $d300                                  ; $6ba9: $d2 $00 $d3

    nop                                           ; $6bac: $00
    rst RST_00                                    ; $6bad: $c7
    nop                                           ; $6bae: $00
    ret                                           ; $6baf: $c9


    nop                                           ; $6bb0: $00
    sub $00                                       ; $6bb1: $d6 $00
    db $d3                                        ; $6bb3: $d3
    nop                                           ; $6bb4: $00
    rst $10                                       ; $6bb5: $d7
    nop                                           ; $6bb6: $00
    rst $38                                       ; $6bb7: $ff
    rst $38                                       ; $6bb8: $ff
    nop                                           ; $6bb9: $00
    ld d, a                                       ; $6bba: $57
    ld a, b                                       ; $6bbb: $78
    push bc                                       ; $6bbc: $c5
    nop                                           ; $6bbd: $00
    jp nc, $cb00                                  ; $6bbe: $d2 $00 $cb

    nop                                           ; $6bc1: $00
    ret nc                                        ; $6bc2: $d0

    nop                                           ; $6bc3: $00
    ret                                           ; $6bc4: $c9


    nop                                           ; $6bc5: $00
    sub $00                                       ; $6bc6: $d6 $00
    rst $38                                       ; $6bc8: $ff
    rst $38                                       ; $6bc9: $ff
    nop                                           ; $6bca: $00
    ld e, [hl]                                    ; $6bcb: $5e
    ld a, b                                       ; $6bcc: $78
    sub $00                                       ; $6bcd: $d6 $00
    call $d200                                    ; $6bcf: $cd $00 $d2
    nop                                           ; $6bd2: $00
    rlc b                                         ; $6bd3: $cb $00
    rst $38                                       ; $6bd5: $ff
    rst $38                                       ; $6bd6: $ff
    nop                                           ; $6bd7: $00
    ld c, d                                       ; $6bd8: $4a
    ld a, b                                       ; $6bd9: $78
    db $db                                        ; $6bda: $db
    nop                                           ; $6bdb: $00
    db $d3                                        ; $6bdc: $d3
    nop                                           ; $6bdd: $00
    db $d3                                        ; $6bde: $d3
    nop                                           ; $6bdf: $00
    ret z                                         ; $6be0: $c8

    nop                                           ; $6be1: $00
    call nc, $c900                                ; $6be2: $d4 $00 $c9
    nop                                           ; $6be5: $00
    rst RST_00                                    ; $6be6: $c7
    nop                                           ; $6be7: $00
    rst RST_08                                    ; $6be8: $cf
    nop                                           ; $6be9: $00
    ret                                           ; $6bea: $c9


    nop                                           ; $6beb: $00
    sub $00                                       ; $6bec: $d6 $00
    rst $38                                       ; $6bee: $ff
    rst $38                                       ; $6bef: $ff
    nop                                           ; $6bf0: $00
    ld c, b                                       ; $6bf1: $48
    ld a, b                                       ; $6bf2: $78
    or c                                          ; $6bf3: $b1
    nop                                           ; $6bf4: $00
    sub $00                                       ; $6bf5: $d6 $00
    call $d100                                    ; $6bf7: $cd $00 $d1
    nop                                           ; $6bfa: $00
    rst RST_18                                    ; $6bfb: $df
    nop                                           ; $6bfc: $00
    cp h                                          ; $6bfd: $bc
    nop                                           ; $6bfe: $00
    ret                                           ; $6bff: $c9


    nop                                           ; $6c00: $00
    push bc                                       ; $6c01: $c5
    nop                                           ; $6c02: $00
    call nc, $c900                                ; $6c03: $d4 $00 $c9
    nop                                           ; $6c06: $00
    sub $00                                       ; $6c07: $d6 $00
    rst $38                                       ; $6c09: $ff
    rst $38                                       ; $6c0a: $ff
    nop                                           ; $6c0b: $00
    ld d, b                                       ; $6c0c: $50
    ld a, b                                       ; $6c0d: $78
    call z, $c900                                 ; $6c0e: $cc $00 $c9
    nop                                           ; $6c11: $00
    ret z                                         ; $6c12: $c8

    nop                                           ; $6c13: $00
    rlc b                                         ; $6c14: $cb $00
    ret                                           ; $6c16: $c9


    nop                                           ; $6c17: $00
    call z, $d300                                 ; $6c18: $cc $00 $d3
    nop                                           ; $6c1b: $00
    rlc b                                         ; $6c1c: $cb $00
    rst $38                                       ; $6c1e: $ff
    rst $38                                       ; $6c1f: $ff
    nop                                           ; $6c20: $00
    ld c, e                                       ; $6c21: $4b
    ld a, b                                       ; $6c22: $78
    ret z                                         ; $6c23: $c8

    nop                                           ; $6c24: $00
    reti                                          ; $6c25: $d9


    nop                                           ; $6c26: $00
    pop de                                        ; $6c27: $d1
    nop                                           ; $6c28: $00
    call nc, $df00                                ; $6c29: $d4 $00 $df
    nop                                           ; $6c2c: $00
    ret c                                         ; $6c2d: $d8

    nop                                           ; $6c2e: $00
    sub $00                                       ; $6c2f: $d6 $00
    reti                                          ; $6c31: $d9


    nop                                           ; $6c32: $00
    rst RST_00                                    ; $6c33: $c7
    nop                                           ; $6c34: $00
    rst RST_08                                    ; $6c35: $cf
    nop                                           ; $6c36: $00
    rst $38                                       ; $6c37: $ff
    rst $38                                       ; $6c38: $ff
    nop                                           ; $6c39: $00
    ld d, e                                       ; $6c3a: $53
    ld a, b                                       ; $6c3b: $78
    add $00                                       ; $6c3c: $c6 $00
    call $f000                                    ; $6c3e: $cd $00 $f0
    nop                                           ; $6c41: $00
    call nc, $d000                                ; $6c42: $d4 $00 $d0
    nop                                           ; $6c45: $00
    push bc                                       ; $6c46: $c5
    nop                                           ; $6c47: $00
    jp nc, $c900                                  ; $6c48: $d2 $00 $c9

    nop                                           ; $6c4b: $00
    rst $38                                       ; $6c4c: $ff
    rst $38                                       ; $6c4d: $ff
    nop                                           ; $6c4e: $00
    ld d, l                                       ; $6c4f: $55
    ld a, b                                       ; $6c50: $78
    rst $10                                       ; $6c51: $d7
    nop                                           ; $6c52: $00
    call z, $c900                                 ; $6c53: $cc $00 $c9
    nop                                           ; $6c56: $00
    sub $00                                       ; $6c57: $d6 $00
    call $ca00                                    ; $6c59: $cd $00 $ca
    nop                                           ; $6c5c: $00
    jp z, rP1                                     ; $6c5d: $ca $00 $ff

    rst $38                                       ; $6c60: $ff
    nop                                           ; $6c61: $00
    nop                                           ; $6c62: $00

OAMSpritePointerTable_Event00::
    db $6f, $6d

OAMSpritePointerTable_Event01::
    db $78, $6d

OAMSpritePointerTable_Event02::
    db $85, $6d

OAMSpritePointerTable_Event03::
    db $8a, $6d

OAMSpritePointerTable_Event04::
    db $93, $6d

OAMSpritePointerTable_Event05::
    db $9c, $6d

OAMSpritePointerTable_Event06::
    db $a5, $6d

OAMSpritePointerTable_Event07::
    db $ae, $6d

OAMSpritePointerTable_Event08::
    db $b7, $6d

OAMSpritePointerTable_Event09::
    db $c0, $6d

OAMSpritePointerTable_Event0a::
    db $c9, $6d

OAMSpritePointerTable_Event0b::
    db $ce, $6d

OAMSpritePointerTable_Event0c::
    db $df, $6d

OAMSpritePointerTable_Event0d::
    db $f0, $6d

OAMSpritePointerTable_Event0e::
    db $01, $6e

OAMSpritePointerTable_Event0f::
    db $22, $6e

OAMSpritePointerTable_Event10::
    db $37, $6e

OAMSpritePointerTable_Event11::
    db $64, $6e

OAMSpritePointerTable_Event12::
    db $a1, $6e

OAMSpritePointerTable_Event13::
    db $de, $6e

OAMSpritePointerTable_Event14::
    db $1b, $6f

OAMSpritePointerTable_Event15::
    db $58, $6f

OAMSpritePointerTable_Event16::
    db $95, $6f

OAMSpritePointerTable_Event17::
    db $ce, $6f

OAMSpritePointerTable_Event18::
    db $03, $70

OAMSpritePointerTable_Event19::
    db $34, $70

OAMSpritePointerTable_Event1a::
    db $65, $70

OAMSpritePointerTable_Event1b::
    db $92, $70

OAMSpritePointerTable_Event1c::
    db $bf, $70

OAMSpritePointerTable_Event1d::
    db $d8, $70

OAMSpritePointerTable_Event1e::
    db $f1, $70

OAMSpritePointerTable_Event1f::
    db $02, $71

OAMSpritePointerTable_Event20::
    db $23, $71

OAMSpritePointerTable_Event21::
    db $34, $71

OAMSpritePointerTable_Event22::
    db $45, $71

OAMSpritePointerTable_Event23::
    db $7e, $71

OAMSpritePointerTable_Event24::
    db $b3, $71

OAMSpritePointerTable_Event25::
    db $e8, $71

OAMSpritePointerTable_Event26::
    db $1d, $72

OAMSpritePointerTable_Event27::
    db $52, $72

OAMSpritePointerTable_Event28::
    db $87, $72

OAMSpritePointerTable_Event29::
    db $b0, $72

OAMSpritePointerTable_Event2a::
    db $d9, $72

OAMSpritePointerTable_Event2b::
    db $fa, $72

OAMSpritePointerTable_Event2c::
    db $ff, $72

OAMSpritePointerTable_Event2d::
    db $04, $73

OAMSpritePointerTable_Event2e::
    db $09, $73

OAMSpritePointerTable_Event2f::
    db $22, $73

OAMSpritePointerTable_Event30::
    db $3b, $73

OAMSpritePointerTable_Event31::
    db $54, $73

OAMSpritePointerTable_Event32::
    db $6d, $73

OAMSpritePointerTable_Event33::
    db $86, $73

OAMSpritePointerTable_Event34::
    db $9f, $73

OAMSpritePointerTable_Event35::
    db $e0, $73

OAMSpritePointerTable_Event36::
    db $21, $74

OAMSpritePointerTable_Event37::
    db $62, $74

OAMSpritePointerTable_Event38::
    db $67, $74

OAMSpritePointerTable_Event39::
    db $6c, $74

OAMSpritePointerTable_Event3a::
    db $71, $74

OAMSpritePointerTable_Event3b::
    db $d2, $74

OAMSpritePointerTable_Event3c::
    db $33, $75

OAMSpritePointerTable_Event3d::
    db $ac, $75

OAMSpritePointerTable_Event3e::
    db $0d, $76

OAMSpritePointerTable_Event3f::
    db $6e, $76

OAMSpritePointerTable_Event40::
    db $af, $76

OAMSpritePointerTable_Event41::
    db $d8, $76

OAMSpritePointerTable_Event42::
    db $01, $77

OAMSpritePointerTable_Event43::
    db $2a, $77

OAMSpritePointerTable_Event44::
    db $4b, $77

OAMSpritePointerTable_Event45::
    db $6c, $77

OAMSpritePointerTable_Event46::
    db $ad, $77

OAMSpritePointerTable_Event47::
    db $ee, $77

OAMSpritePointerTable_Event48::
    db $2f, $78

OAMSpritePointerTable_Event49::
    db $70, $78

OAMSpritePointerTable_Event4a::
    db $b1, $78

OAMSpritePointerTable_Event4b::
    db $f2, $78

OAMSpritePointerTable_Event4c::
    db $0b, $79

OAMSpritePointerTable_Event4d::
    db $1c, $79

OAMSpritePointerTable_Event4e::
    db $3d, $79

OAMSpritePointerTable_Event4f::
    db $5a, $79

OAMSpritePointerTable_Event50::
    db $73, $79

OAMSpritePointerTable_Event51::
    db $9c, $79

OAMSpritePointerTable_Event52::
    db $a1, $79

OAMSpritePointerTable_Event53::
    db $a6, $79

OAMSpritePointerTable_Event54::
    db $ab, $79

OAMSpritePointerTable_Event55::
    db $b0, $79

OAMSpritePointerTable_Event56::
    db $b5, $79

OAMSpritePointerTable_Event57::
    db $ba, $79

OAMSpritePointerTable_Event58::
    db $bf, $79

OAMSpritePointerTable_Event59::
    db $c4, $79

OAMSpritePointerTable_Event5a::
    db $c9, $79

OAMSpritePointerTable_Event5b::
    db $ce, $79

OAMSpritePointerTable_Event5c::
    db $e7, $79

OAMSpritePointerTable_Event5d::
    db $00, $7a

OAMSpritePointerTable_Event5e::
    db $19, $7a

OAMSpritePointerTable_Event5f::
    db $32, $7a

OAMSpritePointerTable_Event60::
    db $4b, $7a

OAMSpritePointerTable_Event61::
    db $5c, $7a

OAMSpritePointerTable_Event62::
    db $6d, $7a

OAMSpritePointerTable_Event63::
    db $7e, $7a

OAMSpritePointerTable_Event64::
    db $83, $7a

OAMSpritePointerTable_Event65::
    db $88, $7a

OAMSpritePointerTable_Event66::
    db $8d, $7a

OAMSpritePointerTable_Event67::
    db $92, $7a

OAMSpritePointerTable_Event68::
    db $97, $7a

OAMSpritePointerTable_Event69::
    db $9c, $7a

OAMSpritePointerTable_Event6a::
    db $a1, $7a

OAMSpritePointerTable_Event6b::
    db $a6, $7a

OAMSpritePointerTable_Event6c::
    db $ab, $7a

OAMSpritePointerTable_Event6d::
    db $b0, $7a

OAMSpritePointerTable_Event6e::
    db $b5, $7a

OAMSpritePointerTable_Event6f::
    db $ba, $7a

OAMSpritePointerTable_Event70::
    db $bf, $7a

OAMSpritePointerTable_Event71::
    db $c4, $7a

OAMSpritePointerTable_Event72::
    db $c9, $7a

OAMSpritePointerTable_Event73::
    db $ce, $7a

OAMSpritePointerTable_Event74::
    db $d3, $7a

OAMSpritePointerTable_Event75::
    db $d8, $7a

OAMSpritePointerTable_Event76::
    db $dd, $7a

OAMSpritePointerTable_Event77::
    db $e2, $7a

OAMSpritePointerTable_Event78::
    db $e7, $7a

OAMSpritePointerTable_Event79::
    db $ec, $7a

OAMSpritePointerTable_Event7a::
    db $f1, $7a

OAMSpritePointerTable_Event7b::
    db $f6, $7a

OAMSpritePointerTable_Event7c::
    db $fb, $7a

OAMSpritePointerTable_Event7d::
    db $00, $7b

OAMSpritePointerTable_Event7e::
    db $05, $7b

OAMSpritePointerTable_Event7f::
    db $0a, $7b

OAMSpritePointerTable_Event80::
    db $0f, $7b

OAMSpritePointerTable_Event81::
    db $14, $7b

OAMSpritePointerTable_Event82::
    db $19, $7b

OAMSpritePointerTable_Event83::
    db $1e, $7b

OAMSpritePointerTable_Event84::
    db $9f, $7b

OAMSpritePointerTable_Event85::
    db $20, $7c

OAMSpriteData_Event00_MarioBlinking_Frame1::
    db $10, $08, $80, $10
    db $10, $10, $81, $10
    db $ff

OAMSpriteData_Event01_MarioBlinking_Frame2::
    db $10, $08, $82, $10
    db $18, $08, $83, $10
    db $10, $10, $84, $10
    db $ff

OAMSpriteData_Event02::
    db $10, $08, $7d, $10
    db $ff

OAMSpriteData_Event03_PositionCursorTop_Frame1::
    db $10, $08, $75, $10
    db $38, $08, $79, $10
    db $ff

OAMSpriteData_Event04_PositionCursorTop_Frame2::
    db $10, $08, $76, $10
    db $38, $08, $7a, $10
    db $ff

OAMSpriteData_Event05_PositionCursorLeft_Frame1::
    db $10, $08, $77, $10
    db $10, $38, $7b, $10
    db $ff

OAMSpriteData_Event06_PositionCursorLeft_Frame2::
    db $10, $08, $78, $10
    db $10, $38, $7c, $10
    db $ff

OAMSpriteData_Event07::
    db $10, $08, $5e, $00
    db $10, $10, $6e, $00
    db $ff

OAMSpriteData_Event08::
    db $10, $08, $5e, $00
    db $10, $10, $5f, $00
    db $ff

OAMSpriteData_Event09::
    db $10, $08, $5e, $00
    db $10, $10, $6f, $00
    db $ff

OAMSpriteData_Event0a::
    db $10, $08, $74, $10
    db $ff

OAMSpriteData_Event0b::
    db $07, $08, $50, $10
    db $07, $10, $51, $10
    db $0f, $08, $60, $10
    db $0f, $10, $61, $10
    db $ff

OAMSpriteData_Event0c::
    db $07, $08, $50, $10
    db $07, $10, $51, $10
    db $0f, $10, $61, $10
    db $0f, $08, $52, $10
    db $ff

OAMSpriteData_Event0d::
    db $07, $08, $50, $10
    db $07, $10, $51, $10
    db $0f, $10, $61, $10
    db $0f, $08, $62, $10
    db $ff

OAMSpriteData_Event0e::
    db $07, $08, $53, $10
    db $0f, $08, $63, $10
    db $04, $1b, $58, $10
    db $04, $23, $59, $10
    db $0f, $10, $64, $10
    db $0c, $1b, $68, $10
    db $07, $10, $54, $10
    db $0c, $23, $69, $10
    db $ff

OAMSpriteData_Event0f::
    db $0f, $08, $63, $10
    db $04, $0d, $5a, $10
    db $04, $15, $5b, $10
    db $0c, $15, $6b, $10
    db $0c, $0d, $6a, $10
    db $ff

OAMSpriteData_Event10::
    db $12, $0d, $66, $10
    db $09, $06, $55, $10
    db $11, $06, $65, $10
    db $0f, $10, $64, $10
    db $07, $08, $53, $10
    db $0f, $08, $63, $10
    db $07, $10, $54, $10
    db $04, $1b, $58, $10
    db $04, $23, $59, $10
    db $0c, $1b, $68, $10
    db $0c, $23, $69, $10
    db $ff

OAMSpriteData_Event11::
    db $09, $fe, $55, $10
    db $17, $ff, $65, $10
    db $17, $0f, $66, $10
    db $17, $07, $67, $10
    db $0f, $ff, $67, $10
    db $0f, $0f, $67, $10
    db $07, $07, $67, $10
    db $07, $08, $53, $10
    db $0f, $08, $63, $10
    db $0f, $10, $64, $10
    db $07, $10, $54, $10
    db $04, $1b, $58, $10
    db $04, $23, $59, $10
    db $0c, $1b, $68, $10
    db $0c, $23, $69, $10
    db $ff

OAMSpriteData_Event12::
    db $0b, $fa, $55, $10
    db $1b, $07, $67, $10
    db $11, $fd, $67, $10
    db $0f, $0f, $67, $10
    db $07, $05, $67, $10
    db $07, $08, $53, $10
    db $07, $10, $54, $10
    db $0f, $08, $63, $10
    db $0f, $10, $64, $10
    db $1b, $13, $55, $10
    db $1b, $fb, $55, $10
    db $04, $1b, $58, $10
    db $04, $23, $59, $10
    db $0c, $1b, $68, $10
    db $0c, $23, $69, $10
    db $ff

OAMSpriteData_Event13::
    db $22, $03, $67, $10
    db $16, $fd, $67, $10
    db $16, $11, $67, $10
    db $12, $fc, $67, $10
    db $1f, $f9, $67, $10
    db $1f, $15, $67, $10
    db $0e, $16, $67, $10
    db $07, $08, $53, $10
    db $0f, $08, $63, $10
    db $0f, $10, $64, $10
    db $07, $10, $54, $10
    db $04, $1b, $58, $10
    db $04, $23, $59, $10
    db $0c, $1b, $68, $10
    db $0c, $23, $69, $10
    db $ff

OAMSpriteData_Event14::
    db $27, $09, $67, $10
    db $1b, $f5, $67, $10
    db $1b, $0f, $67, $10
    db $13, $fa, $67, $10
    db $24, $fb, $67, $10
    db $24, $1b, $67, $10
    db $13, $18, $67, $10
    db $07, $08, $53, $10
    db $0f, $10, $64, $10
    db $07, $10, $54, $10
    db $0f, $08, $63, $10
    db $04, $1b, $58, $10
    db $04, $23, $59, $10
    db $0c, $1b, $68, $10
    db $0c, $23, $69, $10
    db $ff

OAMSpriteData_Event15::
    db $2e, $05, $67, $10
    db $22, $fb, $67, $10
    db $22, $13, $67, $10
    db $2b, $f3, $67, $10
    db $2b, $1b, $67, $10
    db $1a, $1c, $67, $10
    db $17, $11, $67, $10
    db $07, $08, $53, $10
    db $0f, $10, $64, $10
    db $0f, $08, $63, $10
    db $07, $10, $54, $10
    db $04, $1b, $58, $10
    db $04, $23, $59, $10
    db $0c, $1b, $68, $10
    db $0c, $23, $69, $10
    db $ff

OAMSpriteData_Event16::
    db $37, $05, $67, $10
    db $2b, $03, $67, $10
    db $2b, $17, $67, $10
    db $34, $f7, $67, $10
    db $34, $1b, $67, $10
    db $20, $11, $67, $10
    db $07, $08, $53, $10
    db $0f, $10, $64, $10
    db $0f, $08, $63, $10
    db $07, $10, $54, $10
    db $04, $1b, $58, $10
    db $04, $23, $59, $10
    db $0c, $1b, $68, $10
    db $0c, $23, $69, $10
    db $ff

OAMSpriteData_Event17::
    db $36, $ff, $67, $10
    db $36, $0f, $67, $10
    db $3f, $fb, $67, $10
    db $3f, $13, $67, $10
    db $2e, $14, $67, $10
    db $07, $08, $53, $10
    db $07, $10, $54, $10
    db $0f, $08, $63, $10
    db $0f, $10, $64, $10
    db $04, $1b, $58, $10
    db $04, $23, $59, $10
    db $0c, $1b, $68, $10
    db $0c, $23, $69, $10
    db $ff

OAMSpriteData_Event18::
    db $43, $17, $67, $10
    db $4c, $f9, $67, $10
    db $4c, $13, $67, $10
    db $38, $11, $67, $10
    db $07, $08, $53, $10
    db $0f, $10, $64, $10
    db $07, $10, $54, $10
    db $0f, $08, $63, $10
    db $04, $1b, $58, $10
    db $04, $23, $59, $10
    db $0c, $1b, $68, $10
    db $0c, $23, $69, $10
    db $ff

OAMSpriteData_Event19::
    db $52, $fb, $67, $10
    db $52, $0f, $67, $10
    db $5b, $f7, $67, $10
    db $5b, $1b, $67, $10
    db $07, $08, $53, $10
    db $07, $10, $54, $10
    db $0f, $08, $63, $10
    db $0f, $10, $64, $10
    db $04, $1b, $58, $10
    db $04, $23, $59, $10
    db $0c, $1b, $68, $10
    db $0c, $23, $69, $10
    db $ff

OAMSpriteData_Event1a::
    db $6f, $09, $67, $10
    db $6c, $fb, $67, $10
    db $6c, $17, $67, $10
    db $07, $08, $53, $10
    db $07, $10, $54, $10
    db $0f, $08, $63, $10
    db $0f, $10, $64, $10
    db $04, $1b, $58, $10
    db $04, $23, $59, $10
    db $0c, $1b, $68, $10
    db $0c, $23, $69, $10
    db $ff

OAMSpriteData_Event1b::
    db $82, $07, $67, $10
    db $7f, $f7, $67, $10
    db $7f, $17, $67, $10
    db $07, $08, $53, $10
    db $07, $10, $54, $10
    db $0f, $08, $63, $10
    db $0f, $10, $64, $10
    db $04, $1b, $58, $10
    db $04, $23, $59, $10
    db $0c, $1b, $68, $10
    db $0c, $23, $69, $10
    db $ff

OAMSpriteData_Event1c::
    db $0e, $04, $67, $10
    db $15, $0b, $67, $30
    db $08, $09, $53, $10
    db $08, $11, $54, $10
    db $10, $09, $63, $10
    db $10, $11, $64, $10
    db $ff

OAMSpriteData_Event1d::
    db $0f, $02, $67, $30
    db $13, $07, $67, $10
    db $06, $07, $53, $10
    db $06, $0f, $54, $10
    db $0e, $07, $63, $10
    db $0e, $0f, $64, $10
    db $ff

OAMSpriteData_Event1e::
    db $07, $08, $53, $10
    db $07, $10, $54, $10
    db $0f, $08, $63, $10
    db $0f, $10, $64, $10
    db $ff

OAMSpriteData_Event1f::
    db $11, $0e, $64, $10
    db $09, $06, $53, $10
    db $11, $06, $63, $10
    db $09, $0e, $54, $10
    db $04, $1b, $58, $10
    db $04, $23, $59, $10
    db $0c, $1b, $68, $10
    db $0c, $23, $69, $10
    db $ff

OAMSpriteData_Event20::
    db $0e, $06, $3c, $10
    db $0e, $0e, $3d, $10
    db $16, $06, $4c, $10
    db $16, $0e, $4d, $10
    db $ff

OAMSpriteData_Event21::
    db $0b, $09, $3e, $10
    db $0b, $11, $3f, $10
    db $13, $09, $4e, $10
    db $13, $11, $4f, $10
    db $ff

OAMSpriteData_Event22::
    db $07, $08, $53, $10
    db $07, $10, $54, $10
    db $0f, $08, $63, $10
    db $0f, $10, $64, $10
    db $04, $1b, $58, $10
    db $04, $23, $59, $10
    db $0c, $1b, $68, $10
    db $0c, $23, $69, $10
    db $65, $1e, $67, $10
    db $65, $f4, $67, $10
    db $63, $06, $66, $10
    db $60, $2c, $66, $10
    db $5d, $e6, $66, $10
    db $5e, $13, $66, $10
    db $ff

OAMSpriteData_Event23::
    db $07, $08, $53, $10
    db $07, $10, $54, $10
    db $0f, $08, $63, $10
    db $0f, $10, $64, $10
    db $04, $1b, $58, $10
    db $04, $23, $59, $10
    db $0c, $1b, $68, $10
    db $0c, $23, $69, $10
    db $52, $08, $67, $10
    db $5b, $e9, $56, $10
    db $5f, $23, $56, $10
    db $52, $fe, $66, $10
    db $5a, $15, $66, $10
    db $ff

OAMSpriteData_Event24::
    db $07, $08, $53, $10
    db $07, $10, $54, $10
    db $0f, $08, $63, $10
    db $0f, $10, $64, $10
    db $04, $1b, $58, $10
    db $04, $23, $59, $10
    db $0c, $1b, $68, $10
    db $0c, $23, $69, $10
    db $43, $05, $67, $10
    db $59, $23, $56, $10
    db $4f, $16, $66, $10
    db $4a, $fa, $66, $00
    db $56, $ed, $56, $10
    db $ff

OAMSpriteData_Event25::
    db $07, $08, $53, $10
    db $07, $10, $54, $10
    db $0f, $08, $63, $10
    db $0f, $10, $64, $10
    db $04, $1b, $58, $10
    db $04, $23, $59, $10
    db $0c, $1b, $68, $10
    db $0c, $23, $69, $10
    db $26, $08, $67, $10
    db $37, $fb, $66, $10
    db $49, $f0, $66, $10
    db $4c, $24, $66, $10
    db $3b, $17, $56, $10
    db $ff

OAMSpriteData_Event26::
    db $07, $08, $53, $10
    db $07, $10, $54, $10
    db $0f, $08, $63, $10
    db $0f, $10, $64, $10
    db $04, $1b, $58, $10
    db $04, $23, $59, $10
    db $0c, $1b, $68, $10
    db $0c, $23, $69, $10
    db $15, $08, $67, $10
    db $2d, $17, $66, $10
    db $40, $06, $56, $10
    db $1f, $09, $66, $10
    db $2d, $fb, $56, $10
    db $ff

OAMSpriteData_Event27::
    db $07, $08, $53, $10
    db $07, $10, $54, $10
    db $0f, $08, $63, $10
    db $0f, $10, $64, $10
    db $04, $1b, $58, $10
    db $04, $23, $59, $10
    db $0c, $1b, $68, $10
    db $0c, $23, $69, $10
    db $12, $06, $67, $10
    db $1a, $0a, $66, $10
    db $2a, $09, $56, $10
    db $1f, $ff, $66, $10
    db $20, $12, $56, $10
    db $ff

OAMSpriteData_Event28::
    db $07, $08, $53, $10
    db $07, $10, $54, $10
    db $0f, $08, $63, $10
    db $0f, $10, $64, $10
    db $04, $1b, $58, $10
    db $04, $23, $59, $10
    db $0c, $1b, $68, $10
    db $0c, $23, $69, $10
    db $18, $07, $66, $10
    db $21, $08, $66, $10
    db $ff

OAMSpriteData_Event29::
    db $07, $08, $53, $10
    db $07, $10, $54, $10
    db $0f, $08, $63, $10
    db $0f, $10, $64, $10
    db $04, $1b, $58, $10
    db $04, $23, $59, $10
    db $0c, $1b, $68, $10
    db $0c, $23, $69, $10
    db $12, $0a, $66, $10
    db $19, $07, $66, $10
    db $ff

OAMSpriteData_Event2a::
    db $07, $08, $53, $10
    db $0f, $08, $63, $10
    db $0f, $10, $64, $10
    db $07, $10, $54, $10
    db $02, $15, $5c, $10
    db $02, $1d, $5d, $10
    db $0a, $15, $6c, $10
    db $0a, $1d, $6d, $10
    db $ff

OAMSpriteData_Event2b::
    db $10, $08, $04, $10
    db $ff

OAMSpriteData_Event2c::
    db $10, $08, $05, $10
    db $ff

OAMSpriteData_Event2d::
    db $10, $08, $06, $10
    db $ff

OAMSpriteData_Event2e_HighlightNumbersColumn_Frame1::
    db $10, $08, $15, $10
    db $18, $08, $15, $10
    db $20, $08, $15, $10
    db $28, $08, $15, $10
    db $08, $08, $0a, $50
    db $30, $08, $0a, $10
    db $ff

OAMSpriteData_Event2f_HighlightNumbersColumn_Frame2::
    db $10, $08, $16, $10
    db $18, $08, $16, $10
    db $20, $08, $16, $10
    db $28, $08, $16, $10
    db $08, $08, $0b, $50
    db $30, $08, $0b, $10
    db $ff

OAMSpriteData_Event30_HighlightNumbersColumn_Frame3::
    db $10, $08, $17, $10
    db $18, $08, $17, $10
    db $20, $08, $17, $10
    db $28, $08, $17, $10
    db $08, $08, $14, $50
    db $30, $08, $14, $10
    db $ff

OAMSpriteData_Event31_HighlightNumbersRow_Frame1::
    db $10, $20, $18, $10
    db $10, $18, $18, $10
    db $10, $10, $18, $10
    db $10, $08, $18, $10
    db $10, $28, $07, $10
    db $10, $00, $07, $30
    db $ff

OAMSpriteData_Event32_HighlightNumbersRow_Frame2::
    db $10, $08, $19, $10
    db $10, $10, $19, $10
    db $10, $18, $19, $10
    db $10, $20, $19, $10
    db $10, $28, $08, $10
    db $10, $00, $08, $30
    db $ff

OAMSpriteData_Event33_HighlightNumbersRow_Frame3::
    db $10, $08, $1a, $10
    db $10, $10, $1a, $10
    db $10, $18, $1a, $10
    db $10, $20, $1a, $10
    db $10, $28, $09, $10
    db $10, $00, $09, $30
    db $ff

OAMSpriteData_Event34_HighlightNumbers_Frame1::
    db $10, $08, $07, $10
    db $18, $08, $07, $10
    db $20, $08, $07, $10
    db $28, $08, $07, $10
    db $10, $20, $07, $30
    db $18, $20, $07, $30
    db $20, $20, $07, $30
    db $28, $20, $07, $30
    db $30, $08, $0a, $10
    db $30, $10, $0a, $10
    db $30, $18, $0a, $10
    db $30, $20, $0a, $10
    db $08, $08, $0a, $50
    db $08, $10, $0a, $50
    db $08, $18, $0a, $50
    db $08, $20, $0a, $50
    db $ff

OAMSpriteData_Event35_HighlightNumbers_Frame2::
    db $10, $08, $08, $10
    db $18, $08, $08, $10
    db $20, $08, $08, $10
    db $28, $08, $08, $10
    db $10, $20, $08, $30
    db $18, $20, $08, $30
    db $20, $20, $08, $30
    db $28, $20, $08, $30
    db $30, $08, $0b, $10
    db $30, $10, $0b, $10
    db $30, $18, $0b, $10
    db $30, $20, $0b, $10
    db $08, $08, $0b, $50
    db $08, $10, $0b, $50
    db $08, $18, $0b, $50
    db $08, $20, $0b, $50
    db $ff

OAMSpriteData_Event36_HighlightNumbers_Frame3::
    db $10, $08, $09, $10
    db $18, $08, $09, $10
    db $20, $08, $09, $10
    db $28, $08, $09, $10
    db $10, $20, $09, $30
    db $18, $20, $09, $30
    db $20, $20, $09, $30
    db $28, $20, $09, $30
    db $30, $08, $14, $10
    db $30, $10, $14, $10
    db $30, $18, $14, $10
    db $30, $20, $14, $10
    db $08, $08, $14, $50
    db $08, $10, $14, $50
    db $08, $18, $14, $50
    db $08, $20, $14, $50
    db $ff

OAMSpriteData_Event37_AButtonPrompt::
    db $10, $08, $1b, $10
    db $ff

OAMSpriteData_Event38_MessageArrow::
    db $10, $08, $7c, $10
    db $ff

OAMSpriteData_Event39_MarioMouthOpen::
    db $10, $08, $7f, $00
    db $ff

OAMSpriteData_Event3a_WithHintPopUp_Yes::
    db $10, $08, $50, $10
    db $10, $10, $51, $10
    db $10, $18, $52, $10
    db $10, $20, $53, $10
    db $10, $28, $54, $10
    db $10, $30, $55, $10
    db $10, $38, $56, $10
    db $10, $40, $57, $10
    db $18, $18, $5a, $10
    db $18, $20, $5b, $10
    db $18, $28, $5c, $10
    db $18, $30, $5d, $10
    db $18, $38, $5e, $10
    db $18, $40, $5f, $10
    db $20, $18, $62, $10
    db $20, $20, $63, $10
    db $20, $28, $64, $10
    db $20, $30, $65, $10
    db $20, $38, $66, $10
    db $20, $40, $67, $10
    db $18, $08, $68, $10
    db $18, $10, $69, $10
    db $20, $08, $6a, $10
    db $20, $10, $6b, $10
    db $ff

OAMSpriteData_Event3b_WithHintPopUp_No::
    db $10, $08, $50, $10
    db $10, $10, $51, $10
    db $10, $18, $52, $10
    db $10, $20, $53, $10
    db $10, $28, $54, $10
    db $10, $30, $55, $10
    db $10, $38, $56, $10
    db $10, $40, $57, $10
    db $20, $08, $60, $10
    db $20, $10, $61, $10
    db $20, $18, $62, $10
    db $20, $20, $63, $10
    db $20, $38, $66, $10
    db $20, $40, $67, $10
    db $18, $08, $58, $10
    db $18, $10, $59, $10
    db $18, $18, $5a, $10
    db $18, $20, $5b, $10
    db $18, $38, $5e, $10
    db $18, $40, $5f, $10
    db $18, $28, $6c, $10
    db $18, $30, $6d, $10
    db $20, $28, $6e, $10
    db $20, $30, $6f, $10
    db $ff

OAMSpriteData_Event3c::
    db $18, $18, $50, $10
    db $18, $20, $51, $10
    db $18, $28, $52, $10
    db $18, $30, $53, $10
    db $18, $38, $54, $10
    db $10, $40, $5d, $10
    db $18, $40, $6d, $10
    db $20, $40, $6d, $10
    db $28, $40, $6d, $10
    db $30, $40, $7d, $10
    db $10, $18, $5c, $10
    db $10, $20, $5c, $10
    db $10, $28, $5c, $10
    db $10, $30, $5c, $10
    db $10, $38, $5c, $10
    db $30, $18, $7c, $10
    db $30, $20, $7c, $10
    db $30, $28, $7c, $10
    db $30, $30, $7c, $10
    db $30, $38, $7c, $10
    db $20, $18, $70, $10
    db $20, $20, $71, $10
    db $20, $28, $72, $10
    db $20, $30, $73, $10
    db $20, $38, $74, $10
    db $28, $18, $60, $10
    db $28, $28, $61, $10
    db $28, $38, $62, $10
    db $28, $20, $6c, $10
    db $28, $30, $6c, $10
    db $ff

OAMSpriteData_Event3d::
    db $10, $40, $5d, $10
    db $18, $40, $6d, $10
    db $20, $40, $6d, $10
    db $10, $18, $5c, $10
    db $10, $20, $5c, $10
    db $10, $28, $5c, $10
    db $10, $30, $5c, $10
    db $10, $38, $5c, $10
    db $18, $18, $55, $10
    db $18, $20, $56, $10
    db $18, $28, $57, $10
    db $18, $30, $58, $10
    db $18, $38, $59, $10
    db $20, $18, $55, $10
    db $20, $20, $56, $10
    db $20, $28, $57, $10
    db $20, $30, $58, $10
    db $20, $38, $5a, $10
    db $28, $40, $7d, $10
    db $28, $18, $7c, $10
    db $28, $20, $7c, $10
    db $28, $28, $7c, $10
    db $28, $30, $7c, $10
    db $28, $38, $7c, $10
    db $ff

OAMSpriteData_Event3e::
    db $10, $18, $5c, $10
    db $10, $20, $5c, $10
    db $10, $28, $5d, $10
    db $18, $28, $6d, $10
    db $20, $28, $6d, $10
    db $28, $28, $6d, $10
    db $30, $28, $6d, $10
    db $38, $28, $6d, $10
    db $18, $18, $5e, $10
    db $18, $20, $5f, $10
    db $20, $18, $6e, $10
    db $20, $20, $6f, $10
    db $28, $20, $7f, $10
    db $30, $18, $79, $10
    db $30, $20, $7a, $10
    db $28, $18, $78, $10
    db $48, $18, $7c, $10
    db $48, $20, $7c, $10
    db $40, $18, $67, $10
    db $40, $20, $68, $10
    db $40, $28, $6d, $10
    db $48, $28, $7d, $10
    db $38, $18, $69, $10
    db $38, $20, $63, $10
    db $ff

OAMSpriteData_Event3f::
    db $10, $18, $5c, $10
    db $10, $20, $5c, $10
    db $10, $28, $5c, $10
    db $10, $30, $5d, $10
    db $18, $30, $6d, $10
    db $20, $30, $6d, $10
    db $18, $18, $75, $10
    db $18, $20, $76, $10
    db $18, $28, $77, $10
    db $28, $18, $7c, $10
    db $28, $20, $7c, $10
    db $28, $28, $7c, $10
    db $28, $30, $7d, $10
    db $20, $18, $64, $10
    db $20, $20, $65, $10
    db $20, $28, $66, $10
    db $ff

OAMSpriteData_Event40::
    db $18, $10, $6a, $10
    db $20, $10, $6c, $10
    db $28, $10, $6c, $10
    db $10, $08, $5b, $10
    db $10, $10, $5c, $10
    db $18, $08, $6b, $10
    db $20, $08, $6b, $10
    db $28, $08, $6b, $10
    db $30, $08, $7b, $10
    db $30, $10, $7c, $10
    db $ff

OAMSpriteData_Event41::
    db $28, $10, $6c, $10
    db $10, $08, $5b, $10
    db $10, $10, $5c, $10
    db $18, $08, $6b, $10
    db $20, $08, $6b, $10
    db $28, $08, $6b, $10
    db $30, $08, $7b, $10
    db $30, $10, $7c, $10
    db $20, $10, $6a, $10
    db $18, $10, $6c, $10
    db $ff

OAMSpriteData_Event42::
    db $10, $08, $5b, $10
    db $10, $10, $5c, $10
    db $18, $08, $6b, $10
    db $20, $08, $6b, $10
    db $28, $08, $6b, $10
    db $30, $08, $7b, $10
    db $18, $10, $6c, $10
    db $28, $10, $6a, $10
    db $20, $10, $6c, $10
    db $30, $10, $7c, $10
    db $ff

OAMSpriteData_Event43::
    db $10, $08, $5b, $10
    db $18, $08, $6b, $10
    db $20, $08, $6b, $10
    db $10, $10, $5c, $10
    db $28, $08, $7b, $10
    db $28, $10, $7c, $10
    db $20, $10, $6c, $10
    db $18, $10, $6a, $10
    db $ff

OAMSpriteData_Event44::
    db $10, $08, $5b, $10
    db $18, $08, $6b, $10
    db $20, $08, $6b, $10
    db $10, $10, $5c, $10
    db $28, $08, $7b, $10
    db $28, $10, $7c, $10
    db $18, $10, $6c, $10
    db $20, $10, $6a, $10
    db $ff

OAMSpriteData_Event45::
    db $10, $08, $5b, $10
    db $18, $08, $6b, $10
    db $20, $08, $6b, $10
    db $10, $10, $5c, $10
    db $28, $08, $6b, $10
    db $30, $08, $6b, $10
    db $38, $08, $6b, $10
    db $20, $10, $6c, $10
    db $28, $10, $6c, $10
    db $30, $10, $6c, $10
    db $38, $10, $6c, $10
    db $18, $10, $6a, $10
    db $48, $08, $7b, $10
    db $48, $10, $7c, $10
    db $40, $08, $6b, $10
    db $40, $10, $6c, $10
    db $ff

OAMSpriteData_Event46::
    db $10, $08, $5b, $10
    db $18, $08, $6b, $10
    db $20, $08, $6b, $10
    db $10, $10, $5c, $10
    db $28, $08, $6b, $10
    db $30, $08, $6b, $10
    db $38, $08, $6b, $10
    db $28, $10, $6c, $10
    db $30, $10, $6c, $10
    db $38, $10, $6c, $10
    db $48, $08, $7b, $10
    db $48, $10, $7c, $10
    db $40, $08, $6b, $10
    db $40, $10, $6c, $10
    db $20, $10, $6a, $10
    db $18, $10, $6c, $10
    db $ff

OAMSpriteData_Event47::
    db $10, $08, $5b, $10
    db $18, $08, $6b, $10
    db $20, $08, $6b, $10
    db $10, $10, $5c, $10
    db $28, $08, $6b, $10
    db $30, $08, $6b, $10
    db $38, $08, $6b, $10
    db $30, $10, $6c, $10
    db $38, $10, $6c, $10
    db $48, $08, $7b, $10
    db $48, $10, $7c, $10
    db $40, $08, $6b, $10
    db $40, $10, $6c, $10
    db $18, $10, $6c, $10
    db $28, $10, $6a, $10
    db $20, $10, $6c, $10
    db $ff

OAMSpriteData_Event48::
    db $10, $08, $5b, $10
    db $18, $08, $6b, $10
    db $20, $08, $6b, $10
    db $10, $10, $5c, $10
    db $28, $08, $6b, $10
    db $30, $08, $6b, $10
    db $38, $08, $6b, $10
    db $38, $10, $6c, $10
    db $48, $08, $7b, $10
    db $48, $10, $7c, $10
    db $40, $08, $6b, $10
    db $40, $10, $6c, $10
    db $18, $10, $6c, $10
    db $20, $10, $6c, $10
    db $30, $10, $6a, $10
    db $28, $10, $6c, $10
    db $ff

OAMSpriteData_Event49::
    db $10, $08, $5b, $10
    db $18, $08, $6b, $10
    db $20, $08, $6b, $10
    db $10, $10, $5c, $10
    db $28, $08, $6b, $10
    db $30, $08, $6b, $10
    db $38, $08, $6b, $10
    db $48, $08, $7b, $10
    db $48, $10, $7c, $10
    db $40, $08, $6b, $10
    db $40, $10, $6c, $10
    db $18, $10, $6c, $10
    db $20, $10, $6c, $10
    db $28, $10, $6c, $10
    db $38, $10, $6a, $10
    db $30, $10, $6c, $10
    db $ff

OAMSpriteData_Event4a::
    db $10, $08, $5b, $10
    db $18, $08, $6b, $10
    db $20, $08, $6b, $10
    db $10, $10, $5c, $10
    db $28, $08, $6b, $10
    db $30, $08, $6b, $10
    db $38, $08, $6b, $10
    db $48, $08, $7b, $10
    db $48, $10, $7c, $10
    db $40, $08, $6b, $10
    db $18, $10, $6c, $10
    db $20, $10, $6c, $10
    db $28, $10, $6c, $10
    db $30, $10, $6c, $10
    db $40, $10, $6a, $10
    db $38, $10, $6c, $10
    db $ff

OAMSpriteData_Event4b_SaveDataErasePrompt::
    db $10, $08, $04, $00
    db $10, $10, $11, $00
    db $10, $18, $00, $00
    db $10, $20, $12, $00
    db $10, $28, $04, $00
    db $10, $38, $2b, $00
    db $ff

OAMSpriteData_Event4c_ButtonPrompt_A_OK::
    db $10, $18, $00, $00
    db $10, $20, $2a, $00
    db $10, $28, $0e, $00
    db $10, $30, $0a, $00
    db $ff

OAMSpriteData_Event4d_ButtonPrompt_B_CANCEL::
    db $10, $08, $01, $00
    db $10, $10, $2a, $00
    db $10, $18, $02, $00
    db $10, $20, $00, $00
    db $10, $28, $0d, $00
    db $10, $30, $02, $00
    db $10, $38, $04, $00
    db $10, $40, $0b, $00
    db $ff

OAMSpriteData_Event4e_ButtonPrompt_A_START::
    db $10, $14, $2a, $00
    db $10, $0c, $00, $00
    db $10, $1c, $12, $00
    db $10, $24, $13, $00
    db $10, $2c, $00, $00
    db $10, $34, $11, $00
    db $10, $3c, $13, $00
    db $ff

OAMSpriteData_Event4f_ButtonPrompt_B_EXIT::
    db $10, $10, $01, $00
    db $10, $18, $2a, $00
    db $10, $20, $04, $00
    db $10, $28, $17, $00
    db $10, $30, $08, $00
    db $10, $38, $13, $00
    db $ff

OAMSpriteData_Event50::
    db $10, $04, $2a, $00
    db $10, $fc, $00, $00
    db $10, $0c, $13, $00
    db $10, $14, $11, $00
    db $10, $1c, $18, $00
    db $10, $2c, $00, $00
    db $10, $34, $06, $00
    db $10, $3c, $00, $00
    db $10, $44, $08, $00
    db $10, $4c, $0d, $00
    db $ff

OAMSpriteData_Event51_PromptFont_0::
    db $10, $08, $20, $00
    db $ff

OAMSpriteData_Event52_PromptFont_1::
    db $10, $08, $21, $00
    db $ff

OAMSpriteData_Event53_PromptFont_2::
    db $10, $08, $22, $00
    db $ff

OAMSpriteData_Event54_PromptFont_3::
    db $10, $08, $23, $00
    db $ff

OAMSpriteData_Event55_PromptFont_4::
    db $10, $08, $24, $00
    db $ff

OAMSpriteData_Event56_PromptFont_5::
    db $10, $08, $25, $00
    db $ff

OAMSpriteData_Event57_PromptFont_6::
    db $10, $08, $26, $00
    db $ff

OAMSpriteData_Event58_PromptFont_7::
    db $10, $08, $27, $00
    db $ff

OAMSpriteData_Event59_PromptFont_8::
    db $10, $08, $28, $00
    db $ff

OAMSpriteData_Event5a_PromptFont_9::
    db $10, $08, $29, $00
    db $ff

OAMSpriteData_Event5b::
    db $10, $08, $34, $10
    db $10, $10, $35, $10
    db $18, $08, $44, $10
    db $18, $10, $45, $10
    db $20, $08, $3c, $10
    db $20, $10, $3d, $10
    db $ff

OAMSpriteData_Event5c::
    db $10, $08, $36, $10
    db $10, $10, $37, $10
    db $18, $08, $46, $10
    db $18, $10, $47, $10
    db $20, $08, $4c, $10
    db $20, $10, $4d, $10
    db $ff

OAMSpriteData_Event5d::
    db $10, $08, $38, $10
    db $18, $08, $48, $10
    db $18, $10, $49, $10
    db $20, $08, $3e, $10
    db $20, $10, $3f, $10
    db $10, $10, $38, $30
    db $ff

OAMSpriteData_Event5e::
    db $18, $08, $4a, $10
    db $18, $10, $4b, $10
    db $20, $08, $4e, $10
    db $20, $10, $4f, $10
    db $10, $08, $39, $10
    db $10, $10, $39, $30
    db $ff

OAMSpriteData_Event5f::
    db $18, $08, $4a, $10
    db $20, $08, $4e, $10
    db $10, $08, $39, $10
    db $10, $10, $39, $30
    db $18, $10, $3a, $10
    db $20, $10, $3b, $10
    db $ff

OAMSpriteData_Event60_PuzzleSelectCursorPencil_Idle::
    db $10, $08, $30, $10
    db $10, $10, $31, $10
    db $18, $08, $40, $10
    db $18, $10, $41, $10
    db $ff

OAMSpriteData_Event61_PuzzleSelectCursorPencil_ClearAnimation_Frame1::
    db $10, $06, $32, $10
    db $10, $0e, $33, $10
    db $18, $06, $42, $10
    db $18, $0e, $43, $10
    db $ff

OAMSpriteData_Event62_PuzzleSelectCursorPencil_ClearAnimation_Frame2::
    db $0e, $0a, $32, $10
    db $0e, $12, $33, $10
    db $16, $0a, $42, $10
    db $16, $12, $43, $10
    db $ff

OAMSpriteData_Event63::
    db $10, $08, $1f, $00
    db $ff

OAMSpriteData_Event64::
    db $10, $08, $00, $00
    db $ff

OAMSpriteData_Event65::
    db $10, $08, $01, $00
    db $ff

OAMSpriteData_Event66::
    db $10, $08, $02, $00
    db $ff

OAMSpriteData_Event67::
    db $10, $08, $03, $00
    db $ff

OAMSpriteData_Event68::
    db $10, $08, $04, $00
    db $ff

OAMSpriteData_Event69::
    db $10, $08, $05, $00
    db $ff

OAMSpriteData_Event6a::
    db $10, $08, $06, $00
    db $ff

OAMSpriteData_Event6b::
    db $10, $08, $07, $00
    db $ff

OAMSpriteData_Event6c::
    db $10, $08, $08, $00
    db $ff

OAMSpriteData_Event6d::
    db $10, $08, $09, $00
    db $ff

OAMSpriteData_Event6e::
    db $10, $08, $0a, $00
    db $ff

OAMSpriteData_Event6f::
    db $10, $08, $0b, $00
    db $ff

OAMSpriteData_Event70::
    db $10, $08, $0c, $00
    db $ff

OAMSpriteData_Event71::
    db $10, $08, $0d, $00
    db $ff

OAMSpriteData_Event72::
    db $10, $08, $0e, $00
    db $ff

OAMSpriteData_Event73::
    db $10, $08, $0f, $00
    db $ff

OAMSpriteData_Event74::
    db $10, $08, $10, $00
    db $ff

OAMSpriteData_Event75::
    db $10, $08, $11, $00
    db $ff

OAMSpriteData_Event76::
    db $10, $08, $12, $00
    db $ff

OAMSpriteData_Event77::
    db $10, $08, $13, $00
    db $ff

OAMSpriteData_Event78::
    db $10, $08, $14, $00
    db $ff

OAMSpriteData_Event79::
    db $10, $08, $15, $00
    db $ff

OAMSpriteData_Event7a::
    db $10, $08, $16, $00
    db $ff

OAMSpriteData_Event7b::
    db $10, $08, $17, $00
    db $ff

OAMSpriteData_Event7c::
    db $10, $08, $18, $00
    db $ff

OAMSpriteData_Event7d::
    db $10, $08, $19, $00
    db $ff

OAMSpriteData_Event7e::
    db $10, $08, $1a, $00
    db $ff

OAMSpriteData_Event7f::
    db $10, $08, $1b, $00
    db $ff

OAMSpriteData_Event80_PromptFont_Dash::
    db $10, $08, $1c, $00
    db $ff

OAMSpriteData_Event81::
    db $10, $08, $1d, $00
    db $ff

OAMSpriteData_Event82::
    db $10, $08, $1e, $00
    db $ff

OAMSpriteData_Event83_TitleScreenMarioBlinking_Frame1::
    db $f8, $f0, $04, $80
    db $f8, $f8, $05, $80
    db $f8, $00, $06, $80
    db $f8, $08, $07, $80
    db $f8, $10, $08, $80
    db $f8, $18, $09, $80
    db $f0, $f8, $00, $80
    db $f0, $00, $01, $80
    db $f0, $08, $02, $80
    db $f0, $10, $03, $80
    db $00, $e8, $0a, $80
    db $00, $f0, $0b, $80
    db $00, $f8, $0c, $80
    db $00, $00, $0d, $80
    db $00, $08, $0e, $80
    db $00, $10, $0f, $80
    db $00, $18, $10, $80
    db $08, $e8, $11, $80
    db $08, $f0, $12, $80
    db $08, $f8, $13, $80
    db $08, $00, $14, $80
    db $08, $08, $15, $80
    db $08, $10, $16, $80
    db $08, $18, $17, $80
    db $10, $e8, $18, $80
    db $10, $f0, $19, $80
    db $10, $f8, $1a, $80
    db $10, $00, $1b, $80
    db $10, $08, $1c, $80
    db $18, $f0, $1d, $80
    db $18, $f8, $1e, $80
    db $18, $00, $1f, $80
    db $ff

OAMSpriteData_Event84_TitleScreenMarioBlinking_Frame2::
    db $f0, $f8, $20, $80
    db $f0, $00, $21, $80
    db $f0, $08, $22, $80
    db $f0, $10, $23, $80
    db $f8, $f0, $24, $80
    db $f8, $f8, $25, $80
    db $f8, $00, $26, $80
    db $f8, $08, $27, $80
    db $f8, $10, $28, $80
    db $f8, $18, $29, $80
    db $00, $e8, $2a, $80
    db $00, $f0, $2b, $80
    db $00, $f8, $2c, $80
    db $00, $00, $2d, $80
    db $00, $08, $2e, $80
    db $00, $10, $2f, $80
    db $00, $18, $30, $80
    db $08, $e8, $31, $80
    db $08, $f0, $32, $80
    db $08, $f8, $33, $80
    db $08, $00, $34, $80
    db $08, $08, $35, $80
    db $08, $10, $36, $80
    db $08, $18, $37, $80
    db $10, $e8, $38, $80
    db $10, $f0, $39, $80
    db $10, $f8, $3a, $80
    db $10, $00, $3b, $80
    db $10, $08, $3c, $80
    db $18, $f0, $3d, $80
    db $18, $f8, $3e, $80
    db $18, $00, $3f, $80
    db $ff

OAMSpriteData_Event85_TitleScreenMarioBlinking_Frame3::
    db $f0, $f8, $40, $80
    db $f0, $00, $41, $80
    db $f0, $08, $42, $80
    db $f0, $10, $43, $80
    db $f8, $f0, $44, $80
    db $f8, $f8, $45, $80
    db $f8, $00, $46, $80
    db $f8, $08, $47, $80
    db $f8, $10, $48, $80
    db $f8, $18, $49, $80
    db $00, $e8, $4a, $80
    db $00, $f0, $4b, $80
    db $00, $f8, $4c, $80
    db $00, $00, $4d, $80
    db $00, $08, $4e, $80
    db $00, $10, $4f, $80
    db $00, $18, $50, $80
    db $08, $e8, $51, $80
    db $08, $f0, $52, $80
    db $08, $f8, $53, $80
    db $08, $00, $54, $80
    db $08, $08, $55, $80
    db $08, $10, $56, $80
    db $08, $18, $57, $80
    db $10, $e8, $58, $80
    db $10, $f0, $59, $80
    db $10, $f8, $5a, $80
    db $10, $00, $5b, $80
    db $10, $08, $5c, $80
    db $18, $f0, $5d, $80
    db $18, $f8, $5e, $80
    db $18, $00, $5f, $80
    db $ff

    ; padding
    ds $35f, $00
