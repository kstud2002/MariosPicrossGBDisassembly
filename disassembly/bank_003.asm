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

TransitionFadePaletteTable_EasyPicross::
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

TransitionFadePaletteTable_TimeTrial::
    db $00, $00, $00
    db $40, $40, $40
    db $90, $80, $90
    db $e1, $d1, $e1

TransitionFadePaletteTable_TitleScreen::
    db $00, $00, $00
    db $40, $40, $40
    db $90, $90, $90
    db $e4, $e4, $e4

TransitionFadePaletteTable_PostSaveReturn::
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


TickBottomPromptBlinkSprite4E_A_START::
    ld a, [rStatePhaseTimer]                      ; $4e8a: $fa $3c $d6
    inc a                                         ; $4e8d: $3c
    cp $46                                        ; $4e8e: $fe $46
    jr c, .StoreBlinkTimerAndCheckDrawWindowSprite4E; $4e90: $38 $01

    xor a                                         ; $4e92: $af

.StoreBlinkTimerAndCheckDrawWindowSprite4E:
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


TickBottomPromptBlinkSprite4F_B_Exit_50_A_TRYAGAIN::
    ld a, [rStatePhaseTimer]                      ; $4f10: $fa $3c $d6
    inc a                                         ; $4f13: $3c
    cp $46                                        ; $4f14: $fe $46
    jr c, .StoreBlinkTimerAndCheckDrawWindowSprite4F_50; $4f16: $38 $09

    ld a, [rSharedAnimationFrameState]            ; $4f18: $fa $3d $d6
    xor $01                                       ; $4f1b: $ee $01
    ld [rSharedAnimationFrameState], a            ; $4f1d: $ea $3d $d6
    xor a                                         ; $4f20: $af

.StoreBlinkTimerAndCheckDrawWindowSprite4F_50:
    ld [rStatePhaseTimer], a                      ; $4f21: $ea $3c $d6
    cp $30                                        ; $4f24: $fe $30
    jp nc, ReturnFromBankedJumpRestoreBank        ; $4f26: $d2 $ea $05

    ld a, [rSharedAnimationFrameState]            ; $4f29: $fa $3d $d6
    xor $01                                       ; $4f2c: $ee $01
    add $4f                                       ; $4f2e: $c6 $4f
    ld bc, $3088                                  ; $4f30: $01 $88 $30
    call CopyOAMSpriteById                        ; $4f33: $cd $ce $20
    jp ReturnFromBankedJumpRestoreBank            ; $4f36: $c3 $ea $05


SETCHARMAP messages

ContinueSavedGameText::
    db "Get ready to continue", $fe, $ff

    db "your saved game.", $ff, $ff

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
    ld [rSaveSlot1PuzzleActionRuleIndex_Unused], a; $5002: $ea $66 $a0
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
    ld hl, TransitionFadePaletteTable_TitleScreen ; $5039: $21 $18 $47
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
    jr GS00_SP02_PostFadeOutFlowRouter            ; $51a7: $18 $0d

GS00_SP02_NonSGBFadeOut::
    ld b, $03                                     ; $51a9: $06 $03
    ld hl, $4723                                  ; $51ab: $21 $23 $47
    ld c, $10                                     ; $51ae: $0e $10
    ld de, $00c3                                  ; $51b0: $11 $c3 $00
    call PlayScreenTransitionFadeOut              ; $51b3: $cd $4e $04

GS00_SP02_PostFadeOutFlowRouter::
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


GS00_StatePhase_03_ContinueSavedPuzzlePromptAndRoute::
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
    jr nz, .CheckContinueFlowModeTimeTrialForPromptTilemap; $5247: $20 $0a

    ld b, $01                                     ; $5249: $06 $01
    ld hl, $4ae4                                  ; $524b: $21 $e4 $4a
    call SwitchBankToBAndJumpToHL                 ; $524e: $cd $de $05
    jr .InitializeContinueSavedPuzzlePromptUI     ; $5251: $18 $20

.CheckContinueFlowModeTimeTrialForPromptTilemap:
    cp $03                                        ; $5253: $fe $03
    jr nz, .InitializeContinueSavedPuzzlePromptUI ; $5255: $20 $1c

    ld a, $0b                                     ; $5257: $3e $0b
    ld hl, SGBPacket_MLT_REQ_DisableMultiplayer   ; $5259: $21 $00 $40
    ld de, $8800                                  ; $525c: $11 $00 $88
    ld bc, $1000                                  ; $525f: $01 $00 $10
    call BankedTileCopy                           ; $5262: $cd $e4 $04
    ld a, $0b                                     ; $5265: $3e $0b
    ld hl, PuzzleNamePointerTable_Puzzle_KC27     ; $5267: $21 $00 $58
    ld de, $9800                                  ; $526a: $11 $00 $98
    ld bc, $0400                                  ; $526d: $01 $00 $04
    call BankedTileCopy                           ; $5270: $cd $e4 $04

.InitializeContinueSavedPuzzlePromptUI:
    call ClearShadowOAMBuffer                     ; $5273: $cd $b6 $05
    ld b, $03                                     ; $5276: $06 $03
    ld hl, InitBottomPromptBlinkTimerAndFrameState; $5278: $21 $80 $4e
    call SwitchBankToBAndJumpToHL                 ; $527b: $cd $de $05
    ld b, $03                                     ; $527e: $06 $03
    ld hl, TickBottomPromptBlinkSprite4E_A_START  ; $5280: $21 $8a $4e
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
    call GS00_RunMessageScriptUntilEnd_NoBankSwitch; $52aa: $cd $1f $54
    call EnableLCDFromShadow                      ; $52ad: $cd $a2 $04
    call EnsureSGBMaskFreezeDisabled              ; $52b0: $cd $a5 $1f
    ld a, [rContinueSavedGameFlowMode_Unsure]     ; $52b3: $fa $a2 $ac
    cp $02                                        ; $52b6: $fe $02
    jr nz, .CheckContinueFlowModeTimeTrialForPromptFadeIn; $52b8: $20 $0a

    ld b, $01                                     ; $52ba: $06 $01
    ld hl, $4bae                                  ; $52bc: $21 $ae $4b
    call SwitchBankToBAndJumpToHL                 ; $52bf: $cd $de $05
    jr .WaitForContinuePromptConfirmInput         ; $52c2: $18 $20

.CheckContinueFlowModeTimeTrialForPromptFadeIn:
    cp $03                                        ; $52c4: $fe $03
    jr nz, .ApplyContinuePromptDefaultFadeIn      ; $52c6: $20 $0f

    ld b, $03                                     ; $52c8: $06 $03
    ld hl, TransitionFadePaletteTable_TimeTrial   ; $52ca: $21 $0c $47
    ld c, $0f                                     ; $52cd: $0e $0f
    ld de, $00a4                                  ; $52cf: $11 $a4 $00
    call PlayScreenTransitionFadeIn               ; $52d2: $cd $0d $04
    jr .WaitForContinuePromptConfirmInput         ; $52d5: $18 $0d

.ApplyContinuePromptDefaultFadeIn:
    ld b, $03                                     ; $52d7: $06 $03
    ld hl, TransitionFadePaletteTable_EasyPicross ; $52d9: $21 $e8 $46
    ld c, $0b                                     ; $52dc: $0e $0b
    ld de, $0074                                  ; $52de: $11 $74 $00
    call PlayScreenTransitionFadeIn               ; $52e1: $cd $0d $04

.WaitForContinuePromptConfirmInput:
    call ClearShadowOAMBufferFromCursor           ; $52e4: $cd $c5 $05
    rst RST_08                                    ; $52e7: $cf
    ld b, $03                                     ; $52e8: $06 $03
    ld hl, TickBottomPromptBlinkSprite4E_A_START  ; $52ea: $21 $8a $4e
    call SwitchBankToBAndJumpToHL                 ; $52ed: $cd $de $05
    ld a, [rInputButtonsPressed]                  ; $52f0: $fa $1e $c3
    and $01                                       ; $52f3: $e6 $01
    jr z, .WaitForContinuePromptConfirmInput      ; $52f5: $28 $ed

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
    jr nz, .CheckContinueFlowModeTimeTrialForPromptFadeOut; $531f: $20 $0a

    ld b, $01                                     ; $5321: $06 $01
    ld hl, $4bdc                                  ; $5323: $21 $dc $4b
    call SwitchBankToBAndJumpToHL                 ; $5326: $cd $de $05
    jr .FinalizeContinuePromptAndRouteToSavedPuzzleState; $5329: $18 $20

.CheckContinueFlowModeTimeTrialForPromptFadeOut:
    cp $03                                        ; $532b: $fe $03
    jr nz, .ApplyContinuePromptDefaultFadeOut     ; $532d: $20 $0f

    ld b, $03                                     ; $532f: $06 $03
    ld hl, $4717                                  ; $5331: $21 $17 $47
    ld c, $0f                                     ; $5334: $0e $0f
    ld de, $00b3                                  ; $5336: $11 $b3 $00
    call PlayScreenTransitionFadeOut              ; $5339: $cd $4e $04
    jr .FinalizeContinuePromptAndRouteToSavedPuzzleState; $533c: $18 $0d

.ApplyContinuePromptDefaultFadeOut:
    ld b, $03                                     ; $533e: $06 $03
    ld hl, $46f3                                  ; $5340: $21 $f3 $46
    ld c, $0b                                     ; $5343: $0e $0b
    ld de, $0083                                  ; $5345: $11 $83 $00
    call PlayScreenTransitionFadeOut              ; $5348: $cd $4e $04

.FinalizeContinuePromptAndRouteToSavedPuzzleState:
    call DisableLCDAtVBlank                       ; $534b: $cd $83 $04
    ld a, [rContinueSavedGameFlowMode_Unsure]     ; $534e: $fa $a2 $ac
    dec a                                         ; $5351: $3d
    ld c, a                                       ; $5352: $4f
    ld b, $00                                     ; $5353: $06 $00
    ld hl, GS00_SP03_ContinueSavedPuzzleRoute_StatePhaseLookupTable; $5355: $21 $66 $53
    add hl, bc                                    ; $5358: $09
    ld a, [hl]                                    ; $5359: $7e
    ld [rStatePhase_Current], a                   ; $535a: $ea $35 $d6
    ld hl, GS00_SP03_ContinueSavedPuzzleRoute_GameStateLookupTable; $535d: $21 $69 $53
    add hl, bc                                    ; $5360: $09
    ld a, [hl]                                    ; $5361: $7e
    ld [rGameState_Current], a                    ; $5362: $ea $34 $d6
    ret                                           ; $5365: $c9


GS00_SP03_ContinueSavedPuzzleRoute_StatePhaseLookupTable::
    db $0b, $0b, $09

GS00_SP03_ContinueSavedPuzzleRoute_GameStateLookupTable::
    db $08, $0a, $09

GS00_StatePhase_04_PostSaveReturnToTitlePrompt::
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
    ld hl, TransitionFadePaletteTable_PostSaveReturn; $53c9: $21 $24 $47
    ld c, $11                                     ; $53cc: $0e $11
    ld de, $00c4                                  ; $53ce: $11 $c4 $00
    call PlayScreenTransitionFadeIn               ; $53d1: $cd $0d $04

.WaitForPostSaveReturnPromptConfirmInput:
    call ClearShadowOAMBufferFromCursor           ; $53d4: $cd $c5 $05
    rst RST_08                                    ; $53d7: $cf
    ld b, $03                                     ; $53d8: $06 $03
    ld hl, TickBottomPromptBlinkSprite4C_A_OK     ; $53da: $21 $a6 $4e
    call SwitchBankToBAndJumpToHL                 ; $53dd: $cd $de $05
    ld a, [rInputButtonsPressed]                  ; $53e0: $fa $1e $c3
    and $01                                       ; $53e3: $e6 $01
    jr z, .WaitForPostSaveReturnPromptConfirmInput; $53e5: $28 $ed

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


GS00_RunMessageScriptUntilEnd_NoBankSwitch::
    call AdvanceMessageScriptStreamHelper_NoBankSwitch; $541f: $cd $1f $2c
    jr nz, GS00_RunMessageScriptUntilEnd_NoBankSwitch; $5422: $20 $fb

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
    ld bc, PuzzleNamePointerTable_Puzzle_KC3B     ; $5457: $01 $28 $58
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

TODO_QueueTODOCommandStream::
    ld c, a                                       ; $5482: $4f
    ld b, $00                                     ; $5483: $06 $00
    ld hl, TODO_CommandOffsetTable                ; $5485: $21 $92 $54
    add hl, bc                                    ; $5488: $09
    ld c, [hl]                                    ; $5489: $4e
    add hl, bc                                    ; $548a: $09
    ld a, $03                                     ; $548b: $3e $03
    ld c, l                                       ; $548d: $4d
    ld b, h                                       ; $548e: $44
    jp QueueCommandStreamAndProcessIfLCDOff       ; $548f: $c3 $38 $07


TODO_CommandOffsetTable::
    db $03, $35, $67

TODO_1_CommandScript::
    db $98, $29, $04, $a0, $a1, $a2, $a3

    db $98, $48, $06, $a4, $a5, $a6, $a7, $a8, $a9

    db $98, $67, $07, $aa, $ab, $ac, $ad, $ae, $af, $b0

    db $98, $87, $07, $b1, $b2, $b3, $b4, $b5, $b6, $b7

    db $98, $a7, $05, $b8, $b9, $ba, $bb, $bc

    db $98, $c8, $03, $bd, $be, $bf
    db $00

TODO_2_CommandScript::
    db $98, $29, $04, $c0, $c1, $c2, $c3

    db $98, $48, $06, $c4, $c5, $c6, $c7, $c8, $c9

    db $98, $67, $07, $ca, $cb, $cc, $cd, $ce, $cf, $d0

    db $98, $87, $07, $d1, $d2, $d3, $d4, $d5, $d6, $d7

    db $98, $a7, $05, $d8, $d9, $da, $db, $dc

    db $98, $c8, $03, $dd, $de, $df
    db $00

TODO_3_CommandScript::
    db $98, $29, $04, $e0, $e1, $e2, $e3

    db $98, $48, $06, $e4, $e5, $e6, $e7, $e8, $e9

    db $98, $67, $07, $ea, $eb, $ec, $ed, $ee, $ef, $f0

    db $98, $87, $07, $f1, $f2, $f3, $f4, $f5, $f6, $d7

    db $98, $a7, $05, $f8, $f9, $fa, $fb, $d7

    db $98, $c8, $03, $fd, $fe, $d7
    db $00

Bank2_PuzzleDataPointerTable_Puzzle_HT00::
    db $b0, $52

Bank2_PuzzleDataPointerTable_Puzzle_EP00::
    db $d0, $52

Bank2_PuzzleDataPointerTable_Puzzle_EP01::
    db $f0, $52

Bank2_PuzzleDataPointerTable_Puzzle_EP02::
    db $10, $53

Bank2_PuzzleDataPointerTable_Puzzle_EP03::
    db $30, $53

Bank2_PuzzleDataPointerTable_Puzzle_EP04::
    db $50, $53

Bank2_PuzzleDataPointerTable_Puzzle_EP05::
    db $70, $53

Bank2_PuzzleDataPointerTable_Puzzle_EP06::
    db $90, $53

Bank2_PuzzleDataPointerTable_Puzzle_EP07::
    db $b0, $53

Bank2_PuzzleDataPointerTable_Puzzle_EP08::
    db $d0, $53

Bank2_PuzzleDataPointerTable_Puzzle_EP09::
    db $f0, $53

Bank2_PuzzleDataPointerTable_Puzzle_EP0A::
    db $10, $54

Bank2_PuzzleDataPointerTable_Puzzle_EP0B::
    db $30, $54

Bank2_PuzzleDataPointerTable_Puzzle_EP0C::
    db $50, $54

Bank2_PuzzleDataPointerTable_Puzzle_EP0D::
    db $70, $54

Bank2_PuzzleDataPointerTable_Puzzle_EP0E::
    db $90, $54

Bank2_PuzzleDataPointerTable_Puzzle_EP0F::
    db $b0, $54

Bank2_PuzzleDataPointerTable_Puzzle_EP10::
    db $d0, $54

Bank2_PuzzleDataPointerTable_Puzzle_EP11::
    db $f0, $54

Bank2_PuzzleDataPointerTable_Puzzle_EP12::
    db $10, $55

Bank2_PuzzleDataPointerTable_Puzzle_EP13::
    db $30, $55

Bank2_PuzzleDataPointerTable_Puzzle_EP14::
    db $50, $55

Bank2_PuzzleDataPointerTable_Puzzle_EP15::
    db $70, $55

Bank2_PuzzleDataPointerTable_Puzzle_EP16::
    db $90, $55

Bank2_PuzzleDataPointerTable_Puzzle_EP17::
    db $b0, $55

Bank2_PuzzleDataPointerTable_Puzzle_EP18::
    db $d0, $55

Bank2_PuzzleDataPointerTable_Puzzle_EP19::
    db $f0, $55

Bank2_PuzzleDataPointerTable_Puzzle_EP1A::
    db $10, $56

Bank2_PuzzleDataPointerTable_Puzzle_EP1B::
    db $30, $56

Bank2_PuzzleDataPointerTable_Puzzle_EP1C::
    db $50, $56

Bank2_PuzzleDataPointerTable_Puzzle_EP1D::
    db $70, $56

Bank2_PuzzleDataPointerTable_Puzzle_EP1E::
    db $90, $56

Bank2_PuzzleDataPointerTable_Puzzle_EP1F::
    db $b0, $56

Bank2_PuzzleDataPointerTable_Puzzle_EP20::
    db $d0, $56

Bank2_PuzzleDataPointerTable_Puzzle_EP21::
    db $f0, $56

Bank2_PuzzleDataPointerTable_Puzzle_EP22::
    db $10, $57

Bank2_PuzzleDataPointerTable_Puzzle_EP23::
    db $30, $57

Bank2_PuzzleDataPointerTable_Puzzle_EP24::
    db $50, $57

Bank2_PuzzleDataPointerTable_Puzzle_EP25::
    db $70, $57

Bank2_PuzzleDataPointerTable_Puzzle_EP26::
    db $90, $57

Bank2_PuzzleDataPointerTable_Puzzle_EP27::
    db $b0, $57

Bank2_PuzzleDataPointerTable_Puzzle_EP28::
    db $d0, $57

Bank2_PuzzleDataPointerTable_Puzzle_EP29::
    db $f0, $57

Bank2_PuzzleDataPointerTable_Puzzle_EP2A::
    db $10, $58

Bank2_PuzzleDataPointerTable_Puzzle_EP2B::
    db $30, $58

Bank2_PuzzleDataPointerTable_Puzzle_EP2C::
    db $50, $58

Bank2_PuzzleDataPointerTable_Puzzle_EP2D::
    db $70, $58

Bank2_PuzzleDataPointerTable_Puzzle_EP2E::
    db $90, $58

Bank2_PuzzleDataPointerTable_Puzzle_EP2F::
    db $b0, $58

Bank2_PuzzleDataPointerTable_Puzzle_EP30::
    db $d0, $58

Bank2_PuzzleDataPointerTable_Puzzle_EP31::
    db $f0, $58

Bank2_PuzzleDataPointerTable_Puzzle_EP32::
    db $10, $59

Bank2_PuzzleDataPointerTable_Puzzle_EP33::
    db $30, $59

Bank2_PuzzleDataPointerTable_Puzzle_EP34::
    db $50, $59

Bank2_PuzzleDataPointerTable_Puzzle_EP35::
    db $70, $59

Bank2_PuzzleDataPointerTable_Puzzle_EP36::
    db $90, $59

Bank2_PuzzleDataPointerTable_Puzzle_EP37::
    db $b0, $59

Bank2_PuzzleDataPointerTable_Puzzle_EP38::
    db $d0, $59

Bank2_PuzzleDataPointerTable_Puzzle_EP39::
    db $f0, $59

Bank2_PuzzleDataPointerTable_Puzzle_EP3A::
    db $10, $5a

Bank2_PuzzleDataPointerTable_Puzzle_EP3B::
    db $30, $5a

Bank2_PuzzleDataPointerTable_Puzzle_EP3C::
    db $50, $5a

Bank2_PuzzleDataPointerTable_Puzzle_EP3D::
    db $70, $5a

Bank2_PuzzleDataPointerTable_Puzzle_EP3E::
    db $90, $5a

Bank2_PuzzleDataPointerTable_Puzzle_EP3F::
    db $b0, $5a

Bank2_PuzzleDataPointerTable_Puzzle_KC00::
    db $d0, $5a

Bank2_PuzzleDataPointerTable_Puzzle_KC01::
    db $f0, $5a

Bank2_PuzzleDataPointerTable_Puzzle_KC02::
    db $10, $5b

Bank2_PuzzleDataPointerTable_Puzzle_KC03::
    db $30, $5b

Bank2_PuzzleDataPointerTable_Puzzle_KC04::
    db $50, $5b

Bank2_PuzzleDataPointerTable_Puzzle_KC05::
    db $70, $5b

Bank2_PuzzleDataPointerTable_Puzzle_KC06::
    db $90, $5b

Bank2_PuzzleDataPointerTable_Puzzle_KC07::
    db $b0, $5b

Bank2_PuzzleDataPointerTable_Puzzle_KC08::
    db $d0, $5b

Bank2_PuzzleDataPointerTable_Puzzle_KC09::
    db $f0, $5b

Bank2_PuzzleDataPointerTable_Puzzle_KC0A::
    db $10, $5c

Bank2_PuzzleDataPointerTable_Puzzle_KC0B::
    db $30, $5c

Bank2_PuzzleDataPointerTable_Puzzle_KC0C::
    db $50, $5c

Bank2_PuzzleDataPointerTable_Puzzle_KC0D::
    db $70, $5c

Bank2_PuzzleDataPointerTable_Puzzle_KC0E::
    db $90, $5c

Bank2_PuzzleDataPointerTable_Puzzle_KC0F::
    db $b0, $5c

Bank2_PuzzleDataPointerTable_Puzzle_KC10::
    db $d0, $5c

Bank2_PuzzleDataPointerTable_Puzzle_KC11::
    db $f0, $5c

Bank2_PuzzleDataPointerTable_Puzzle_KC12::
    db $10, $5d

Bank2_PuzzleDataPointerTable_Puzzle_KC13::
    db $30, $5d

Bank2_PuzzleDataPointerTable_Puzzle_KC14::
    db $50, $5d

Bank2_PuzzleDataPointerTable_Puzzle_KC15::
    db $70, $5d

Bank2_PuzzleDataPointerTable_Puzzle_KC16::
    db $90, $5d

Bank2_PuzzleDataPointerTable_Puzzle_KC17::
    db $b0, $5d

Bank2_PuzzleDataPointerTable_Puzzle_KC18::
    db $d0, $5d

Bank2_PuzzleDataPointerTable_Puzzle_KC19::
    db $f0, $5d

Bank2_PuzzleDataPointerTable_Puzzle_KC1A::
    db $10, $5e

Bank2_PuzzleDataPointerTable_Puzzle_KC1B::
    db $30, $5e

Bank2_PuzzleDataPointerTable_Puzzle_KC1C::
    db $50, $5e

Bank2_PuzzleDataPointerTable_Puzzle_KC1D::
    db $70, $5e

Bank2_PuzzleDataPointerTable_Puzzle_KC1E::
    db $90, $5e

Bank2_PuzzleDataPointerTable_Puzzle_KC1F::
    db $b0, $5e

Bank2_PuzzleDataPointerTable_Puzzle_KC20::
    db $d0, $5e

Bank2_PuzzleDataPointerTable_Puzzle_KC21::
    db $f0, $5e

Bank2_PuzzleDataPointerTable_Puzzle_KC22::
    db $10, $5f

Bank2_PuzzleDataPointerTable_Puzzle_KC23::
    db $30, $5f

Bank2_PuzzleDataPointerTable_Puzzle_KC24::
    db $50, $5f

Bank2_PuzzleDataPointerTable_Puzzle_KC25::
    db $70, $5f

Bank2_PuzzleDataPointerTable_Puzzle_KC26::
    db $90, $5f

Bank2_PuzzleDataPointerTable_Puzzle_KC27::
    db $b0, $5f

Bank2_PuzzleDataPointerTable_Puzzle_KC28::
    db $d0, $5f

Bank2_PuzzleDataPointerTable_Puzzle_KC29::
    db $f0, $5f

Bank2_PuzzleDataPointerTable_Puzzle_KC2A::
    db $10, $60

Bank2_PuzzleDataPointerTable_Puzzle_KC2B::
    db $30, $60

Bank2_PuzzleDataPointerTable_Puzzle_KC2C::
    db $50, $60

Bank2_PuzzleDataPointerTable_Puzzle_KC2D::
    db $70, $60

Bank2_PuzzleDataPointerTable_Puzzle_KC2E::
    db $90, $60

Bank2_PuzzleDataPointerTable_Puzzle_KC2F::
    db $b0, $60

Bank2_PuzzleDataPointerTable_Puzzle_KC30::
    db $d0, $60

Bank2_PuzzleDataPointerTable_Puzzle_KC31::
    db $f0, $60

Bank2_PuzzleDataPointerTable_Puzzle_KC32::
    db $10, $61

Bank2_PuzzleDataPointerTable_Puzzle_KC33::
    db $30, $61

Bank2_PuzzleDataPointerTable_Puzzle_KC34::
    db $50, $61

Bank2_PuzzleDataPointerTable_Puzzle_KC35::
    db $70, $61

Bank2_PuzzleDataPointerTable_Puzzle_KC36::
    db $90, $61

Bank2_PuzzleDataPointerTable_Puzzle_KC37::
    db $b0, $61

Bank2_PuzzleDataPointerTable_Puzzle_KC38::
    db $d0, $61

Bank2_PuzzleDataPointerTable_Puzzle_KC39::
    db $f0, $61

Bank2_PuzzleDataPointerTable_Puzzle_KC3A::
    db $10, $62

Bank2_PuzzleDataPointerTable_Puzzle_KC3B::
    db $30, $62

Bank2_PuzzleDataPointerTable_Puzzle_KC3C::
    db $50, $62

Bank2_PuzzleDataPointerTable_Puzzle_KC3D::
    db $70, $62

Bank2_PuzzleDataPointerTable_Puzzle_KC3E::
    db $90, $62

Bank2_PuzzleDataPointerTable_Puzzle_KC3F::
    db $b0, $62

Bank2_PuzzleDataPointerTable_Puzzle_SC00::
    db $d0, $62

Bank2_PuzzleDataPointerTable_Puzzle_SC01::
    db $f0, $62

Bank2_PuzzleDataPointerTable_Puzzle_SC02::
    db $10, $63

Bank2_PuzzleDataPointerTable_Puzzle_SC03::
    db $30, $63

Bank2_PuzzleDataPointerTable_Puzzle_SC04::
    db $50, $63

Bank2_PuzzleDataPointerTable_Puzzle_SC05::
    db $70, $63

Bank2_PuzzleDataPointerTable_Puzzle_SC06::
    db $90, $63

Bank2_PuzzleDataPointerTable_Puzzle_SC07::
    db $b0, $63

Bank2_PuzzleDataPointerTable_Puzzle_SC08::
    db $d0, $63

Bank2_PuzzleDataPointerTable_Puzzle_SC09::
    db $f0, $63

Bank2_PuzzleDataPointerTable_Puzzle_SC0A::
    db $10, $64

Bank2_PuzzleDataPointerTable_Puzzle_SC0B::
    db $30, $64

Bank2_PuzzleDataPointerTable_Puzzle_SC0C::
    db $50, $64

Bank2_PuzzleDataPointerTable_Puzzle_SC0D::
    db $70, $64

Bank2_PuzzleDataPointerTable_Puzzle_SC0E::
    db $90, $64

Bank2_PuzzleDataPointerTable_Puzzle_SC0F::
    db $b0, $64

Bank2_PuzzleDataPointerTable_Puzzle_SC10::
    db $d0, $64

Bank2_PuzzleDataPointerTable_Puzzle_SC11::
    db $f0, $64

Bank2_PuzzleDataPointerTable_Puzzle_SC12::
    db $10, $65

Bank2_PuzzleDataPointerTable_Puzzle_SC13::
    db $30, $65

Bank2_PuzzleDataPointerTable_Puzzle_SC14::
    db $50, $65

Bank2_PuzzleDataPointerTable_Puzzle_SC15::
    db $70, $65

Bank2_PuzzleDataPointerTable_Puzzle_SC16::
    db $90, $65

Bank2_PuzzleDataPointerTable_Puzzle_SC17::
    db $b0, $65

Bank2_PuzzleDataPointerTable_Puzzle_SC18::
    db $d0, $65

Bank2_PuzzleDataPointerTable_Puzzle_SC19::
    db $f0, $65

Bank2_PuzzleDataPointerTable_Puzzle_SC1A::
    db $10, $66

Bank2_PuzzleDataPointerTable_Puzzle_SC1B::
    db $30, $66

Bank2_PuzzleDataPointerTable_Puzzle_SC1C::
    db $50, $66

Bank2_PuzzleDataPointerTable_Puzzle_SC1D::
    db $70, $66

Bank2_PuzzleDataPointerTable_Puzzle_SC1E::
    db $90, $66

Bank2_PuzzleDataPointerTable_Puzzle_SC1F::
    db $b0, $66

Bank2_PuzzleDataPointerTable_Puzzle_SC20::
    db $d0, $66

Bank2_PuzzleDataPointerTable_Puzzle_SC21::
    db $f0, $66

Bank2_PuzzleDataPointerTable_Puzzle_SC22::
    db $10, $67

Bank2_PuzzleDataPointerTable_Puzzle_SC23::
    db $30, $67

Bank2_PuzzleDataPointerTable_Puzzle_SC24::
    db $50, $67

Bank2_PuzzleDataPointerTable_Puzzle_SC25::
    db $70, $67

Bank2_PuzzleDataPointerTable_Puzzle_SC26::
    db $90, $67

Bank2_PuzzleDataPointerTable_Puzzle_SC27::
    db $b0, $67

Bank2_PuzzleDataPointerTable_Puzzle_SC28::
    db $d0, $67

Bank2_PuzzleDataPointerTable_Puzzle_SC29::
    db $f0, $67

Bank2_PuzzleDataPointerTable_Puzzle_SC2A::
    db $10, $68

Bank2_PuzzleDataPointerTable_Puzzle_SC2B::
    db $30, $68

Bank2_PuzzleDataPointerTable_Puzzle_SC2C::
    db $50, $68

Bank2_PuzzleDataPointerTable_Puzzle_SC2D::
    db $70, $68

Bank2_PuzzleDataPointerTable_Puzzle_SC2E::
    db $90, $68

Bank2_PuzzleDataPointerTable_Puzzle_SC2F::
    db $b0, $68

Bank2_PuzzleDataPointerTable_Puzzle_SC30::
    db $d0, $68

Bank2_PuzzleDataPointerTable_Puzzle_SC31::
    db $f0, $68

Bank2_PuzzleDataPointerTable_Puzzle_SC32::
    db $10, $69

Bank2_PuzzleDataPointerTable_Puzzle_SC33::
    db $30, $69

Bank2_PuzzleDataPointerTable_Puzzle_SC34::
    db $50, $69

Bank2_PuzzleDataPointerTable_Puzzle_SC35::
    db $70, $69

Bank2_PuzzleDataPointerTable_Puzzle_SC36::
    db $90, $69

Bank2_PuzzleDataPointerTable_Puzzle_SC37::
    db $b0, $69

Bank2_PuzzleDataPointerTable_Puzzle_SC38::
    db $d0, $69

Bank2_PuzzleDataPointerTable_Puzzle_SC39::
    db $f0, $69

Bank2_PuzzleDataPointerTable_Puzzle_SC3A::
    db $10, $6a

Bank2_PuzzleDataPointerTable_Puzzle_SC3B::
    db $30, $6a

Bank2_PuzzleDataPointerTable_Puzzle_SC3C::
    db $50, $6a

Bank2_PuzzleDataPointerTable_Puzzle_SC3D::
    db $70, $6a

Bank2_PuzzleDataPointerTable_Puzzle_SC3E::
    db $90, $6a

Bank2_PuzzleDataPointerTable_Puzzle_SC3F::
    db $b0, $6a

Bank2_PuzzleDataPointerTable_Puzzle_TT00::
    db $d0, $6a

Bank2_PuzzleDataPointerTable_Puzzle_TT01::
    db $f0, $6a

Bank2_PuzzleDataPointerTable_Puzzle_TT02::
    db $10, $6b

Bank2_PuzzleDataPointerTable_Puzzle_TT03::
    db $30, $6b

Bank2_PuzzleDataPointerTable_Puzzle_TT04::
    db $50, $6b

Bank2_PuzzleDataPointerTable_Puzzle_TT05::
    db $70, $6b

Bank2_PuzzleDataPointerTable_Puzzle_TT06::
    db $90, $6b

Bank2_PuzzleDataPointerTable_Puzzle_TT07::
    db $b0, $6b

Bank2_PuzzleDataPointerTable_Puzzle_TT08::
    db $d0, $6b

Bank2_PuzzleDataPointerTable_Puzzle_TT09::
    db $f0, $6b

Bank2_PuzzleDataPointerTable_Puzzle_TT0A::
    db $10, $6c

Bank2_PuzzleDataPointerTable_Puzzle_TT0B::
    db $30, $6c

Bank2_PuzzleDataPointerTable_Puzzle_TT0C::
    db $50, $6c

Bank2_PuzzleDataPointerTable_Puzzle_TT0D::
    db $70, $6c

Bank2_PuzzleDataPointerTable_Puzzle_TT0E::
    db $90, $6c

Bank2_PuzzleDataPointerTable_Puzzle_TT0F::
    db $b0, $6c

Bank2_PuzzleDataPointerTable_Puzzle_TT10::
    db $d0, $6c

Bank2_PuzzleDataPointerTable_Puzzle_TT11::
    db $f0, $6c

Bank2_PuzzleDataPointerTable_Puzzle_TT12::
    db $10, $6d

Bank2_PuzzleDataPointerTable_Puzzle_TT13::
    db $30, $6d

Bank2_PuzzleDataPointerTable_Puzzle_TT14::
    db $50, $6d

Bank2_PuzzleDataPointerTable_Puzzle_TT15::
    db $70, $6d

Bank2_PuzzleDataPointerTable_Puzzle_TT16::
    db $90, $6d

Bank2_PuzzleDataPointerTable_Puzzle_TT17::
    db $b0, $6d

Bank2_PuzzleDataPointerTable_Puzzle_TT18::
    db $d0, $6d

Bank2_PuzzleDataPointerTable_Puzzle_TT19::
    db $f0, $6d

Bank2_PuzzleDataPointerTable_Puzzle_TT1A::
    db $10, $6e

Bank2_PuzzleDataPointerTable_Puzzle_TT1B::
    db $30, $6e

Bank2_PuzzleDataPointerTable_Puzzle_TT1C::
    db $50, $6e

Bank2_PuzzleDataPointerTable_Puzzle_TT1D::
    db $70, $6e

Bank2_PuzzleDataPointerTable_Puzzle_TT1E::
    db $90, $6e

Bank2_PuzzleDataPointerTable_Puzzle_TT1F::
    db $b0, $6e

Bank2_PuzzleDataPointerTable_Puzzle_TT20::
    db $d0, $6e

Bank2_PuzzleDataPointerTable_Puzzle_TT21::
    db $f0, $6e

Bank2_PuzzleDataPointerTable_Puzzle_TT22::
    db $10, $6f

Bank2_PuzzleDataPointerTable_Puzzle_TT23::
    db $30, $6f

Bank2_PuzzleDataPointerTable_Puzzle_TT24::
    db $50, $6f

Bank2_PuzzleDataPointerTable_Puzzle_TT25::
    db $70, $6f

Bank2_PuzzleDataPointerTable_Puzzle_TT26::
    db $90, $6f

Bank2_PuzzleDataPointerTable_Puzzle_TT27::
    db $b0, $6f

Bank2_PuzzleDataPointerTable_Puzzle_TT28::
    db $d0, $6f

Bank2_PuzzleDataPointerTable_Puzzle_TT29::
    db $f0, $6f

Bank2_PuzzleDataPointerTable_Puzzle_TT2A::
    db $10, $70

Bank2_PuzzleDataPointerTable_Puzzle_TT2B::
    db $30, $70

Bank2_PuzzleDataPointerTable_Puzzle_TT2C::
    db $50, $70

Bank2_PuzzleDataPointerTable_Puzzle_TT2D::
    db $70, $70

Bank2_PuzzleDataPointerTable_Puzzle_TT2E::
    db $90, $70

Bank2_PuzzleDataPointerTable_Puzzle_TT2F::
    db $b0, $70

Bank2_PuzzleDataPointerTable_Puzzle_TT30::
    db $d0, $70

Bank2_PuzzleDataPointerTable_Puzzle_TT31::
    db $f0, $70

Bank2_PuzzleDataPointerTable_Puzzle_TT32::
    db $10, $71

Bank2_PuzzleDataPointerTable_Puzzle_TT33::
    db $30, $71

Bank2_PuzzleDataPointerTable_Puzzle_TT34::
    db $50, $71

Bank2_PuzzleDataPointerTable_Puzzle_TT35::
    db $70, $71

Bank2_PuzzleDataPointerTable_Puzzle_TT36::
    db $90, $71

Bank2_PuzzleDataPointerTable_Puzzle_TT37::
    db $b0, $71

Bank2_PuzzleDataPointerTable_Puzzle_TT38::
    db $d0, $71

Bank2_PuzzleDataPointerTable_Puzzle_TT39::
    db $f0, $71

Bank2_PuzzleDataPointerTable_Puzzle_TT3A::
    db $10, $72

Bank2_PuzzleDataPointerTable_Puzzle_TT3B::
    db $30, $72

Bank2_PuzzleDataPointerTable_Puzzle_TT3C::
    db $50, $72

Bank2_PuzzleDataPointerTable_Puzzle_TT3D::
    db $70, $72

Bank2_PuzzleDataPointerTable_Puzzle_TT3E::
    db $90, $72

Bank2_PuzzleDataPointerTable_Puzzle_TT3F::
    db $b0, $72

PuzzleNamePointerTable_Puzzle_HT00::
    db $62, $6c

PuzzleNamePointerTable_Puzzle_EP00::
    db $62, $6c

PuzzleNamePointerTable_Puzzle_EP01::
    db $62, $6c

PuzzleNamePointerTable_Puzzle_EP02::
    db $62, $6c

PuzzleNamePointerTable_Puzzle_EP03::
    db $62, $6c

PuzzleNamePointerTable_Puzzle_EP04::
    db $62, $6c

PuzzleNamePointerTable_Puzzle_EP05::
    db $62, $6c

PuzzleNamePointerTable_Puzzle_EP06::
    db $62, $6c

PuzzleNamePointerTable_Puzzle_EP07::
    db $62, $6c

PuzzleNamePointerTable_Puzzle_EP08::
    db $32, $59

PuzzleNamePointerTable_Puzzle_EP09::
    db $3f, $59

PuzzleNamePointerTable_Puzzle_EP0A::
    db $52, $59

PuzzleNamePointerTable_Puzzle_EP0B::
    db $61, $59

PuzzleNamePointerTable_Puzzle_EP0C::
    db $70, $59

PuzzleNamePointerTable_Puzzle_EP0D::
    db $81, $59

PuzzleNamePointerTable_Puzzle_EP0E::
    db $a2, $59

PuzzleNamePointerTable_Puzzle_EP0F::
    db $bf, $59

PuzzleNamePointerTable_Puzzle_EP10::
    db $ce, $59

PuzzleNamePointerTable_Puzzle_EP11::
    db $e3, $59

PuzzleNamePointerTable_Puzzle_EP12::
    db $f0, $59

PuzzleNamePointerTable_Puzzle_EP13::
    db $05, $5a

PuzzleNamePointerTable_Puzzle_EP14::
    db $10, $5a

PuzzleNamePointerTable_Puzzle_EP15::
    db $21, $5a

PuzzleNamePointerTable_Puzzle_EP16::
    db $30, $5a

PuzzleNamePointerTable_Puzzle_EP17::
    db $45, $5a

PuzzleNamePointerTable_Puzzle_EP18::
    db $5a, $5a

PuzzleNamePointerTable_Puzzle_EP19::
    db $7d, $5a

PuzzleNamePointerTable_Puzzle_EP1A::
    db $8a, $5a

PuzzleNamePointerTable_Puzzle_EP1B::
    db $95, $5a

PuzzleNamePointerTable_Puzzle_EP1C::
    db $a4, $5a

PuzzleNamePointerTable_Puzzle_EP1D::
    db $b3, $5a

PuzzleNamePointerTable_Puzzle_EP1E::
    db $c2, $5a

PuzzleNamePointerTable_Puzzle_EP1F::
    db $d5, $5a

PuzzleNamePointerTable_Puzzle_EP20::
    db $e6, $5a

PuzzleNamePointerTable_Puzzle_EP21::
    db $f1, $5a

PuzzleNamePointerTable_Puzzle_EP22::
    db $06, $5b

PuzzleNamePointerTable_Puzzle_EP23::
    db $13, $5b

PuzzleNamePointerTable_Puzzle_EP24::
    db $20, $5b

PuzzleNamePointerTable_Puzzle_EP25::
    db $31, $5b

PuzzleNamePointerTable_Puzzle_EP26::
    db $42, $5b

PuzzleNamePointerTable_Puzzle_EP27::
    db $4f, $5b

PuzzleNamePointerTable_Puzzle_EP28::
    db $60, $5b

PuzzleNamePointerTable_Puzzle_EP29::
    db $79, $5b

PuzzleNamePointerTable_Puzzle_EP2A::
    db $86, $5b

PuzzleNamePointerTable_Puzzle_EP2B::
    db $a1, $5b

PuzzleNamePointerTable_Puzzle_EP2C::
    db $b0, $5b

PuzzleNamePointerTable_Puzzle_EP2D::
    db $c7, $5b

PuzzleNamePointerTable_Puzzle_EP2E::
    db $da, $5b

PuzzleNamePointerTable_Puzzle_EP2F::
    db $e9, $5b

PuzzleNamePointerTable_Puzzle_EP30::
    db $f8, $5b

PuzzleNamePointerTable_Puzzle_EP31::
    db $0d, $5c

PuzzleNamePointerTable_Puzzle_EP32::
    db $22, $5c

PuzzleNamePointerTable_Puzzle_EP33::
    db $2b, $5c

PuzzleNamePointerTable_Puzzle_EP34::
    db $44, $5c

PuzzleNamePointerTable_Puzzle_EP35::
    db $5d, $5c

PuzzleNamePointerTable_Puzzle_EP36::
    db $76, $5c

PuzzleNamePointerTable_Puzzle_EP37::
    db $87, $5c

PuzzleNamePointerTable_Puzzle_EP38::
    db $96, $5c

PuzzleNamePointerTable_Puzzle_EP39::
    db $a5, $5c

PuzzleNamePointerTable_Puzzle_EP3A::
    db $bc, $5c

PuzzleNamePointerTable_Puzzle_EP3B::
    db $cf, $5c

PuzzleNamePointerTable_Puzzle_EP3C::
    db $e2, $5c

PuzzleNamePointerTable_Puzzle_EP3D::
    db $01, $5d

PuzzleNamePointerTable_Puzzle_EP3E::
    db $16, $5d

PuzzleNamePointerTable_Puzzle_EP3F::
    db $27, $5d

PuzzleNamePointerTable_Puzzle_KC00::
    db $3c, $5d

PuzzleNamePointerTable_Puzzle_KC01::
    db $51, $5d

PuzzleNamePointerTable_Puzzle_KC02::
    db $5e, $5d

PuzzleNamePointerTable_Puzzle_KC03::
    db $75, $5d

PuzzleNamePointerTable_Puzzle_KC04::
    db $84, $5d

PuzzleNamePointerTable_Puzzle_KC05::
    db $91, $5d

PuzzleNamePointerTable_Puzzle_KC06::
    db $a2, $5d

PuzzleNamePointerTable_Puzzle_KC07::
    db $ad, $5d

PuzzleNamePointerTable_Puzzle_KC08::
    db $be, $5d

PuzzleNamePointerTable_Puzzle_KC09::
    db $cd, $5d

PuzzleNamePointerTable_Puzzle_KC0A::
    db $da, $5d

PuzzleNamePointerTable_Puzzle_KC0B::
    db $e5, $5d

PuzzleNamePointerTable_Puzzle_KC0C::
    db $fc, $5d

PuzzleNamePointerTable_Puzzle_KC0D::
    db $07, $5e

PuzzleNamePointerTable_Puzzle_KC0E::
    db $18, $5e

PuzzleNamePointerTable_Puzzle_KC0F::
    db $25, $5e

PuzzleNamePointerTable_Puzzle_KC10::
    db $3c, $5e

PuzzleNamePointerTable_Puzzle_KC11::
    db $4d, $5e

PuzzleNamePointerTable_Puzzle_KC12::
    db $62, $5e

PuzzleNamePointerTable_Puzzle_KC13::
    db $6d, $5e

PuzzleNamePointerTable_Puzzle_KC14::
    db $8a, $5e

PuzzleNamePointerTable_Puzzle_KC15::
    db $9b, $5e

PuzzleNamePointerTable_Puzzle_KC16::
    db $ac, $5e

PuzzleNamePointerTable_Puzzle_KC17::
    db $cd, $5e

PuzzleNamePointerTable_Puzzle_KC18::
    db $e6, $5e

PuzzleNamePointerTable_Puzzle_KC19::
    db $f3, $5e

PuzzleNamePointerTable_Puzzle_KC1A::
    db $08, $5f

PuzzleNamePointerTable_Puzzle_KC1B::
    db $15, $5f

PuzzleNamePointerTable_Puzzle_KC1C::
    db $28, $5f

PuzzleNamePointerTable_Puzzle_KC1D::
    db $35, $5f

PuzzleNamePointerTable_Puzzle_KC1E::
    db $4e, $5f

PuzzleNamePointerTable_Puzzle_KC1F::
    db $5d, $5f

PuzzleNamePointerTable_Puzzle_KC20::
    db $8e, $5f

PuzzleNamePointerTable_Puzzle_KC21::
    db $a1, $5f

PuzzleNamePointerTable_Puzzle_KC22::
    db $b8, $5f

PuzzleNamePointerTable_Puzzle_KC23::
    db $cd, $5f

PuzzleNamePointerTable_Puzzle_KC24::
    db $e4, $5f

PuzzleNamePointerTable_Puzzle_KC25::
    db $f1, $5f

PuzzleNamePointerTable_Puzzle_KC26::
    db $fc, $5f

PuzzleNamePointerTable_Puzzle_KC27::
    db $13, $60

PuzzleNamePointerTable_Puzzle_KC28::
    db $32, $60

PuzzleNamePointerTable_Puzzle_KC29::
    db $4b, $60

PuzzleNamePointerTable_Puzzle_KC2A::
    db $58, $60

PuzzleNamePointerTable_Puzzle_KC2B::
    db $69, $60

PuzzleNamePointerTable_Puzzle_KC2C::
    db $8c, $60

PuzzleNamePointerTable_Puzzle_KC2D::
    db $a9, $60

PuzzleNamePointerTable_Puzzle_KC2E::
    db $b6, $60

PuzzleNamePointerTable_Puzzle_KC2F::
    db $d1, $60

PuzzleNamePointerTable_Puzzle_KC30::
    db $de, $60

PuzzleNamePointerTable_Puzzle_KC31::
    db $ef, $60

PuzzleNamePointerTable_Puzzle_KC32::
    db $fe, $60

PuzzleNamePointerTable_Puzzle_KC33::
    db $0d, $61

PuzzleNamePointerTable_Puzzle_KC34::
    db $20, $61

PuzzleNamePointerTable_Puzzle_KC35::
    db $31, $61

PuzzleNamePointerTable_Puzzle_KC36::
    db $40, $61

PuzzleNamePointerTable_Puzzle_KC37::
    db $59, $61

PuzzleNamePointerTable_Puzzle_KC38::
    db $68, $61

PuzzleNamePointerTable_Puzzle_KC39::
    db $8b, $61

PuzzleNamePointerTable_Puzzle_KC3A::
    db $ae, $61

PuzzleNamePointerTable_Puzzle_KC3B::
    db $bb, $61

PuzzleNamePointerTable_Puzzle_KC3C::
    db $d4, $61

PuzzleNamePointerTable_Puzzle_KC3D::
    db $e7, $61

PuzzleNamePointerTable_Puzzle_KC3E::
    db $10, $62

PuzzleNamePointerTable_Puzzle_KC3F::
    db $27, $62

PuzzleNamePointerTable_Puzzle_SC00::
    db $3c, $62

PuzzleNamePointerTable_Puzzle_SC01::
    db $59, $62

PuzzleNamePointerTable_Puzzle_SC02::
    db $68, $62

PuzzleNamePointerTable_Puzzle_SC03::
    db $85, $62

PuzzleNamePointerTable_Puzzle_SC04::
    db $a6, $62

PuzzleNamePointerTable_Puzzle_SC05::
    db $b5, $62

PuzzleNamePointerTable_Puzzle_SC06::
    db $c2, $62

PuzzleNamePointerTable_Puzzle_SC07::
    db $d7, $62

PuzzleNamePointerTable_Puzzle_SC08::
    db $f0, $62

PuzzleNamePointerTable_Puzzle_SC09::
    db $03, $63

PuzzleNamePointerTable_Puzzle_SC0A::
    db $16, $63

PuzzleNamePointerTable_Puzzle_SC0B::
    db $29, $63

PuzzleNamePointerTable_Puzzle_SC0C::
    db $40, $63

PuzzleNamePointerTable_Puzzle_SC0D::
    db $5b, $63

PuzzleNamePointerTable_Puzzle_SC0E::
    db $76, $63

PuzzleNamePointerTable_Puzzle_SC0F::
    db $85, $63

PuzzleNamePointerTable_Puzzle_SC10::
    db $96, $63

PuzzleNamePointerTable_Puzzle_SC11::
    db $ad, $63

PuzzleNamePointerTable_Puzzle_SC12::
    db $bc, $63

PuzzleNamePointerTable_Puzzle_SC13::
    db $cd, $63

PuzzleNamePointerTable_Puzzle_SC14::
    db $da, $63

PuzzleNamePointerTable_Puzzle_SC15::
    db $ef, $63

PuzzleNamePointerTable_Puzzle_SC16::
    db $0c, $64

PuzzleNamePointerTable_Puzzle_SC17::
    db $2f, $64

PuzzleNamePointerTable_Puzzle_SC18::
    db $3e, $64

PuzzleNamePointerTable_Puzzle_SC19::
    db $5d, $64

PuzzleNamePointerTable_Puzzle_SC1A::
    db $72, $64

PuzzleNamePointerTable_Puzzle_SC1B::
    db $8b, $64

PuzzleNamePointerTable_Puzzle_SC1C::
    db $b2, $64

PuzzleNamePointerTable_Puzzle_SC1D::
    db $cb, $64

PuzzleNamePointerTable_Puzzle_SC1E::
    db $d6, $64

PuzzleNamePointerTable_Puzzle_SC1F::
    db $e5, $64

PuzzleNamePointerTable_Puzzle_SC20::
    db $f6, $64

PuzzleNamePointerTable_Puzzle_SC21::
    db $0d, $65

PuzzleNamePointerTable_Puzzle_SC22::
    db $1a, $65

PuzzleNamePointerTable_Puzzle_SC23::
    db $27, $65

PuzzleNamePointerTable_Puzzle_SC24::
    db $32, $65

PuzzleNamePointerTable_Puzzle_SC25::
    db $51, $65

PuzzleNamePointerTable_Puzzle_SC26::
    db $66, $65

PuzzleNamePointerTable_Puzzle_SC27::
    db $7b, $65

PuzzleNamePointerTable_Puzzle_SC28::
    db $88, $65

PuzzleNamePointerTable_Puzzle_SC29::
    db $99, $65

PuzzleNamePointerTable_Puzzle_SC2A::
    db $a6, $65

PuzzleNamePointerTable_Puzzle_SC2B::
    db $b3, $65

PuzzleNamePointerTable_Puzzle_SC2C::
    db $c8, $65

PuzzleNamePointerTable_Puzzle_SC2D::
    db $dd, $65

PuzzleNamePointerTable_Puzzle_SC2E::
    db $02, $66

PuzzleNamePointerTable_Puzzle_SC2F::
    db $0d, $66

PuzzleNamePointerTable_Puzzle_SC30::
    db $2e, $66

PuzzleNamePointerTable_Puzzle_SC31::
    db $3d, $66

PuzzleNamePointerTable_Puzzle_SC32::
    db $50, $66

PuzzleNamePointerTable_Puzzle_SC33::
    db $5b, $66

PuzzleNamePointerTable_Puzzle_SC34::
    db $7c, $66

PuzzleNamePointerTable_Puzzle_SC35::
    db $89, $66

PuzzleNamePointerTable_Puzzle_SC36::
    db $9e, $66

PuzzleNamePointerTable_Puzzle_SC37::
    db $af, $66

PuzzleNamePointerTable_Puzzle_SC38::
    db $c0, $66

PuzzleNamePointerTable_Puzzle_SC39::
    db $d1, $66

PuzzleNamePointerTable_Puzzle_SC3A::
    db $e4, $66

PuzzleNamePointerTable_Puzzle_SC3B::
    db $fb, $66

PuzzleNamePointerTable_Puzzle_SC3C::
    db $12, $67

PuzzleNamePointerTable_Puzzle_SC3D::
    db $23, $67

PuzzleNamePointerTable_Puzzle_SC3E::
    db $30, $67

PuzzleNamePointerTable_Puzzle_SC3F::
    db $3d, $67

PuzzleNamePointerTable_Puzzle_TT00::
    db $54, $67

PuzzleNamePointerTable_Puzzle_TT01::
    db $63, $67

PuzzleNamePointerTable_Puzzle_TT02::
    db $6e, $67

PuzzleNamePointerTable_Puzzle_TT03::
    db $95, $67

PuzzleNamePointerTable_Puzzle_TT04::
    db $b0, $67

PuzzleNamePointerTable_Puzzle_TT05::
    db $cb, $67

PuzzleNamePointerTable_Puzzle_TT06::
    db $e2, $67

PuzzleNamePointerTable_Puzzle_TT07::
    db $f3, $67

PuzzleNamePointerTable_Puzzle_TT08::
    db $04, $68

PuzzleNamePointerTable_Puzzle_TT09::
    db $11, $68

PuzzleNamePointerTable_Puzzle_TT0A::
    db $22, $68

PuzzleNamePointerTable_Puzzle_TT0B::
    db $2f, $68

PuzzleNamePointerTable_Puzzle_TT0C::
    db $42, $68

PuzzleNamePointerTable_Puzzle_TT0D::
    db $65, $68

PuzzleNamePointerTable_Puzzle_TT0E::
    db $7c, $68

PuzzleNamePointerTable_Puzzle_TT0F::
    db $8f, $68

PuzzleNamePointerTable_Puzzle_TT10::
    db $9e, $68

PuzzleNamePointerTable_Puzzle_TT11::
    db $b1, $68

PuzzleNamePointerTable_Puzzle_TT12::
    db $be, $68

PuzzleNamePointerTable_Puzzle_TT13::
    db $cf, $68

PuzzleNamePointerTable_Puzzle_TT14::
    db $dc, $68

PuzzleNamePointerTable_Puzzle_TT15::
    db $fd, $68

PuzzleNamePointerTable_Puzzle_TT16::
    db $08, $69

PuzzleNamePointerTable_Puzzle_TT17::
    db $13, $69

PuzzleNamePointerTable_Puzzle_TT18::
    db $34, $69

PuzzleNamePointerTable_Puzzle_TT19::
    db $43, $69

PuzzleNamePointerTable_Puzzle_TT1A::
    db $52, $69

PuzzleNamePointerTable_Puzzle_TT1B::
    db $5d, $69

PuzzleNamePointerTable_Puzzle_TT1C::
    db $70, $69

PuzzleNamePointerTable_Puzzle_TT1D::
    db $85, $69

PuzzleNamePointerTable_Puzzle_TT1E::
    db $9a, $69

PuzzleNamePointerTable_Puzzle_TT1F::
    db $a5, $69

PuzzleNamePointerTable_Puzzle_TT20::
    db $c0, $69

PuzzleNamePointerTable_Puzzle_TT21::
    db $dd, $69

PuzzleNamePointerTable_Puzzle_TT22::
    db $ee, $69

PuzzleNamePointerTable_Puzzle_TT23::
    db $0d, $6a

PuzzleNamePointerTable_Puzzle_TT24::
    db $1e, $6a

PuzzleNamePointerTable_Puzzle_TT25::
    db $3b, $6a

PuzzleNamePointerTable_Puzzle_TT26::
    db $4a, $6a

PuzzleNamePointerTable_Puzzle_TT27::
    db $63, $6a

PuzzleNamePointerTable_Puzzle_TT28::
    db $82, $6a

PuzzleNamePointerTable_Puzzle_TT29::
    db $91, $6a

PuzzleNamePointerTable_Puzzle_TT2A::
    db $a8, $6a

PuzzleNamePointerTable_Puzzle_TT2B::
    db $bd, $6a

PuzzleNamePointerTable_Puzzle_TT2C::
    db $d2, $6a

PuzzleNamePointerTable_Puzzle_TT2D::
    db $e5, $6a

PuzzleNamePointerTable_Puzzle_TT2E::
    db $f4, $6a

PuzzleNamePointerTable_Puzzle_TT2F::
    db $01, $6b

PuzzleNamePointerTable_Puzzle_TT30::
    db $10, $6b

PuzzleNamePointerTable_Puzzle_TT31::
    db $31, $6b

PuzzleNamePointerTable_Puzzle_TT32::
    db $40, $6b

PuzzleNamePointerTable_Puzzle_TT33::
    db $57, $6b

PuzzleNamePointerTable_Puzzle_TT34::
    db $6c, $6b

PuzzleNamePointerTable_Puzzle_TT35::
    db $7b, $6b

PuzzleNamePointerTable_Puzzle_TT36::
    db $8e, $6b

PuzzleNamePointerTable_Puzzle_TT37::
    db $a1, $6b

PuzzleNamePointerTable_Puzzle_TT38::
    db $ba, $6b

PuzzleNamePointerTable_Puzzle_TT39::
    db $cb, $6b

PuzzleNamePointerTable_Puzzle_TT3A::
    db $d8, $6b

PuzzleNamePointerTable_Puzzle_TT3B::
    db $f1, $6b

PuzzleNamePointerTable_Puzzle_TT3C::
    db $0c, $6c

PuzzleNamePointerTable_Puzzle_TT3D::
    db $21, $6c

PuzzleNamePointerTable_Puzzle_TT3E::
    db $3a, $6c

PuzzleNamePointerTable_Puzzle_TT3F::
    db $4f, $6c

Puzzle_EP08_note_Name::
    db $4d, $60, "note", $ff, $ff, $00

Puzzle_EP09_diamond_Name::
    db $45, $60, "diamond", $ff, $ff, $00

Puzzle_EP0A_spade_Name::
    db $4a, $60, "spade", $ff, $ff, $00

Puzzle_EP0B_heart_Name::
    db $4a, $60, "heart", $ff, $ff, $00

Puzzle_EP0C_clover_Name::
    db $48, $60, "clover", $ff, $ff, $00

Puzzle_EP0D_question_mark_Name::
    db $43, $5b, "question", $ff, $ff

    db $4c, $64, "mark", $ff, $ff, $00

Puzzle_EP0E_dollar_sign_Name::
    db $49, $5b, "dollar", $ff, $ff

    db $4f, $64, "sign", $ff, $ff, $00

Puzzle_EP0F_arrow_Name::
    db $49, $60, "arrow", $ff, $ff, $00

Puzzle_EP10_crescent_Name::
    db $41, $60, "crescent", $ff, $ff, $00

Puzzle_EP11_star_Name::
    db $4d, $60, "star", $ff, $ff, $00

Puzzle_EP12_sailboat_Name::
    db $43, $60, "sailboat", $ff, $ff, $00

Puzzle_EP13_car_Name::
    db $50, $60, "car", $ff, $ff, $00

Puzzle_EP14_cactus_Name::
    db $47, $60, "cactus", $ff, $ff, $00

Puzzle_EP15_apple_Name::
    db $4b, $60, "apple", $ff, $ff, $00

Puzzle_EP16_chestnut_Name::
    db $41, $60, "chestnut", $ff, $ff, $00

Puzzle_EP17_doughnut_Name::
    db $41, $60, "doughnut", $ff, $ff, $00

Puzzle_EP18_knife_and_fork_Name::
    db $4c, $5b, "knife", $ff, $ff

    db $42, $64, "and fork", $ff, $ff, $00

Puzzle_EP19_flag_Name::
    db $4e, $60, "flag", $ff, $ff, $00

Puzzle_EP1A_cup_Name::
    db $50, $60, "cup", $ff, $ff, $00

Puzzle_EP1B_flask_Name::
    db $4b, $60, "flask", $ff, $ff, $00

Puzzle_EP1C_house_Name::
    db $4a, $60, "house", $ff, $ff, $00

Puzzle_EP1D_glove_Name::
    db $4b, $60, "glove", $ff, $ff, $00

Puzzle_EP1E_balloon_Name::
    db $46, $60, "balloon", $ff, $ff, $00

Puzzle_EP1F_pencil_Name::
    db $4a, $60, "pencil", $ff, $ff, $00

Puzzle_EP20_pot_Name::
    db $50, $60, "pot", $ff, $ff, $00

Puzzle_EP21_umbrella_Name::
    db $42, $60, "umbrella", $ff, $ff, $00

Puzzle_EP22_bell_Name::
    db $4f, $60, "bell", $ff, $ff, $00

Puzzle_EP23_boot_Name::
    db $4d, $60, "boot", $ff, $ff, $00

Puzzle_EP24_candle_Name::
    db $48, $60, "candle", $ff, $ff, $00

Puzzle_EP25_faucet_Name::
    db $47, $60, "faucet", $ff, $ff, $00

Puzzle_EP26_bulb_Name::
    db $4e, $60, "bulb", $ff, $ff, $00

Puzzle_EP27_anchor_Name::
    db $47, $60, "anchor", $ff, $ff, $00

Puzzle_EP28_choplifter_Name::
    db $3e, $60, "choplifter", $ff, $ff, $00

Puzzle_EP29_ball_Name::
    db $4f, $60, "ball", $ff, $ff, $00

Puzzle_EP2A_BOO_DIDDLY_Name::
    db $4f, $5b, "BOO", $ff, $ff

    db $46, $64, "DIDDLY", $ff, $ff, $00

Puzzle_EP2B_panda_Name::
    db $49, $60, "panda", $ff, $ff, $00

Puzzle_EP2C_wild_duck_Name::
    db $42, $60, "wild duck", $ff, $ff, $00

Puzzle_EP2D_chicken_Name::
    db $46, $60, "chicken", $ff, $ff, $00

Puzzle_EP2E_snail_Name::
    db $4c, $60, "snail", $ff, $ff, $00

Puzzle_EP2F_MARIO_Name::
    db $4a, $60, "MARIO", $ff, $ff, $00

Puzzle_EP30_lipstick_Name::
    db $54, $78, "lipstick", $ff, $ff, $00

Puzzle_EP31_silk_hat_Name::
    db $54, $78, "silk hat", $ff, $ff, $00

Puzzle_EP32_ax_Name::
    db $62, $78, "ax", $ff, $ff, $00

Puzzle_EP33_wood_stove_Name::
    db $4b, $78, "wood stove", $ff, $ff, $00

Puzzle_EP34_locomotive_Name::
    db $4c, $78, "locomotive", $ff, $ff, $00

Puzzle_EP35_frozen_pop_Name::
    db $4c, $78, "frozen pop", $ff, $ff, $00

Puzzle_EP36_carrot_Name::
    db $56, $78, "carrot", $ff, $ff, $00

Puzzle_EP37_whale_Name::
    db $59, $78, "whale", $ff, $ff, $00

Puzzle_EP38_chair_Name::
    db $5a, $78, "chair", $ff, $ff, $00

Puzzle_EP39_hourglass_Name::
    db $4e, $78, "hourglass", $ff, $ff, $00

Puzzle_EP3A_bottles_Name::
    db $54, $78, "bottles", $ff, $ff, $00

Puzzle_EP3B_skillet_Name::
    db $57, $78, "skillet", $ff, $ff, $00

Puzzle_EP3C_coffee_maker_Name::
    db $56, $73, "coffee", $ff, $ff

    db $58, $7c, "maker", $ff, $ff, $00

Puzzle_EP3D_mail_box_Name::
    db $53, $78, "mail box", $ff, $ff, $00

Puzzle_EP3E_camera_Name::
    db $55, $78, "camera", $ff, $ff, $00

Puzzle_EP3F_scissors_Name::
    db $52, $78, "scissors", $ff, $ff, $00

Puzzle_KC00_GAME_BOY_Name::
    db $4e, $78, "GAME BOY", $ff, $ff, $00

Puzzle_KC01_STAR_Name::
    db $5a, $78, "STAR", $ff, $ff, $00

Puzzle_KC02_high_heel_Name::
    db $50, $78, "high-heel", $ff, $ff, $00

Puzzle_KC03_bread_Name::
    db $59, $78, "bread", $ff, $ff, $00

Puzzle_KC04_cake_Name::
    db $5c, $78, "cake", $ff, $ff, $00

Puzzle_KC05_hanger_Name::
    db $56, $78, "hanger", $ff, $ff, $00

Puzzle_KC06_bus_Name::
    db $5f, $78, "bus", $ff, $ff, $00

Puzzle_KC07_tinkle_Name::
    db $59, $78, "tinkle", $ff, $ff, $00

Puzzle_KC08_skate_Name::
    db $59, $78, "skate", $ff, $ff, $00

Puzzle_KC09_shoe_Name::
    db $5c, $78, "shoe", $ff, $ff, $00

Puzzle_KC0A_cap_Name::
    db $5f, $78, "cap", $ff, $ff, $00

Puzzle_KC0B_telephone_Name::
    db $4e, $78, "telephone", $ff, $ff, $00

Puzzle_KC0C_can_Name::
    db $5f, $78, "can", $ff, $ff, $00

Puzzle_KC0D_garlic_Name::
    db $58, $78, "garlic", $ff, $ff, $00

Puzzle_KC0E_hand_Name::
    db $5c, $78, "hand", $ff, $ff, $00

Puzzle_KC0F_hamburger_Name::
    db $4c, $78, "hamburger", $ff, $ff, $00

Puzzle_KC10_shovel_Name::
    db $57, $78, "shovel", $ff, $ff, $00

Puzzle_KC11_necklace_Name::
    db $51, $78, "necklace", $ff, $ff, $00

Puzzle_KC12_UFO_Name::
    db $5e, $78, "UFO", $ff, $ff, $00

Puzzle_KC13_BULLET_BILL_Name::
    db $53, $73, "BULLET", $ff, $ff

    db $5c, $7c, "BILL", $ff, $ff, $00

Puzzle_KC14_tomato_Name::
    db $55, $78, "tomato", $ff, $ff, $00

Puzzle_KC15_flower_Name::
    db $57, $78, "flower", $ff, $ff, $00

Puzzle_KC16_GRAND_GOOMBAS_Name::
    db $57, $73, "GRAND", $ff, $ff

    db $50, $7c, "GOOMBAS", $ff, $ff, $00

Puzzle_KC17_coffee_cup_Name::
    db $4c, $78, "coffee cup", $ff, $ff, $00

Puzzle_KC18_mutt_Name::
    db $5c, $78, "mutt", $ff, $ff, $00

Puzzle_KC19_overalls_Name::
    db $52, $78, "overalls", $ff, $ff, $00

Puzzle_KC1A_leaf_Name::
    db $5d, $78, "leaf", $ff, $ff, $00

Puzzle_KC1B_unicorn_Name::
    db $55, $78, "unicorn", $ff, $ff, $00

Puzzle_KC1C_bull_Name::
    db $5e, $78, "bull", $ff, $ff, $00

Puzzle_KC1D_controller_Name::
    db $4c, $78, "controller", $ff, $ff, $00

Puzzle_KC1E_onion_Name::
    db $5b, $78, "onion", $ff, $ff, $00

Puzzle_KC1F_skull_and_crossbones_Name::
    db $5b, $6f, "skull", $ff, $ff

    db $5f, $78, "and", $ff, $ff

    db $4a, $81, "crossbones", $ff, $ff, $00

Puzzle_KC20_snowman_Name::
    db $52, $78, "snowman", $ff, $ff, $00

Puzzle_KC21_chameleon_Name::
    db $4d, $78, "chameleon", $ff, $ff, $00

Puzzle_KC22_cucumber_Name::
    db $50, $78, "cucumber", $ff, $ff, $00

Puzzle_KC23_buildings_Name::
    db $51, $78, "buildings", $ff, $ff, $00

Puzzle_KC24_pear_Name::
    db $5c, $78, "pear", $ff, $ff, $00

Puzzle_KC25_owl_Name::
    db $60, $78, "owl", $ff, $ff, $00

Puzzle_KC26_rice_ball_Name::
    db $52, $78, "rice ball", $ff, $ff, $00

Puzzle_KC27_soap_bubbles_Name::
    db $5c, $73, "soap", $ff, $ff

    db $54, $7c, "bubbles", $ff, $ff, $00

Puzzle_KC28_baby_buggy_Name::
    db $4b, $78, "baby buggy", $ff, $ff, $00

Puzzle_KC29_bomb_Name::
    db $5c, $78, "bomb", $ff, $ff, $00

Puzzle_KC2A_kettle_Name::
    db $57, $78, "kettle", $ff, $ff, $00

Puzzle_KC2B_weight_lifting_Name::
    db $57, $73, "weight", $ff, $ff

    db $57, $7c, "lifting", $ff, $ff, $00

Puzzle_KC2C_coffee_mill_Name::
    db $56, $73, "coffee", $ff, $ff

    db $5f, $7c, "mill", $ff, $ff, $00

Puzzle_KC2D_plug_Name::
    db $5d, $78, "plug", $ff, $ff, $00

Puzzle_KC2E_sun_glasses_Name::
    db $48, $78, "sun-glasses", $ff, $ff, $00

Puzzle_KC2F_crow_Name::
    db $5c, $78, "crow", $ff, $ff, $00

Puzzle_KC30_vacuum_Name::
    db $55, $78, "vacuum", $ff, $ff, $00

Puzzle_KC31_NESSY_Name::
    db $57, $78, "NESSY", $ff, $ff, $00

Puzzle_KC32_camel_Name::
    db $59, $78, "camel", $ff, $ff, $00

Puzzle_KC33_oranges_Name::
    db $53, $78, "oranges", $ff, $ff, $00

Puzzle_KC34_bucket_Name::
    db $56, $78, "bucket", $ff, $ff, $00

Puzzle_KC35_angel_Name::
    db $5a, $78, "angel", $ff, $ff, $00

Puzzle_KC36_racing_car_Name::
    db $4c, $78, "racing car", $ff, $ff, $00

Puzzle_KC37_purse_Name::
    db $59, $78, "purse", $ff, $ff, $00

Puzzle_KC38_rocking_horse_Name::
    db $52, $73, "rocking-", $ff, $ff

    db $59, $7c, "horse", $ff, $ff, $00

Puzzle_KC39_ice_cream_cone_Name::
    db $4e, $73, "ice-cream", $ff, $ff

    db $5c, $7c, "cone", $ff, $ff, $00

Puzzle_KC3A_deer_Name::
    db $5c, $78, "deer", $ff, $ff, $00

Puzzle_KC3B_strawberry_Name::
    db $49, $78, "strawberry", $ff, $ff, $00

Puzzle_KC3C_bicycle_Name::
    db $56, $78, "bicycle", $ff, $ff, $00

Puzzle_KC3D_atlantic_penguin_Name::
    db $4f, $73, "atlantic-", $ff, $ff

    db $55, $7c, "penguin", $ff, $ff, $00

Puzzle_KC3E_ambulance_Name::
    db $4d, $78, "ambulance", $ff, $ff, $00

Puzzle_KC3F_back_hoe_Name::
    db $51, $78, "back hoe", $ff, $ff, $00

Puzzle_SC00_bubble_pipe_Name::
    db $57, $73, "bubble", $ff, $ff

    db $5e, $7c, "pipe", $ff, $ff, $00

Puzzle_SC01_shirt_Name::
    db $5b, $78, "shirt", $ff, $ff, $00

Puzzle_SC02_hermit_crab_Name::
    db $57, $73, "hermit", $ff, $ff

    db $5c, $7c, "crab", $ff, $ff, $00

Puzzle_SC03_shooting_star_Name::
    db $52, $73, "shooting", $ff, $ff

    db $5c, $7c, "star", $ff, $ff, $00

Puzzle_SC04_acorn_Name::
    db $59, $78, "acorn", $ff, $ff, $00

Puzzle_SC05_lamp_Name::
    db $5c, $78, "lamp", $ff, $ff, $00

Puzzle_SC06_sun_fish_Name::
    db $53, $78, "sun fish", $ff, $ff, $00

Puzzle_SC07_green_peas_Name::
    db $4b, $78, "green peas", $ff, $ff, $00

Puzzle_SC08_ladybug_Name::
    db $54, $78, "ladybug", $ff, $ff, $00

Puzzle_SC09_balance_Name::
    db $53, $78, "balance", $ff, $ff, $00

Puzzle_SC0A_samurai_Name::
    db $53, $78, "samurai", $ff, $ff, $00

Puzzle_SC0B_wild_duck_Name::
    db $51, $78, "wild duck", $ff, $ff, $00

Puzzle_SC0C_MINI_YOSHI_Name::
    db $5e, $73, "MINI", $ff, $ff

    db $59, $7c, "YOSHI", $ff, $ff, $00

Puzzle_SC0D_weathercock_Name::
    db $46, $78, "weathercock", $ff, $ff, $00

Puzzle_SC0E_crown_Name::
    db $59, $78, "crown", $ff, $ff, $00

Puzzle_SC0F_poodle_Name::
    db $57, $78, "poodle", $ff, $ff, $00

Puzzle_SC10_scarecrow_Name::
    db $4c, $78, "scarecrow", $ff, $ff, $00

Puzzle_SC11_grape_Name::
    db $59, $78, "grape", $ff, $ff, $00

Puzzle_SC12_cannon_Name::
    db $56, $78, "cannon", $ff, $ff, $00

Puzzle_SC13_ship_Name::
    db $5e, $78, "ship", $ff, $ff, $00

Puzzle_SC14_duckbill_Name::
    db $54, $78, "duckbill", $ff, $ff, $00

Puzzle_SC15_crab_beetle_Name::
    db $5c, $73, "crab", $ff, $ff

    db $57, $7c, "beetle", $ff, $ff, $00

Puzzle_SC16_christmas_tree_Name::
    db $4e, $73, "christmas", $ff, $ff

    db $5c, $7c, "tree", $ff, $ff, $00

Puzzle_SC17_tiger_Name::
    db $5b, $78, "tiger", $ff, $ff, $00

Puzzle_SC18_bowling_pins_Name::
    db $55, $73, "bowling", $ff, $ff

    db $5e, $7c, "pins", $ff, $ff, $00

Puzzle_SC19_sea_lion_Name::
    db $54, $78, "sea lion", $ff, $ff, $00

Puzzle_SC1A_SUN_FLOWER_Name::
    db $46, $78, "SUN-FLOWER", $ff, $ff, $00

Puzzle_SC1B_ice_cream_sundae_Name::
    db $4e, $73, "ice-cream", $ff, $ff

    db $56, $7c, "sundae", $ff, $ff, $00

Puzzle_SC1C_cowboy_hat_Name::
    db $4b, $78, "cowboy hat", $ff, $ff, $00

Puzzle_SC1D_ray_Name::
    db $5f, $78, "ray", $ff, $ff, $00

Puzzle_SC1E_SPINY_Name::
    db $59, $78, "SPINY", $ff, $ff, $00

Puzzle_SC1F_cherry_Name::
    db $56, $78, "cherry", $ff, $ff, $00

Puzzle_SC20_palm_tree_Name::
    db $4f, $78, "palm tree", $ff, $ff, $00

Puzzle_SC21_tank_Name::
    db $5c, $78, "tank", $ff, $ff, $00

Puzzle_SC22_hawk_Name::
    db $5b, $78, "hawk", $ff, $ff, $00

Puzzle_SC23_fly_Name::
    db $60, $78, "fly", $ff, $ff, $00

Puzzle_SC24_spinning_top_Name::
    db $53, $73, "spinning", $ff, $ff

    db $5f, $7c, "top", $ff, $ff, $00

Puzzle_SC25_MUSHROOM_Name::
    db $4c, $78, "MUSHROOM", $ff, $ff, $00

Puzzle_SC26_squirrel_Name::
    db $53, $78, "squirrel", $ff, $ff, $00

Puzzle_SC27_bath_Name::
    db $5c, $78, "bath", $ff, $ff, $00

Puzzle_SC28_skiing_Name::
    db $59, $78, "skiing", $ff, $ff, $00

Puzzle_SC29_coat_Name::
    db $5c, $78, "coat", $ff, $ff, $00

Puzzle_SC2A_crab_Name::
    db $5c, $78, "crab", $ff, $ff, $00

Puzzle_SC2B_goldfish_Name::
    db $53, $78, "goldfish", $ff, $ff, $00

Puzzle_SC2C_reindeer_Name::
    db $52, $78, "reindeer", $ff, $ff, $00

Puzzle_SC2D_jack_o_lantern_Name::
    db $59, $73, "jack-", $ff, $ff

    db $4e, $7c, "o-lantern", $ff, $ff, $00

Puzzle_SC2E_mud_Name::
    db $5f, $78, "mud", $ff, $ff, $00

Puzzle_SC2F_chili_peppers_Name::
    db $5d, $73, "chili", $ff, $ff

    db $53, $7c, "peppers", $ff, $ff, $00

Puzzle_SC30_radar_Name::
    db $58, $78, "radar", $ff, $ff, $00

Puzzle_SC31_mermaid_Name::
    db $53, $78, "mermaid", $ff, $ff, $00

Puzzle_SC32_fox_Name::
    db $5f, $78, "fox", $ff, $ff, $00

Puzzle_SC33_sumo_wrestler_Name::
    db $5c, $73, "sumo", $ff, $ff

    db $51, $7c, "wrestler", $ff, $ff, $00

Puzzle_SC34_frog_Name::
    db $5c, $78, "frog", $ff, $ff, $00

Puzzle_SC35_cat_fish_Name::
    db $53, $78, "cat fish", $ff, $ff, $00

Puzzle_SC36_racket_Name::
    db $56, $78, "racket", $ff, $ff, $00

Puzzle_SC37_guitar_Name::
    db $57, $78, "guitar", $ff, $ff, $00

Puzzle_SC38_spider_Name::
    db $58, $78, "spider", $ff, $ff, $00

Puzzle_SC39_pelican_Name::
    db $55, $78, "pelican", $ff, $ff, $00

Puzzle_SC3A_dragonfly_Name::
    db $4e, $78, "dragonfly", $ff, $ff, $00

Puzzle_SC3B_wild_boar_Name::
    db $50, $78, "wild boar", $ff, $ff, $00

Puzzle_SC3C_beetle_Name::
    db $57, $78, "beetle", $ff, $ff, $00

Puzzle_SC3D_seal_Name::
    db $5d, $78, "seal", $ff, $ff, $00

Puzzle_SC3E_kite_Name::
    db $5e, $78, "kite", $ff, $ff, $00

Puzzle_SC3F_armadillo_Name::
    db $4f, $78, "armadillo", $ff, $ff, $00

Puzzle_TT00_witch_Name::
    db $5a, $78, "witch", $ff, $ff, $00

Puzzle_TT01_bow_Name::
    db $5f, $78, "bow", $ff, $ff, $00

Puzzle_TT02_Man_in_the_moon_Name::
    db $5e, $6f, "Man", $ff, $ff

    db $64, $78, "in", $ff, $ff

    db $51, $81, "the moon", $ff, $ff, $00

Puzzle_TT03_alarm_clock_Name::
    db $49, $78, "alarm clock", $ff, $ff, $00

Puzzle_TT04_water_melon_Name::
    db $48, $78, "water melon", $ff, $ff, $00

Puzzle_TT05_straw_hat_Name::
    db $4d, $78, "straw hat", $ff, $ff, $00

Puzzle_TT06_rocket_Name::
    db $56, $78, "rocket", $ff, $ff, $00

Puzzle_TT07_rabbit_Name::
    db $57, $78, "rabbit", $ff, $ff, $00

Puzzle_TT08_bird_Name::
    db $5e, $78, "bird", $ff, $ff, $00

Puzzle_TT09_banana_Name::
    db $55, $78, "banana", $ff, $ff, $00

Puzzle_TT0A_corn_Name::
    db $5c, $78, "corn", $ff, $ff, $00

Puzzle_TT0B_ostrich_Name::
    db $55, $78, "ostrich", $ff, $ff, $00

Puzzle_TT0C_TERUTERU_BOUZU_Name::
    db $4c, $73, "TERUTERU", $ff, $ff

    db $57, $7c, "BOUZU", $ff, $ff, $00

Puzzle_TT0D_pineapple_Name::
    db $4f, $78, "pineapple", $ff, $ff, $00

Puzzle_TT0E_feather_Name::
    db $53, $78, "feather", $ff, $ff, $00

Puzzle_TT0F_mouse_Name::
    db $59, $78, "mouse", $ff, $ff, $00

Puzzle_TT10_BLOOPER_Name::
    db $50, $78, "BLOOPER", $ff, $ff, $00

Puzzle_TT11_fish_Name::
    db $5e, $78, "fish", $ff, $ff, $00

Puzzle_TT12_monkey_Name::
    db $56, $78, "monkey", $ff, $ff, $00

Puzzle_TT13_dirk_Name::
    db $5e, $78, "dirk", $ff, $ff, $00

Puzzle_TT14_BUZZY_BEETLE_Name::
    db $54, $73, "BUZZY-", $ff, $ff

    db $53, $7c, "BEETLE", $ff, $ff, $00

Puzzle_TT15_bee_Name::
    db $5f, $78, "bee", $ff, $ff, $00

Puzzle_TT16_cat_Name::
    db $5f, $78, "cat", $ff, $ff, $00

Puzzle_TT17_KOOPA_TROOPAS_Name::
    db $57, $73, "KOOPA", $ff, $ff

    db $50, $7c, "TROOPAS", $ff, $ff, $00

Puzzle_TT18_candy_Name::
    db $59, $78, "candy", $ff, $ff, $00

Puzzle_TT19_crane_Name::
    db $59, $78, "crane", $ff, $ff, $00

Puzzle_TT1A_ram_Name::
    db $5e, $78, "ram", $ff, $ff, $00

Puzzle_TT1B_giraffe_Name::
    db $54, $78, "giraffe", $ff, $ff, $00

Puzzle_TT1C_scorpion_Name::
    db $52, $78, "scorpion", $ff, $ff, $00

Puzzle_TT1D_kangaroo_Name::
    db $4f, $78, "kangaroo", $ff, $ff, $00

Puzzle_TT1E_pig_Name::
    db $61, $78, "pig", $ff, $ff, $00

Puzzle_TT1F_white_lion_Name::
    db $5a, $73, "white", $ff, $ff

    db $5f, $7c, "lion", $ff, $ff, $00

Puzzle_TT20_sake_bottle_Name::
    db $5c, $73, "sake", $ff, $ff

    db $57, $7c, "bottle", $ff, $ff, $00

Puzzle_TT21_flower_Name::
    db $57, $78, "flower", $ff, $ff, $00

Puzzle_TT22_friendly_dog_Name::
    db $53, $73, "friendly", $ff, $ff

    db $5f, $7c, "dog", $ff, $ff, $00

Puzzle_TT23_shrimp_Name::
    db $57, $78, "shrimp", $ff, $ff, $00

Puzzle_TT24_hippopotamus_Name::
    db $45, $78, "hippopotamus", $ff, $ff, $00

Puzzle_TT25_tulip_Name::
    db $5c, $78, "tulip", $ff, $ff, $00

Puzzle_TT26_clay_image_Name::
    db $4d, $78, "clay image", $ff, $ff, $00

Puzzle_TT27_wooden_horse_Name::
    db $56, $73, "wooden", $ff, $ff

    db $59, $7c, "horse", $ff, $ff, $00

Puzzle_TT28_socks_Name::
    db $59, $78, "socks", $ff, $ff, $00

Puzzle_TT29_butterfly_Name::
    db $4e, $78, "butterfly", $ff, $ff, $00

Puzzle_TT2A_tortoise_Name::
    db $52, $78, "tortoise", $ff, $ff, $00

Puzzle_TT2B_football_Name::
    db $52, $78, "football", $ff, $ff, $00

Puzzle_TT2C_scooter_Name::
    db $53, $78, "scooter", $ff, $ff, $00

Puzzle_TT2D_koala_Name::
    db $59, $78, "koala", $ff, $ff, $00

Puzzle_TT2E_lock_Name::
    db $5d, $78, "lock", $ff, $ff, $00

Puzzle_TT2F_chick_Name::
    db $5b, $78, "chick", $ff, $ff, $00

Puzzle_TT30_CHEEP_CHEEPS_Name::
    db $54, $73, "CHEEP-", $ff, $ff

    db $53, $7c, "CHEEPS", $ff, $ff, $00

Puzzle_TT31_snake_Name::
    db $59, $78, "snake", $ff, $ff, $00

Puzzle_TT32_white_eye_Name::
    db $50, $78, "white eye", $ff, $ff, $00

Puzzle_TT33_elephant_Name::
    db $51, $78, "elephant", $ff, $ff, $00

Puzzle_TT34_horse_Name::
    db $59, $78, "horse", $ff, $ff, $00

Puzzle_TT35_tea_cup_Name::
    db $54, $78, "tea cup", $ff, $ff, $00

Puzzle_TT36_pegasus_Name::
    db $53, $78, "pegasus", $ff, $ff, $00

Puzzle_TT37_rhinoceros_Name::
    db $4c, $78, "rhinoceros", $ff, $ff, $00

Puzzle_TT38_angler_Name::
    db $57, $78, "angler", $ff, $ff, $00

Puzzle_TT39_ring_Name::
    db $5e, $78, "ring", $ff, $ff, $00

Puzzle_TT3A_woodpecker_Name::
    db $4a, $78, "woodpecker", $ff, $ff, $00

Puzzle_TT3B_Grim_Reaper_Name::
    db $48, $78, "Grim Reaper", $ff, $ff, $00

Puzzle_TT3C_hedgehog_Name::
    db $50, $78, "hedgehog", $ff, $ff, $00

Puzzle_TT3D_dump_truck_Name::
    db $4b, $78, "dump truck", $ff, $ff, $00

Puzzle_TT3E_bi_plane_Name::
    db $53, $78, "bi-plane", $ff, $ff, $00

Puzzle_TT3F_sheriff_Name::
    db $55, $78, "sheriff", $ff, $ff, $00

Puzzle_HT00_EP00_07_Name::
    db $00

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

OAMSpriteData_Event07_MistakePenalty_Minus2::
    db $10, $08, $5e, $00
    db $10, $10, $6e, $00
    db $ff

OAMSpriteData_Event08_MistakePenalty_Minus4::
    db $10, $08, $5e, $00
    db $10, $10, $5f, $00
    db $ff

OAMSpriteData_Event09_MistakePenalty_Minus8::
    db $10, $08, $5e, $00
    db $10, $10, $6f, $00
    db $ff

OAMSpriteData_Event0a_MarioSweat::
    db $10, $08, $74, $10
    db $ff

OAMSpriteData_Event0b_PuzzleCursor_ChiselIdle_Frame1::
    db $07, $08, $50, $10
    db $07, $10, $51, $10
    db $0f, $08, $60, $10
    db $0f, $10, $61, $10
    db $ff

OAMSpriteData_Event0c_PuzzleCursor_ChiselIdle_Frame2::
    db $07, $08, $50, $10
    db $07, $10, $51, $10
    db $0f, $10, $61, $10
    db $0f, $08, $52, $10
    db $ff

OAMSpriteData_Event0d_PuzzleCursor_ChiselIdle_Frame3::
    db $07, $08, $50, $10
    db $07, $10, $51, $10
    db $0f, $10, $61, $10
    db $0f, $08, $62, $10
    db $ff

OAMSpriteData_Event0e_PuzzleCursor_HammerSwing_Frame1::
    db $07, $08, $53, $10
    db $0f, $08, $63, $10
    db $04, $1b, $58, $10
    db $04, $23, $59, $10
    db $0f, $10, $64, $10
    db $0c, $1b, $68, $10
    db $07, $10, $54, $10
    db $0c, $23, $69, $10
    db $ff

OAMSpriteData_Event0f_PuzzleCursor_HammerSwing_Frame3::
    db $0f, $08, $63, $10
    db $04, $0d, $5a, $10
    db $04, $15, $5b, $10
    db $0c, $15, $6b, $10
    db $0c, $0d, $6a, $10
    db $ff

OAMSpriteData_Event10_PuzzleCursor_HammerSwing_Frame5::
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

OAMSpriteData_Event11_PuzzleCursor_HammerSwing_Frame6::
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

OAMSpriteData_Event12_PuzzleCursor_HammerSwing_Frame7::
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

OAMSpriteData_Event13_PuzzleCursor_HammerSwing_Frame8::
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

OAMSpriteData_Event14_PuzzleCursor_HammerSwing_Frame9::
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

OAMSpriteData_Event15_PuzzleCursor_HammerSwing_Frame10::
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

OAMSpriteData_Event16_PuzzleCursor_HammerSwing_Frame11::
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

OAMSpriteData_Event17_PuzzleCursor_HammerSwing_Frame12::
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

OAMSpriteData_Event18_PuzzleCursor_HammerSwing_Frame13::
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

OAMSpriteData_Event19_PuzzleCursor_HammerSwing_Frame14::
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

OAMSpriteData_Event1a_PuzzleCursor_HammerSwing_Frame15::
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

OAMSpriteData_Event1b_PuzzleCursor_HammerSwing_Frame16::
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

OAMSpriteData_Event1c_PuzzleCursor_MarkX_Frame1::
    db $0e, $04, $67, $10
    db $15, $0b, $67, $30
    db $08, $09, $53, $10
    db $08, $11, $54, $10
    db $10, $09, $63, $10
    db $10, $11, $64, $10
    db $ff

OAMSpriteData_Event1d_PuzzleCursor_MarkX_Frame2::
    db $0f, $02, $67, $30
    db $13, $07, $67, $10
    db $06, $07, $53, $10
    db $06, $0f, $54, $10
    db $0e, $07, $63, $10
    db $0e, $0f, $64, $10
    db $ff

OAMSpriteData_Event1e_PuzzleCursor_ChisleGrow::
    db $07, $08, $53, $10
    db $07, $10, $54, $10
    db $0f, $08, $63, $10
    db $0f, $10, $64, $10
    db $ff

OAMSpriteData_Event1f_PuzzleCursor_HammerSwing_Frame4::
    db $11, $0e, $64, $10
    db $09, $06, $53, $10
    db $11, $06, $63, $10
    db $09, $0e, $54, $10
    db $04, $1b, $58, $10
    db $04, $23, $59, $10
    db $0c, $1b, $68, $10
    db $0c, $23, $69, $10
    db $ff

OAMSpriteData_Event20_PuzzleCursor_HandSwipe_Frame1::
    db $0e, $06, $3c, $10
    db $0e, $0e, $3d, $10
    db $16, $06, $4c, $10
    db $16, $0e, $4d, $10
    db $ff

OAMSpriteData_Event21_PuzzleCursor_HandSwipe_Frame2::
    db $0b, $09, $3e, $10
    db $0b, $11, $3f, $10
    db $13, $09, $4e, $10
    db $13, $11, $4f, $10
    db $ff

OAMSpriteData_Event22_PuzzleCursor_HammerSwingReverse_Frame1::
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

OAMSpriteData_Event23_PuzzleCursor_HammerSwingReverse_Frame2::
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

OAMSpriteData_Event24_PuzzleCursor_HammerSwingReverse_Frame3::
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

OAMSpriteData_Event25_PuzzleCursor_HammerSwingReverse_Frame4::
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

OAMSpriteData_Event26_PuzzleCursor_HammerSwingReverse_Frame5::
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

OAMSpriteData_Event27_PuzzleCursor_HammerSwingReverse_Frame6::
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

OAMSpriteData_Event28_PuzzleCursor_HammerSwingReverse_Frame7::
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

OAMSpriteData_Event2a_PuzzleCursor_HammerSwing_Frame2::
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

OAMSpriteData_Event3c_PauseMenuRightSide::
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

OAMSpriteData_Event3e_BGMMenuRightSide::
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

OAMSpriteData_Event3f_PauseMenuConfirmPromptRightSide::
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

OAMSpriteData_Event40_PauseMenuLeftSide_SaveSelected::
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

OAMSpriteData_Event41_PauseMenuLeftSide_GiveUpSelected::
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

OAMSpriteData_Event42_PauseMenuLeftSide_BGMSelected::
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

OAMSpriteData_Event43_PauseMenuConfirmPromptLeftSide_YesSelected::
    db $10, $08, $5b, $10
    db $18, $08, $6b, $10
    db $20, $08, $6b, $10
    db $10, $10, $5c, $10
    db $28, $08, $7b, $10
    db $28, $10, $7c, $10
    db $20, $10, $6c, $10
    db $18, $10, $6a, $10
    db $ff

OAMSpriteData_Event44_PauseMenuConfirmPromptLeftSide_NoSelected::
    db $10, $08, $5b, $10
    db $18, $08, $6b, $10
    db $20, $08, $6b, $10
    db $10, $10, $5c, $10
    db $28, $08, $7b, $10
    db $28, $10, $7c, $10
    db $18, $10, $6c, $10
    db $20, $10, $6a, $10
    db $ff

OAMSpriteData_Event45_BGMMenuLeftSide_1Selected::
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

OAMSpriteData_Event46_BGMMenuLeftSide_2Selected::
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

OAMSpriteData_Event47_BGMMenuLeftSide_3Selected::
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

OAMSpriteData_Event48_BGMMenuLeftSide_4Selected::
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

OAMSpriteData_Event49_BGMMenuLeftSide_5Selected::
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

OAMSpriteData_Event4a_BGMMenuLeftSide_OffSelected::
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

OAMSpriteData_Event50_ButtonPrompt_A_TRYAGAIN::
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

OAMSpriteData_Event63_PromptFont_Space::
    db $10, $08, $1f, $00
    db $ff

OAMSpriteData_Event64_PromptFont_A::
    db $10, $08, $00, $00
    db $ff

OAMSpriteData_Event65_PromptFont_B::
    db $10, $08, $01, $00
    db $ff

OAMSpriteData_Event66_PromptFont_C::
    db $10, $08, $02, $00
    db $ff

OAMSpriteData_Event67_PromptFont_D::
    db $10, $08, $03, $00
    db $ff

OAMSpriteData_Event68_PromptFont_E::
    db $10, $08, $04, $00
    db $ff

OAMSpriteData_Event69_PromptFont_F::
    db $10, $08, $05, $00
    db $ff

OAMSpriteData_Event6a_PromptFont_G::
    db $10, $08, $06, $00
    db $ff

OAMSpriteData_Event6b_PromptFont_H::
    db $10, $08, $07, $00
    db $ff

OAMSpriteData_Event6c_PromptFont_I::
    db $10, $08, $08, $00
    db $ff

OAMSpriteData_Event6d_PromptFont_J::
    db $10, $08, $09, $00
    db $ff

OAMSpriteData_Event6e_PromptFont_K::
    db $10, $08, $0a, $00
    db $ff

OAMSpriteData_Event6f_PromptFont_L::
    db $10, $08, $0b, $00
    db $ff

OAMSpriteData_Event70_PromptFont_M::
    db $10, $08, $0c, $00
    db $ff

OAMSpriteData_Event71_PromptFont_N::
    db $10, $08, $0d, $00
    db $ff

OAMSpriteData_Event72_PromptFont_O::
    db $10, $08, $0e, $00
    db $ff

OAMSpriteData_Event73_PromptFont_P::
    db $10, $08, $0f, $00
    db $ff

OAMSpriteData_Event74_PromptFont_Q::
    db $10, $08, $10, $00
    db $ff

OAMSpriteData_Event75_PromptFont_R::
    db $10, $08, $11, $00
    db $ff

OAMSpriteData_Event76_PromptFont_S::
    db $10, $08, $12, $00
    db $ff

OAMSpriteData_Event77_PromptFont_T::
    db $10, $08, $13, $00
    db $ff

OAMSpriteData_Event78_PromptFont_U::
    db $10, $08, $14, $00
    db $ff

OAMSpriteData_Event79_PromptFont_V::
    db $10, $08, $15, $00
    db $ff

OAMSpriteData_Event7a_PromptFont_W::
    db $10, $08, $16, $00
    db $ff

OAMSpriteData_Event7b_PromptFont_X::
    db $10, $08, $17, $00
    db $ff

OAMSpriteData_Event7c_PromptFont_Y::
    db $10, $08, $18, $00
    db $ff

OAMSpriteData_Event7d_PromptFont_Z::
    db $10, $08, $19, $00
    db $ff

OAMSpriteData_Event7e_PromptFont_Apostrophe::
    db $10, $08, $1a, $00
    db $ff

OAMSpriteData_Event7f_PromptFont_DoubleQuote::
    db $10, $08, $1b, $00
    db $ff

OAMSpriteData_Event80_PromptFont_Hyphen::
    db $10, $08, $1c, $00
    db $ff

OAMSpriteData_Event81_PromptFont_Period::
    db $10, $08, $1d, $00
    db $ff

OAMSpriteData_Event82_PromptFont_Comma::
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
