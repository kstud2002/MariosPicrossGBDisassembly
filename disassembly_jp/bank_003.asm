; Disassembly of "Mario no Picross (Japan) (SGB Enhanced).gb"
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
    db $03, $fc, $00, $00, $00, $03, $fc, $00, $00, $00, $03, $3c, $00, $00, $00, $00, $00, $fc, $00, $00, $00, $00, $3c, $00, $00, $00, $00, $f0, $00, $00, $00, $00, $f0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f0, $00, $00, $00, $0f, $f3, $ff, $ff, $ff, $cf, $f3, $ff, $ff, $ff, $cf, $f3, $ff, $ff, $ff, $cf, $f3, $ff, $ff, $ff, $cf, $f3, $ff, $ff, $ff, $cf, $f3, $ff, $ff, $ff, $cf, $f3, $ff, $ff, $ff, $cf, $f0, $00, $00, $00, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

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
    db $df, $73, $9d, $6f, $5b, $67, $19, $63, $df, $73, $9d, $6f, $3c, $67, $19, $63
    db $df, $77, $ba, $6b, $58, $63, $19, $63, $df, $73, $9d, $6f, $7a, $7b, $19, $63
    db $bf, $67, $5c, $5f, $b7, $4e, $53, $46, $bf, $67, $5c, $5f, $7a, $4e, $53, $46
    db $df, $6f, $95, $57, $d2, $4a, $53, $46, $bf, $67, $5c, $5f, $f6, $7a, $53, $46
    db $9f, $5b, $1b, $4f, $13, $36, $6d, $29, $9f, $5b, $1b, $4f, $b7, $35, $6d, $29
    db $df, $67, $50, $43, $2b, $2e, $6d, $29, $9f, $5b, $1b, $4f, $72, $76, $6d, $29
    db $9f, $53, $da, $42, $90, $21, $a8, $0c, $9f, $53, $da, $42, $f5, $1c, $a8, $0c
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
    jp ReturnFromBankedJumpRestoreBank            ; $4e87: $c3 $e7 $05


TickBottomPromptBlinkSprite4E_A_START::
    ld a, [rStatePhaseTimer]                      ; $4e8a: $fa $3c $d6
    inc a                                         ; $4e8d: $3c
    cp $46                                        ; $4e8e: $fe $46
    jr c, .StoreBlinkTimerAndCheckDrawWindowSprite4E; $4e90: $38 $01

    xor a                                         ; $4e92: $af

.StoreBlinkTimerAndCheckDrawWindowSprite4E:
    ld [rStatePhaseTimer], a                      ; $4e93: $ea $3c $d6
    cp $30                                        ; $4e96: $fe $30
    jp nc, ReturnFromBankedJumpRestoreBank        ; $4e98: $d2 $e7 $05

    ld a, $4e                                     ; $4e9b: $3e $4e
    ld bc, $3088                                  ; $4e9d: $01 $88 $30
    call CopyOAMSpriteById                        ; $4ea0: $cd $cb $20
    jp ReturnFromBankedJumpRestoreBank            ; $4ea3: $c3 $e7 $05


TickBottomPromptBlinkSprite4C_A_OK::
    ld a, [rStatePhaseTimer]                      ; $4ea6: $fa $3c $d6
    inc a                                         ; $4ea9: $3c
    cp $46                                        ; $4eaa: $fe $46
    jr c, .StoreBlinkTimerAndCheckDrawWindowSprite4C; $4eac: $38 $01

    xor a                                         ; $4eae: $af

.StoreBlinkTimerAndCheckDrawWindowSprite4C:
    ld [rStatePhaseTimer], a                      ; $4eaf: $ea $3c $d6
    cp $30                                        ; $4eb2: $fe $30
    jp nc, ReturnFromBankedJumpRestoreBank        ; $4eb4: $d2 $e7 $05

    ld a, $4c                                     ; $4eb7: $3e $4c
    ld bc, $3088                                  ; $4eb9: $01 $88 $30
    call CopyOAMSpriteById                        ; $4ebc: $cd $cb $20
    jp ReturnFromBankedJumpRestoreBank            ; $4ebf: $c3 $e7 $05


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
    jp nc, ReturnFromBankedJumpRestoreBank        ; $4ed8: $d2 $e7 $05

    ld a, [rSharedAnimationFrameState]            ; $4edb: $fa $3d $d6
    add $4c                                       ; $4ede: $c6 $4c
    ld bc, $3088                                  ; $4ee0: $01 $88 $30
    call CopyOAMSpriteById                        ; $4ee3: $cd $cb $20
    jp ReturnFromBankedJumpRestoreBank            ; $4ee6: $c3 $e7 $05


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
    jp nc, ReturnFromBankedJumpRestoreBank        ; $4eff: $d2 $e7 $05

    ld a, [rSharedAnimationFrameState]            ; $4f02: $fa $3d $d6
    add $4e                                       ; $4f05: $c6 $4e
    ld bc, $3088                                  ; $4f07: $01 $88 $30
    call CopyOAMSpriteById                        ; $4f0a: $cd $cb $20
    jp ReturnFromBankedJumpRestoreBank            ; $4f0d: $c3 $e7 $05


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
    jp nc, ReturnFromBankedJumpRestoreBank        ; $4f26: $d2 $e7 $05

    ld a, [rSharedAnimationFrameState]            ; $4f29: $fa $3d $d6
    xor $01                                       ; $4f2c: $ee $01
    add $4f                                       ; $4f2e: $c6 $4f
    ld bc, $3088                                  ; $4f30: $01 $88 $30
    call CopyOAMSpriteById                        ; $4f33: $cd $cb $20
    jp ReturnFromBankedJumpRestoreBank            ; $4f36: $c3 $e7 $05


SETCHARMAP messages

ContinueSavedGameText::
    db "もんだいの とちゅうで", $fe, $ff

    db "セーブ されています｡", $fe, $ff

    db "つづきから プレイして", $fe, $ff

    db "ください｡", $ff, $ff

GameState_00_TitleScreen_PhaseDispatcher::
    ld a, [rStatePhase_Current]                   ; $4f8d: $fa $35 $d6
    rst RST_18                                    ; $4f90: $df

GS00_PhasePointer_00::
    db $9b, $4f

GS00_PhasePointer_01::
    db $4f, $50

GS00_PhasePointer_02::
    db $8a, $50

GS00_PhasePointer_03::
    db $f9, $51

GS00_PhasePointer_04::
    db $72, $53

GS00_StatePhase_00_TitleScreenInit::
    ld a, $43                                     ; $4f9b: $3e $43
    ld [rLCDCShadow], a                           ; $4f9d: $ea $2e $c3
    xor a                                         ; $4fa0: $af
    ld [rBGPShadow], a                            ; $4fa1: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $4fa4: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $4fa7: $ea $31 $c3
    ld [rSCXShadow], a                            ; $4faa: $ea $32 $c3
    ld [rSCYShadow], a                            ; $4fad: $ea $33 $c3
    call EnsureSGBMaskFreezeEnabled               ; $4fb0: $cd $84 $1f
    ld a, [rIsSuperGameBoyMode]                   ; $4fb3: $fa $3d $c3
    and a                                         ; $4fb6: $a7
    jr z, .ContinueAfterOptionalSGBTransfers      ; $4fb7: $28 $1e

    ld a, $04                                     ; $4fb9: $3e $04
    ld hl, SGBPacket_MLT_REQ_DisableMultiplayer   ; $4fbb: $21 $00 $40
    call SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress; $4fbe: $cd $9b $1e
    ld a, $04                                     ; $4fc1: $3e $04
    ld hl, $5010                                  ; $4fc3: $21 $10 $50
    call SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress; $4fc6: $cd $9b $1e
    ld a, $04                                     ; $4fc9: $3e $04
    ld hl, $6020                                  ; $4fcb: $21 $20 $60
    call SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress; $4fce: $cd $9b $1e
    ld bc, $003c                                  ; $4fd1: $01 $3c $00
    call BusyWaitDelayByBC                        ; $4fd4: $cd $00 $06

.ContinueAfterOptionalSGBTransfers:
    call FillBGMap0WithTile01                     ; $4fd7: $cd $9d $05
    call FillBGMap1WithTile01                     ; $4fda: $cd $a8 $05
    ld a, $08                                     ; $4fdd: $3e $08
    ld hl, $6800                                  ; $4fdf: $21 $00 $68
    ld de, $8800                                  ; $4fe2: $11 $00 $88
    ld bc, $1000                                  ; $4fe5: $01 $00 $10
    call BankedTileCopy                           ; $4fe8: $cd $e1 $04
    ld a, $08                                     ; $4feb: $3e $08
    ld hl, $7800                                  ; $4fed: $21 $00 $78
    ld de, $8000                                  ; $4ff0: $11 $00 $80
    ld bc, $0800                                  ; $4ff3: $01 $00 $08
    call BankedTileCopy                           ; $4ff6: $cd $e1 $04
    ld a, $0b                                     ; $4ff9: $3e $0b
    ld hl, $6800                                  ; $4ffb: $21 $00 $68
    ld de, $9800                                  ; $4ffe: $11 $00 $98
    ld bc, $0400                                  ; $5001: $01 $00 $04
    call BankedTileCopy                           ; $5004: $cd $e1 $04
    xor a                                         ; $5007: $af
    ld [rSaveSlot1PuzzleActionRuleIndex_Unused], a; $5008: $ea $66 $a0
    ld [rPuzzleDataIndexLow], a                   ; $500b: $ea $07 $d8
    ld [rPuzzleDataIndexHigh], a                  ; $500e: $ea $08 $d8
    ld [rMarioBlinkAnimationSequenceCursor], a    ; $5011: $ea $18 $d8
    ld [rMarioBlinkAnimationDelay], a             ; $5014: $ea $17 $d8
    ld [rCellEffectFrameSourceBaseIndex], a       ; $5017: $ea $10 $d8
    ld [rGS00_TitleSGBXRayBorderFlag], a          ; $501a: $ea $47 $d8
    ld [rGS00_TitleDPadXorHistory], a             ; $501d: $ea $48 $d8
    call ClearShadowOAMBuffer                     ; $5020: $cd $b3 $05
    call GS00_TickMarioBlinkAnimation             ; $5023: $cd $2b $54
    ld c, $00                                     ; $5026: $0e $00
    ld a, $01                                     ; $5028: $3e $01
    call CallSoundCommandDispatcher               ; $502a: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $502d: $cd $96 $03
    ld c, $0a                                     ; $5030: $0e $0a
    ld a, $01                                     ; $5032: $3e $01
    call CallSoundCommandDispatcher               ; $5034: $cd $b3 $03
    call EnableLCDFromShadow                      ; $5037: $cd $9f $04
    call EnsureSGBMaskFreezeDisabled              ; $503a: $cd $a2 $1f
    ld b, $03                                     ; $503d: $06 $03
    ld hl, TransitionFadePaletteTable_TitleScreen ; $503f: $21 $18 $47
    ld c, $10                                     ; $5042: $0e $10
    ld de, $00b4                                  ; $5044: $11 $b4 $00
    call PlayScreenTransitionFadeIn               ; $5047: $cd $0a $04
    ld hl, rStatePhase_Current                    ; $504a: $21 $35 $d6
    inc [hl]                                      ; $504d: $34
    ret                                           ; $504e: $c9


GS00_StatePhase_01_TitleScreenIdle::
    call GS00_TickMarioBlinkAnimation             ; $504f: $cd $2b $54
    ld a, [rInputButtonsPressed]                  ; $5052: $fa $1e $c3
    ld hl, rGS00_TitleDPadXorHistory              ; $5055: $21 $48 $d8
    xor [hl]                                      ; $5058: $ae
    ld [hl], a                                    ; $5059: $77
    and $f0                                       ; $505a: $e6 $f0
    cp $f0                                        ; $505c: $fe $f0
    jr nz, .ClearSGBBorderAlternateFlag           ; $505e: $20 $14

    ld a, [rGS00_TitleSGBXRayBorderFlag]          ; $5060: $fa $47 $d8
    and a                                         ; $5063: $a7
    jr nz, .CheckAdvanceInputAOrStart             ; $5064: $20 $12

    ld c, $03                                     ; $5066: $0e $03
    ld a, $02                                     ; $5068: $3e $02
    call CallSoundCommandDispatcher               ; $506a: $cd $b3 $03
    ld a, $01                                     ; $506d: $3e $01
    ld [rGS00_TitleSGBXRayBorderFlag], a          ; $506f: $ea $47 $d8
    jr .CheckAdvanceInputAOrStart                 ; $5072: $18 $04

.ClearSGBBorderAlternateFlag:
    xor a                                         ; $5074: $af
    ld [rGS00_TitleSGBXRayBorderFlag], a          ; $5075: $ea $47 $d8

.CheckAdvanceInputAOrStart:
    ld a, [rInputButtonsPressed]                  ; $5078: $fa $1e $c3
    and $09                                       ; $507b: $e6 $09
    ret z                                         ; $507d: $c8

    ld c, $03                                     ; $507e: $0e $03
    ld a, $02                                     ; $5080: $3e $02
    call CallSoundCommandDispatcher               ; $5082: $cd $b3 $03
    ld hl, rStatePhase_Current                    ; $5085: $21 $35 $d6
    inc [hl]                                      ; $5088: $34
    ret                                           ; $5089: $c9


GS00_StatePhase_02_TitleScreenTransition::
    ld bc, $003c                                  ; $508a: $01 $3c $00
    call DelayFramesByBC                          ; $508d: $cd $f7 $05
    ld a, $05                                     ; $5090: $3e $05
    call CallSoundCommandDispatcher               ; $5092: $cd $b3 $03
    ld c, $00                                     ; $5095: $0e $00
    ld a, $01                                     ; $5097: $3e $01
    call CallSoundCommandDispatcher               ; $5099: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $509c: $cd $96 $03
    ld c, $00                                     ; $509f: $0e $00
    ld a, $01                                     ; $50a1: $3e $01
    call CallSoundCommandDispatcher               ; $50a3: $cd $b3 $03
    call EnsureSGBMaskFreezeEnabled               ; $50a6: $cd $84 $1f
    ld a, [rIsSuperGameBoyMode]                   ; $50a9: $fa $3d $c3
    and a                                         ; $50ac: $a7
    jp z, GS00_SP02_NonSGBFadeOut                 ; $50ad: $ca $af $51

    call DisableLCDAtVBlank                       ; $50b0: $cd $80 $04
    ld a, [rGS00_TitleSGBXRayBorderFlag]          ; $50b3: $fa $47 $d8
    and a                                         ; $50b6: $a7
    jr z, .SGBStandardBorderTransfer              ; $50b7: $28 $1b

    ld a, $0c                                     ; $50b9: $3e $0c
    ld hl, SGBPacket_MLT_REQ_DisableMultiplayer   ; $50bb: $21 $00 $40
    call SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress; $50be: $cd $9b $1e
    ld a, $0c                                     ; $50c1: $3e $0c
    ld hl, $5010                                  ; $50c3: $21 $10 $50
    call SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress; $50c6: $cd $9b $1e
    ld a, $0c                                     ; $50c9: $3e $0c
    ld hl, $6020                                  ; $50cb: $21 $20 $60
    call SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress; $50ce: $cd $9b $1e
    jp GS00_SP02_ContinueAfterBorderTransfer      ; $50d1: $c3 $64 $51


.SGBStandardBorderTransfer:
    ld a, $05                                     ; $50d4: $3e $05
    ld hl, SGBPacket_MLT_REQ_DisableMultiplayer   ; $50d6: $21 $00 $40
    call SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress; $50d9: $cd $9b $1e
    ld a, $05                                     ; $50dc: $3e $05
    ld hl, $5010                                  ; $50de: $21 $10 $50
    call SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress; $50e1: $cd $9b $1e
    ld a, $05                                     ; $50e4: $3e $05
    ld hl, $6020                                  ; $50e6: $21 $20 $60
    ld de, rSGBDefaultBorderPCTPacketStreamBuffer ; $50e9: $11 $c2 $cd
    ld bc, $0810                                  ; $50ec: $01 $10 $08
    call BankedTileCopy                           ; $50ef: $cd $e1 $04
    ld hl, $d612                                  ; $50f2: $21 $12 $d6
    ld bc, $0020                                  ; $50f5: $01 $20 $00
    call ZeroMemoryBlock                          ; $50f8: $cd $d0 $04
    ld a, [rInputButtonsHeld]                     ; $50fb: $fa $1a $c3
    bit 5, a                                      ; $50fe: $cb $6f
    jr z, .CheckRedBorderPatchInput               ; $5100: $28 $10

    ld a, $05                                     ; $5102: $3e $05
    ld hl, $6870                                  ; $5104: $21 $70 $68
    ld de, rSGBDefaultBorderPCTPalettePatchBuffer ; $5107: $11 $d2 $d5
    ld bc, $0040                                  ; $510a: $01 $40 $00
    call BankedTileCopy                           ; $510d: $cd $e1 $04
    jr .SendPatchedDefaultBorderPacket            ; $5110: $18 $4a

.CheckRedBorderPatchInput:
    bit 4, a                                      ; $5112: $cb $67
    jr z, .CheckBlackBorderPatchInput             ; $5114: $28 $10

    ld a, $05                                     ; $5116: $3e $05
    ld hl, $68b0                                  ; $5118: $21 $b0 $68
    ld de, rSGBDefaultBorderPCTPalettePatchBuffer ; $511b: $11 $d2 $d5
    ld bc, $0040                                  ; $511e: $01 $40 $00
    call BankedTileCopy                           ; $5121: $cd $e1 $04
    jr .SendPatchedDefaultBorderPacket            ; $5124: $18 $36

.CheckBlackBorderPatchInput:
    bit 6, a                                      ; $5126: $cb $77
    jr z, .CheckWhiteBorderPatchInput             ; $5128: $28 $10

    ld a, $05                                     ; $512a: $3e $05
    ld hl, $68f0                                  ; $512c: $21 $f0 $68
    ld de, rSGBDefaultBorderPCTPalettePatchBuffer ; $512f: $11 $d2 $d5
    ld bc, $0040                                  ; $5132: $01 $40 $00
    call BankedTileCopy                           ; $5135: $cd $e1 $04
    jr .SendPatchedDefaultBorderPacket            ; $5138: $18 $22

.CheckWhiteBorderPatchInput:
    bit 7, a                                      ; $513a: $cb $7f
    jr z, .ApplyGreenBorderPatch                  ; $513c: $28 $10

    ld a, $05                                     ; $513e: $3e $05
    ld hl, $6930                                  ; $5140: $21 $30 $69
    ld de, rSGBDefaultBorderPCTPalettePatchBuffer ; $5143: $11 $d2 $d5
    ld bc, $0040                                  ; $5146: $01 $40 $00
    call BankedTileCopy                           ; $5149: $cd $e1 $04
    jr .SendPatchedDefaultBorderPacket            ; $514c: $18 $0e

.ApplyGreenBorderPatch:
    ld a, $05                                     ; $514e: $3e $05
    ld hl, $6830                                  ; $5150: $21 $30 $68
    ld de, rSGBDefaultBorderPCTPalettePatchBuffer ; $5153: $11 $d2 $d5
    ld bc, $0040                                  ; $5156: $01 $40 $00
    call BankedTileCopy                           ; $5159: $cd $e1 $04

.SendPatchedDefaultBorderPacket:
    ld a, $00                                     ; $515c: $3e $00
    ld hl, rSGBDefaultBorderPCTPacketStreamBuffer ; $515e: $21 $c2 $cd
    call SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress; $5161: $cd $9b $1e

GS00_SP02_ContinueAfterBorderTransfer::
    ld a, $08                                     ; $5164: $3e $08
    ld hl, $6800                                  ; $5166: $21 $00 $68
    ld de, $8800                                  ; $5169: $11 $00 $88
    ld bc, $1000                                  ; $516c: $01 $00 $10
    call BankedTileCopy                           ; $516f: $cd $e1 $04
    ld a, $08                                     ; $5172: $3e $08
    ld hl, $7800                                  ; $5174: $21 $00 $78
    ld de, $8000                                  ; $5177: $11 $00 $80
    ld bc, $0800                                  ; $517a: $01 $00 $08
    call BankedTileCopy                           ; $517d: $cd $e1 $04
    ld a, $0b                                     ; $5180: $3e $0b
    ld hl, $6800                                  ; $5182: $21 $00 $68
    ld de, $9800                                  ; $5185: $11 $00 $98
    ld bc, $0400                                  ; $5188: $01 $00 $04
    call BankedTileCopy                           ; $518b: $cd $e1 $04
    call EnableLCDFromShadow                      ; $518e: $cd $9f $04
    call EnsureSGBMaskFreezeDisabled              ; $5191: $cd $a2 $1f
    ld bc, $0014                                  ; $5194: $01 $14 $00
    call BusyWaitDelayByBC                        ; $5197: $cd $00 $06
    ld b, $03                                     ; $519a: $06 $03
    ld hl, $4723                                  ; $519c: $21 $23 $47
    ld c, $10                                     ; $519f: $0e $10
    ld de, $00c3                                  ; $51a1: $11 $c3 $00
    call PlayScreenTransitionFadeOut              ; $51a4: $cd $4b $04
    ld bc, $0028                                  ; $51a7: $01 $28 $00
    call BusyWaitDelayByBC                        ; $51aa: $cd $00 $06
    jr GS00_SP02_PostFadeOutFlowRouter            ; $51ad: $18 $0d

GS00_SP02_NonSGBFadeOut::
    ld b, $03                                     ; $51af: $06 $03
    ld hl, $4723                                  ; $51b1: $21 $23 $47
    ld c, $10                                     ; $51b4: $0e $10
    ld de, $00c3                                  ; $51b6: $11 $c3 $00
    call PlayScreenTransitionFadeOut              ; $51b9: $cd $4b $04

GS00_SP02_PostFadeOutFlowRouter::
    call DisableLCDAtVBlank                       ; $51bc: $cd $80 $04
    ld a, [rContinueSavedPuzzlePromptRouteMode]   ; $51bf: $fa $a2 $ac
    and a                                         ; $51c2: $a7
    jr nz, .AdvanceToContinueSavedGameScreen      ; $51c3: $20 $2f

    ld hl, rSaveSlot1UnlockProgressState          ; $51c5: $21 $87 $a3
    ld a, [hl+]                                   ; $51c8: $2a
    or [hl]                                       ; $51c9: $b6
    inc hl                                        ; $51ca: $23
    or [hl]                                       ; $51cb: $b6
    jr z, .NoSaveDataInitPath                     ; $51cc: $28 $09

    xor a                                         ; $51ce: $af
    ld [rStatePhase_Current], a                   ; $51cf: $ea $35 $d6
    ld hl, rGameState_Current                     ; $51d2: $21 $34 $d6
    inc [hl]                                      ; $51d5: $34
    ret                                           ; $51d6: $c9


.NoSaveDataInitPath:
    xor a                                         ; $51d7: $af
    ld [rSelectedSaveSlotIndex], a                ; $51d8: $ea $65 $a0
    ld c, a                                       ; $51db: $4f
    ld b, $00                                     ; $51dc: $06 $00
    ld hl, rSaveSlot1UnlockProgressState          ; $51de: $21 $87 $a3
    add hl, bc                                    ; $51e1: $09
    inc [hl]                                      ; $51e2: $34
    ld hl, rSaveSlot1PicrossKinokoStarClearedPuzzleCount; $51e3: $21 $8a $a3
    add hl, bc                                    ; $51e6: $09
    ld [hl], a                                    ; $51e7: $77
    xor a                                         ; $51e8: $af
    ld [rStatePhase_Current], a                   ; $51e9: $ea $35 $d6
    ld a, $02                                     ; $51ec: $3e $02
    ld [rGameState_Current], a                    ; $51ee: $ea $34 $d6
    jp RefreshSaveValidationChecksumsAndMirrors   ; $51f1: $c3 $1c $1b


.AdvanceToContinueSavedGameScreen:
    ld hl, rStatePhase_Current                    ; $51f4: $21 $35 $d6
    inc [hl]                                      ; $51f7: $34
    ret                                           ; $51f8: $c9


GS00_StatePhase_03_ContinueSavedPuzzlePromptAndRoute::
    ld a, $43                                     ; $51f9: $3e $43
    ld [rLCDCShadow], a                           ; $51fb: $ea $2e $c3
    xor a                                         ; $51fe: $af
    ld [rBGPShadow], a                            ; $51ff: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $5202: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $5205: $ea $31 $c3
    ld [rSCXShadow], a                            ; $5208: $ea $32 $c3
    ld [rSCYShadow], a                            ; $520b: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $520e: $cd $9d $05
    call FillBGMap1WithTile01                     ; $5211: $cd $a8 $05
    ld a, $0b                                     ; $5214: $3e $0b
    ld hl, $5000                                  ; $5216: $21 $00 $50
    ld de, $8000                                  ; $5219: $11 $00 $80
    ld bc, $0300                                  ; $521c: $01 $00 $03
    call BankedTileCopy                           ; $521f: $cd $e1 $04
    ld a, $0a                                     ; $5222: $3e $0a
    ld hl, $6000                                  ; $5224: $21 $00 $60
    ld de, $8800                                  ; $5227: $11 $00 $88
    ld bc, $1000                                  ; $522a: $01 $00 $10
    call BankedTileCopy                           ; $522d: $cd $e1 $04
    ld a, $0c                                     ; $5230: $3e $0c
    ld hl, $7800                                  ; $5232: $21 $00 $78
    ld de, $9800                                  ; $5235: $11 $00 $98
    ld bc, $0400                                  ; $5238: $01 $00 $04
    call BankedTileCopy                           ; $523b: $cd $e1 $04
    ld a, $7b                                     ; $523e: $3e $7b
    ld [rTilemapToTileDataAddressLookupTableLow], a; $5240: $ea $63 $cd
    ld a, $16                                     ; $5243: $3e $16
    ld [rTilemapToTileDataAddressLookupTableHigh], a; $5245: $ea $64 $cd
    ld a, [rContinueSavedPuzzlePromptRouteMode]   ; $5248: $fa $a2 $ac
    cp $02                                        ; $524b: $fe $02
    jr nz, .CheckContinueFlowModeTimeTrialForPromptTilemap; $524d: $20 $0a

    ld b, $01                                     ; $524f: $06 $01
    ld hl, $499e                                  ; $5251: $21 $9e $49
    call SwitchBankToBAndJumpToHL                 ; $5254: $cd $db $05
    jr .InitializeContinueSavedPuzzlePromptUI     ; $5257: $18 $20

.CheckContinueFlowModeTimeTrialForPromptTilemap:
    cp $03                                        ; $5259: $fe $03
    jr nz, .InitializeContinueSavedPuzzlePromptUI ; $525b: $20 $1c

    ld a, $0b                                     ; $525d: $3e $0b
    ld hl, SGBPacket_MLT_REQ_DisableMultiplayer   ; $525f: $21 $00 $40
    ld de, $8800                                  ; $5262: $11 $00 $88
    ld bc, $1000                                  ; $5265: $01 $00 $10
    call BankedTileCopy                           ; $5268: $cd $e1 $04
    ld a, $0b                                     ; $526b: $3e $0b
    ld hl, PuzzleNamePointerTable_Puzzle_KC24     ; $526d: $21 $00 $58
    ld de, $9800                                  ; $5270: $11 $00 $98
    ld bc, $0400                                  ; $5273: $01 $00 $04
    call BankedTileCopy                           ; $5276: $cd $e1 $04

.InitializeContinueSavedPuzzlePromptUI:
    call ClearShadowOAMBuffer                     ; $5279: $cd $b3 $05
    ld b, $03                                     ; $527c: $06 $03
    ld hl, InitBottomPromptBlinkTimerAndFrameState; $527e: $21 $80 $4e
    call SwitchBankToBAndJumpToHL                 ; $5281: $cd $db $05
    ld b, $03                                     ; $5284: $06 $03
    ld hl, TickBottomPromptBlinkSprite4E_A_START  ; $5286: $21 $8a $4e
    call SwitchBankToBAndJumpToHL                 ; $5289: $cd $db $05
    ld a, $10                                     ; $528c: $3e $10
    ld [rMessageScriptStreamResetEntryLow], a     ; $528e: $ea $43 $d8
    ld [rMessageScriptStreamEntryLow], a          ; $5291: $ea $2b $d8
    ld a, $20                                     ; $5294: $3e $20
    ld [rMessageScriptStreamResetEntryHigh], a    ; $5296: $ea $44 $d8
    ld [rMessageScriptStreamEntryHigh], a         ; $5299: $ea $2c $d8
    ld a, $90                                     ; $529c: $3e $90
    ld [rMessageScriptStreamLimitLow], a          ; $529e: $ea $45 $d8
    ld a, $58                                     ; $52a1: $3e $58
    ld [rMessageScriptStreamLimitHigh], a         ; $52a3: $ea $46 $d8
    ld a, $39                                     ; $52a6: $3e $39
    ld [rMessageScriptStreamPointerLow], a        ; $52a8: $ea $2d $d8
    ld a, $4f                                     ; $52ab: $3e $4f
    ld [rMessageScriptStreamPointerHigh], a       ; $52ad: $ea $2e $d8
    call GS00_RunMessageScriptUntilEnd_NoBankSwitch; $52b0: $cd $25 $54
    call EnableLCDFromShadow                      ; $52b3: $cd $9f $04
    call EnsureSGBMaskFreezeDisabled              ; $52b6: $cd $a2 $1f
    ld a, [rContinueSavedPuzzlePromptRouteMode]   ; $52b9: $fa $a2 $ac
    cp $02                                        ; $52bc: $fe $02
    jr nz, .CheckContinueFlowModeTimeTrialForPromptFadeIn; $52be: $20 $0a

    ld b, $01                                     ; $52c0: $06 $01
    ld hl, $4a68                                  ; $52c2: $21 $68 $4a
    call SwitchBankToBAndJumpToHL                 ; $52c5: $cd $db $05
    jr .WaitForContinuePromptConfirmInput         ; $52c8: $18 $20

.CheckContinueFlowModeTimeTrialForPromptFadeIn:
    cp $03                                        ; $52ca: $fe $03
    jr nz, .ApplyContinuePromptDefaultFadeIn      ; $52cc: $20 $0f

    ld b, $03                                     ; $52ce: $06 $03
    ld hl, TransitionFadePaletteTable_TimeTrial   ; $52d0: $21 $0c $47
    ld c, $0f                                     ; $52d3: $0e $0f
    ld de, $00a4                                  ; $52d5: $11 $a4 $00
    call PlayScreenTransitionFadeIn               ; $52d8: $cd $0a $04
    jr .WaitForContinuePromptConfirmInput         ; $52db: $18 $0d

.ApplyContinuePromptDefaultFadeIn:
    ld b, $03                                     ; $52dd: $06 $03
    ld hl, TransitionFadePaletteTable_EasyPicross ; $52df: $21 $e8 $46
    ld c, $0b                                     ; $52e2: $0e $0b
    ld de, $0074                                  ; $52e4: $11 $74 $00
    call PlayScreenTransitionFadeIn               ; $52e7: $cd $0a $04

.WaitForContinuePromptConfirmInput:
    call ClearShadowOAMBufferFromCursor           ; $52ea: $cd $c2 $05
    rst RST_08                                    ; $52ed: $cf
    ld b, $03                                     ; $52ee: $06 $03
    ld hl, TickBottomPromptBlinkSprite4E_A_START  ; $52f0: $21 $8a $4e
    call SwitchBankToBAndJumpToHL                 ; $52f3: $cd $db $05
    ld a, [rInputButtonsPressed]                  ; $52f6: $fa $1e $c3
    and $01                                       ; $52f9: $e6 $01
    jr z, .WaitForContinuePromptConfirmInput      ; $52fb: $28 $ed

    ld c, $03                                     ; $52fd: $0e $03
    ld a, $02                                     ; $52ff: $3e $02
    call CallSoundCommandDispatcher               ; $5301: $cd $b3 $03
    ld bc, $003c                                  ; $5304: $01 $3c $00
    call DelayFramesByBC                          ; $5307: $cd $f7 $05
    ld a, $05                                     ; $530a: $3e $05
    call CallSoundCommandDispatcher               ; $530c: $cd $b3 $03
    ld c, $00                                     ; $530f: $0e $00
    ld a, $01                                     ; $5311: $3e $01
    call CallSoundCommandDispatcher               ; $5313: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $5316: $cd $96 $03
    ld c, $00                                     ; $5319: $0e $00
    ld a, $01                                     ; $531b: $3e $01
    call CallSoundCommandDispatcher               ; $531d: $cd $b3 $03
    ld a, [rContinueSavedPuzzlePromptRouteMode]   ; $5320: $fa $a2 $ac
    cp $02                                        ; $5323: $fe $02
    jr nz, .CheckContinueFlowModeTimeTrialForPromptFadeOut; $5325: $20 $0a

    ld b, $01                                     ; $5327: $06 $01
    ld hl, $4a96                                  ; $5329: $21 $96 $4a
    call SwitchBankToBAndJumpToHL                 ; $532c: $cd $db $05
    jr .FinalizeContinuePromptAndRouteToSavedPuzzleState; $532f: $18 $20

.CheckContinueFlowModeTimeTrialForPromptFadeOut:
    cp $03                                        ; $5331: $fe $03
    jr nz, .ApplyContinuePromptDefaultFadeOut     ; $5333: $20 $0f

    ld b, $03                                     ; $5335: $06 $03
    ld hl, $4717                                  ; $5337: $21 $17 $47
    ld c, $0f                                     ; $533a: $0e $0f
    ld de, $00b3                                  ; $533c: $11 $b3 $00
    call PlayScreenTransitionFadeOut              ; $533f: $cd $4b $04
    jr .FinalizeContinuePromptAndRouteToSavedPuzzleState; $5342: $18 $0d

.ApplyContinuePromptDefaultFadeOut:
    ld b, $03                                     ; $5344: $06 $03
    ld hl, $46f3                                  ; $5346: $21 $f3 $46
    ld c, $0b                                     ; $5349: $0e $0b
    ld de, $0083                                  ; $534b: $11 $83 $00
    call PlayScreenTransitionFadeOut              ; $534e: $cd $4b $04

.FinalizeContinuePromptAndRouteToSavedPuzzleState:
    call DisableLCDAtVBlank                       ; $5351: $cd $80 $04
    ld a, [rContinueSavedPuzzlePromptRouteMode]   ; $5354: $fa $a2 $ac
    dec a                                         ; $5357: $3d
    ld c, a                                       ; $5358: $4f
    ld b, $00                                     ; $5359: $06 $00
    ld hl, GS00_SP03_ContinueSavedPuzzleRoute_StatePhaseLookupTable; $535b: $21 $6c $53
    add hl, bc                                    ; $535e: $09
    ld a, [hl]                                    ; $535f: $7e
    ld [rStatePhase_Current], a                   ; $5360: $ea $35 $d6
    ld hl, GS00_SP03_ContinueSavedPuzzleRoute_GameStateLookupTable; $5363: $21 $6f $53
    add hl, bc                                    ; $5366: $09
    ld a, [hl]                                    ; $5367: $7e
    ld [rGameState_Current], a                    ; $5368: $ea $34 $d6
    ret                                           ; $536b: $c9


GS00_SP03_ContinueSavedPuzzleRoute_StatePhaseLookupTable::
    db $0b, $0b, $09

GS00_SP03_ContinueSavedPuzzleRoute_GameStateLookupTable::
    db $08, $0a, $09

GS00_StatePhase_04_PostSaveReturnToTitlePrompt::
    ld a, $43                                     ; $5372: $3e $43
    ld [rLCDCShadow], a                           ; $5374: $ea $2e $c3
    xor a                                         ; $5377: $af
    ld [rBGPShadow], a                            ; $5378: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $537b: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $537e: $ea $31 $c3
    ld [rSCXShadow], a                            ; $5381: $ea $32 $c3
    ld [rSCYShadow], a                            ; $5384: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $5387: $cd $9d $05
    call FillBGMap1WithTile01                     ; $538a: $cd $a8 $05
    ld a, $0b                                     ; $538d: $3e $0b
    ld hl, $5000                                  ; $538f: $21 $00 $50
    ld de, $8000                                  ; $5392: $11 $00 $80
    ld bc, $0300                                  ; $5395: $01 $00 $03
    call BankedTileCopy                           ; $5398: $cd $e1 $04
    ld a, $09                                     ; $539b: $3e $09
    ld hl, $7800                                  ; $539d: $21 $00 $78
    ld de, $9000                                  ; $53a0: $11 $00 $90
    ld bc, $0800                                  ; $53a3: $01 $00 $08
    call BankedTileCopy                           ; $53a6: $cd $e1 $04
    ld a, $0b                                     ; $53a9: $3e $0b
    ld hl, $6c00                                  ; $53ab: $21 $00 $6c
    ld de, $9800                                  ; $53ae: $11 $00 $98
    ld bc, $0400                                  ; $53b1: $01 $00 $04
    call BankedTileCopy                           ; $53b4: $cd $e1 $04
    call ClearShadowOAMBuffer                     ; $53b7: $cd $b3 $05
    ld b, $03                                     ; $53ba: $06 $03
    ld hl, InitBottomPromptBlinkTimerAndFrameState; $53bc: $21 $80 $4e
    call SwitchBankToBAndJumpToHL                 ; $53bf: $cd $db $05
    ld b, $03                                     ; $53c2: $06 $03
    ld hl, TickBottomPromptBlinkSprite4C_A_OK     ; $53c4: $21 $a6 $4e
    call SwitchBankToBAndJumpToHL                 ; $53c7: $cd $db $05
    call EnableLCDFromShadow                      ; $53ca: $cd $9f $04
    ld b, $03                                     ; $53cd: $06 $03
    ld hl, TransitionFadePaletteTable_PostSaveReturn; $53cf: $21 $24 $47
    ld c, $11                                     ; $53d2: $0e $11
    ld de, $00c4                                  ; $53d4: $11 $c4 $00
    call PlayScreenTransitionFadeIn               ; $53d7: $cd $0a $04

.WaitForPostSaveReturnPromptConfirmInput:
    call ClearShadowOAMBufferFromCursor           ; $53da: $cd $c2 $05
    rst RST_08                                    ; $53dd: $cf
    ld b, $03                                     ; $53de: $06 $03
    ld hl, TickBottomPromptBlinkSprite4C_A_OK     ; $53e0: $21 $a6 $4e
    call SwitchBankToBAndJumpToHL                 ; $53e3: $cd $db $05
    ld a, [rInputButtonsPressed]                  ; $53e6: $fa $1e $c3
    and $01                                       ; $53e9: $e6 $01
    jr z, .WaitForPostSaveReturnPromptConfirmInput; $53eb: $28 $ed

    ld c, $03                                     ; $53ed: $0e $03
    ld a, $02                                     ; $53ef: $3e $02
    call CallSoundCommandDispatcher               ; $53f1: $cd $b3 $03
    ld bc, $003c                                  ; $53f4: $01 $3c $00
    call DelayFramesByBC                          ; $53f7: $cd $f7 $05
    ld a, $05                                     ; $53fa: $3e $05
    call CallSoundCommandDispatcher               ; $53fc: $cd $b3 $03
    ld c, $00                                     ; $53ff: $0e $00
    ld a, $01                                     ; $5401: $3e $01
    call CallSoundCommandDispatcher               ; $5403: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $5406: $cd $96 $03
    ld c, $00                                     ; $5409: $0e $00
    ld a, $01                                     ; $540b: $3e $01
    call CallSoundCommandDispatcher               ; $540d: $cd $b3 $03
    ld b, $03                                     ; $5410: $06 $03
    ld hl, $472f                                  ; $5412: $21 $2f $47
    ld c, $11                                     ; $5415: $0e $11
    ld de, $00d3                                  ; $5417: $11 $d3 $00
    call PlayScreenTransitionFadeOut              ; $541a: $cd $4b $04
    call DisableLCDAtVBlank                       ; $541d: $cd $80 $04
    xor a                                         ; $5420: $af
    ld [rStatePhase_Current], a                   ; $5421: $ea $35 $d6
    ret                                           ; $5424: $c9


GS00_RunMessageScriptUntilEnd_NoBankSwitch::
    call AdvanceMessageScriptStreamHelper_NoBankSwitch; $5425: $cd $24 $2c
    jr nz, GS00_RunMessageScriptUntilEnd_NoBankSwitch; $5428: $20 $fb

    ret                                           ; $542a: $c9


GS00_TickMarioBlinkAnimation::
    ld a, [rMarioBlinkAnimationDelay]             ; $542b: $fa $17 $d8
    and a                                         ; $542e: $a7
    jr nz, .TickBlinkFrameDelay                   ; $542f: $20 $20

    ld a, [rMarioBlinkAnimationSequenceCursor]    ; $5431: $fa $18 $d8
    ld c, a                                       ; $5434: $4f
    ld b, $00                                     ; $5435: $06 $00

.FindNextBlinkFrameEntry:
    ld hl, GS00_MarioBlinkFrameDelayAndSpriteIdTable; $5437: $21 $63 $54
    add hl, bc                                    ; $543a: $09
    ld a, [hl+]                                   ; $543b: $2a
    and a                                         ; $543c: $a7
    jr nz, .LoadBlinkFrameEntry                   ; $543d: $20 $05

    ld bc, $0000                                  ; $543f: $01 $00 $00
    jr .FindNextBlinkFrameEntry                   ; $5442: $18 $f3

.LoadBlinkFrameEntry:
    ld [rMarioBlinkAnimationDelay], a             ; $5444: $ea $17 $d8
    ld a, [hl]                                    ; $5447: $7e
    ld [rMarioBlinkAnimationSpriteId], a          ; $5448: $ea $16 $d8
    inc c                                         ; $544b: $0c
    inc c                                         ; $544c: $0c
    ld a, c                                       ; $544d: $79
    ld [rMarioBlinkAnimationSequenceCursor], a    ; $544e: $ea $18 $d8

.TickBlinkFrameDelay:
    ld hl, rMarioBlinkAnimationDelay              ; $5451: $21 $17 $d8
    dec [hl]                                      ; $5454: $35
    ld a, [rMarioBlinkAnimationSpriteId]          ; $5455: $fa $16 $d8
    cp $ff                                        ; $5458: $fe $ff
    ret z                                         ; $545a: $c8

    add $83                                       ; $545b: $c6 $83
    ld bc, PuzzleNamePointerTable_Puzzle_KC38     ; $545d: $01 $28 $58
    jp CopyOAMSpriteById                          ; $5460: $c3 $cb $20


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
    ld c, a                                       ; $5488: $4f
    ld b, $00                                     ; $5489: $06 $00
    ld hl, TODO_CommandOffsetTable                ; $548b: $21 $98 $54
    add hl, bc                                    ; $548e: $09
    ld c, [hl]                                    ; $548f: $4e
    add hl, bc                                    ; $5490: $09
    ld a, $03                                     ; $5491: $3e $03
    ld c, l                                       ; $5493: $4d
    ld b, h                                       ; $5494: $44
    jp QueueCommandStreamAndProcessIfLCDOff       ; $5495: $c3 $35 $07


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
    db $ce, $65

PuzzleNamePointerTable_Puzzle_EP00::
    db $ce, $65

PuzzleNamePointerTable_Puzzle_EP01::
    db $ce, $65

PuzzleNamePointerTable_Puzzle_EP02::
    db $ce, $65

PuzzleNamePointerTable_Puzzle_EP03::
    db $ce, $65

PuzzleNamePointerTable_Puzzle_EP04::
    db $ce, $65

PuzzleNamePointerTable_Puzzle_EP05::
    db $ce, $65

PuzzleNamePointerTable_Puzzle_EP06::
    db $ce, $65

PuzzleNamePointerTable_Puzzle_EP07::
    db $ce, $65

PuzzleNamePointerTable_Puzzle_EP08::
    db $38, $59

PuzzleNamePointerTable_Puzzle_EP09::
    db $43, $59

PuzzleNamePointerTable_Puzzle_EP0A::
    db $4e, $59

PuzzleNamePointerTable_Puzzle_EP0B::
    db $5b, $59

PuzzleNamePointerTable_Puzzle_EP0C::
    db $66, $59

PuzzleNamePointerTable_Puzzle_EP0D::
    db $71, $59

PuzzleNamePointerTable_Puzzle_EP0E::
    db $82, $59

PuzzleNamePointerTable_Puzzle_EP0F::
    db $91, $59

PuzzleNamePointerTable_Puzzle_EP10::
    db $9e, $59

PuzzleNamePointerTable_Puzzle_EP11::
    db $a7, $59

PuzzleNamePointerTable_Puzzle_EP12::
    db $b0, $59

PuzzleNamePointerTable_Puzzle_EP13::
    db $bb, $59

PuzzleNamePointerTable_Puzzle_EP14::
    db $c6, $59

PuzzleNamePointerTable_Puzzle_EP15::
    db $d3, $59

PuzzleNamePointerTable_Puzzle_EP16::
    db $de, $59

PuzzleNamePointerTable_Puzzle_EP17::
    db $e7, $59

PuzzleNamePointerTable_Puzzle_EP18::
    db $f4, $59

PuzzleNamePointerTable_Puzzle_EP19::
    db $09, $5a

PuzzleNamePointerTable_Puzzle_EP1A::
    db $12, $5a

PuzzleNamePointerTable_Puzzle_EP1B::
    db $1d, $5a

PuzzleNamePointerTable_Puzzle_EP1C::
    db $2a, $5a

PuzzleNamePointerTable_Puzzle_EP1D::
    db $33, $5a

PuzzleNamePointerTable_Puzzle_EP1E::
    db $40, $5a

PuzzleNamePointerTable_Puzzle_EP1F::
    db $4d, $5a

PuzzleNamePointerTable_Puzzle_EP20::
    db $5a, $5a

PuzzleNamePointerTable_Puzzle_EP21::
    db $65, $5a

PuzzleNamePointerTable_Puzzle_EP22::
    db $6e, $5a

PuzzleNamePointerTable_Puzzle_EP23::
    db $77, $5a

PuzzleNamePointerTable_Puzzle_EP24::
    db $82, $5a

PuzzleNamePointerTable_Puzzle_EP25::
    db $91, $5a

PuzzleNamePointerTable_Puzzle_EP26::
    db $9e, $5a

PuzzleNamePointerTable_Puzzle_EP27::
    db $ad, $5a

PuzzleNamePointerTable_Puzzle_EP28::
    db $b8, $5a

PuzzleNamePointerTable_Puzzle_EP29::
    db $c9, $5a

PuzzleNamePointerTable_Puzzle_EP2A::
    db $d4, $5a

PuzzleNamePointerTable_Puzzle_EP2B::
    db $e1, $5a

PuzzleNamePointerTable_Puzzle_EP2C::
    db $ec, $5a

PuzzleNamePointerTable_Puzzle_EP2D::
    db $f9, $5a

PuzzleNamePointerTable_Puzzle_EP2E::
    db $06, $5b

PuzzleNamePointerTable_Puzzle_EP2F::
    db $15, $5b

PuzzleNamePointerTable_Puzzle_EP30::
    db $20, $5b

PuzzleNamePointerTable_Puzzle_EP31::
    db $2d, $5b

PuzzleNamePointerTable_Puzzle_EP32::
    db $3e, $5b

PuzzleNamePointerTable_Puzzle_EP33::
    db $47, $5b

PuzzleNamePointerTable_Puzzle_EP34::
    db $54, $5b

PuzzleNamePointerTable_Puzzle_EP35::
    db $63, $5b

PuzzleNamePointerTable_Puzzle_EP36::
    db $76, $5b

PuzzleNamePointerTable_Puzzle_EP37::
    db $83, $5b

PuzzleNamePointerTable_Puzzle_EP38::
    db $8e, $5b

PuzzleNamePointerTable_Puzzle_EP39::
    db $97, $5b

PuzzleNamePointerTable_Puzzle_EP3A::
    db $a6, $5b

PuzzleNamePointerTable_Puzzle_EP3B::
    db $b1, $5b

PuzzleNamePointerTable_Puzzle_EP3C::
    db $bc, $5b

PuzzleNamePointerTable_Puzzle_EP3D::
    db $d1, $5b

PuzzleNamePointerTable_Puzzle_EP3E::
    db $dc, $5b

PuzzleNamePointerTable_Puzzle_EP3F::
    db $e7, $5b

PuzzleNamePointerTable_Puzzle_KC00::
    db $f2, $5b

PuzzleNamePointerTable_Puzzle_KC01::
    db $03, $5c

PuzzleNamePointerTable_Puzzle_KC02::
    db $0e, $5c

PuzzleNamePointerTable_Puzzle_KC03::
    db $1d, $5c

PuzzleNamePointerTable_Puzzle_KC04::
    db $2c, $5c

PuzzleNamePointerTable_Puzzle_KC05::
    db $3f, $5c

PuzzleNamePointerTable_Puzzle_KC06::
    db $4c, $5c

PuzzleNamePointerTable_Puzzle_KC07::
    db $55, $5c

PuzzleNamePointerTable_Puzzle_KC08::
    db $5e, $5c

PuzzleNamePointerTable_Puzzle_KC09::
    db $71, $5c

PuzzleNamePointerTable_Puzzle_KC0A::
    db $7a, $5c

PuzzleNamePointerTable_Puzzle_KC0B::
    db $8b, $5c

PuzzleNamePointerTable_Puzzle_KC0C::
    db $96, $5c

PuzzleNamePointerTable_Puzzle_KC0D::
    db $a3, $5c

PuzzleNamePointerTable_Puzzle_KC0E::
    db $b0, $5c

PuzzleNamePointerTable_Puzzle_KC0F::
    db $bd, $5c

PuzzleNamePointerTable_Puzzle_KC10::
    db $c6, $5c

PuzzleNamePointerTable_Puzzle_KC11::
    db $d3, $5c

PuzzleNamePointerTable_Puzzle_KC12::
    db $e2, $5c

PuzzleNamePointerTable_Puzzle_KC13::
    db $ed, $5c

PuzzleNamePointerTable_Puzzle_KC14::
    db $f8, $5c

PuzzleNamePointerTable_Puzzle_KC15::
    db $03, $5d

PuzzleNamePointerTable_Puzzle_KC16::
    db $0c, $5d

PuzzleNamePointerTable_Puzzle_KC17::
    db $19, $5d

PuzzleNamePointerTable_Puzzle_KC18::
    db $2c, $5d

PuzzleNamePointerTable_Puzzle_KC19::
    db $37, $5d

PuzzleNamePointerTable_Puzzle_KC1A::
    db $4a, $5d

PuzzleNamePointerTable_Puzzle_KC1B::
    db $55, $5d

PuzzleNamePointerTable_Puzzle_KC1C::
    db $66, $5d

PuzzleNamePointerTable_Puzzle_KC1D::
    db $6f, $5d

PuzzleNamePointerTable_Puzzle_KC1E::
    db $82, $5d

PuzzleNamePointerTable_Puzzle_KC1F::
    db $8f, $5d

PuzzleNamePointerTable_Puzzle_KC20::
    db $a0, $5d

PuzzleNamePointerTable_Puzzle_KC21::
    db $af, $5d

PuzzleNamePointerTable_Puzzle_KC22::
    db $be, $5d

PuzzleNamePointerTable_Puzzle_KC23::
    db $cb, $5d

PuzzleNamePointerTable_Puzzle_KC24::
    db $d4, $5d

PuzzleNamePointerTable_Puzzle_KC25::
    db $e1, $5d

PuzzleNamePointerTable_Puzzle_KC26::
    db $ee, $5d

PuzzleNamePointerTable_Puzzle_KC27::
    db $fb, $5d

PuzzleNamePointerTable_Puzzle_KC28::
    db $0c, $5e

PuzzleNamePointerTable_Puzzle_KC29::
    db $1b, $5e

PuzzleNamePointerTable_Puzzle_KC2A::
    db $28, $5e

PuzzleNamePointerTable_Puzzle_KC2B::
    db $33, $5e

PuzzleNamePointerTable_Puzzle_KC2C::
    db $48, $5e

PuzzleNamePointerTable_Puzzle_KC2D::
    db $59, $5e

PuzzleNamePointerTable_Puzzle_KC2E::
    db $64, $5e

PuzzleNamePointerTable_Puzzle_KC2F::
    db $73, $5e

PuzzleNamePointerTable_Puzzle_KC30::
    db $86, $5e

PuzzleNamePointerTable_Puzzle_KC31::
    db $93, $5e

PuzzleNamePointerTable_Puzzle_KC32::
    db $a0, $5e

PuzzleNamePointerTable_Puzzle_KC33::
    db $ab, $5e

PuzzleNamePointerTable_Puzzle_KC34::
    db $b6, $5e

PuzzleNamePointerTable_Puzzle_KC35::
    db $c1, $5e

PuzzleNamePointerTable_Puzzle_KC36::
    db $cc, $5e

PuzzleNamePointerTable_Puzzle_KC37::
    db $df, $5e

PuzzleNamePointerTable_Puzzle_KC38::
    db $f0, $5e

PuzzleNamePointerTable_Puzzle_KC39::
    db $fb, $5e

PuzzleNamePointerTable_Puzzle_KC3A::
    db $0e, $5f

PuzzleNamePointerTable_Puzzle_KC3B::
    db $17, $5f

PuzzleNamePointerTable_Puzzle_KC3C::
    db $22, $5f

PuzzleNamePointerTable_Puzzle_KC3D::
    db $31, $5f

PuzzleNamePointerTable_Puzzle_KC3E::
    db $3e, $5f

PuzzleNamePointerTable_Puzzle_KC3F::
    db $53, $5f

PuzzleNamePointerTable_Puzzle_SC00::
    db $66, $5f

PuzzleNamePointerTable_Puzzle_SC01::
    db $71, $5f

PuzzleNamePointerTable_Puzzle_SC02::
    db $7c, $5f

PuzzleNamePointerTable_Puzzle_SC03::
    db $89, $5f

PuzzleNamePointerTable_Puzzle_SC04::
    db $98, $5f

PuzzleNamePointerTable_Puzzle_SC05::
    db $a5, $5f

PuzzleNamePointerTable_Puzzle_SC06::
    db $b0, $5f

PuzzleNamePointerTable_Puzzle_SC07::
    db $bd, $5f

PuzzleNamePointerTable_Puzzle_SC08::
    db $ce, $5f

PuzzleNamePointerTable_Puzzle_SC09::
    db $df, $5f

PuzzleNamePointerTable_Puzzle_SC0A::
    db $ec, $5f

PuzzleNamePointerTable_Puzzle_SC0B::
    db $f9, $5f

PuzzleNamePointerTable_Puzzle_SC0C::
    db $02, $60

PuzzleNamePointerTable_Puzzle_SC0D::
    db $13, $60

PuzzleNamePointerTable_Puzzle_SC0E::
    db $22, $60

PuzzleNamePointerTable_Puzzle_SC0F::
    db $2f, $60

PuzzleNamePointerTable_Puzzle_SC10::
    db $3c, $60

PuzzleNamePointerTable_Puzzle_SC11::
    db $47, $60

PuzzleNamePointerTable_Puzzle_SC12::
    db $52, $60

PuzzleNamePointerTable_Puzzle_SC13::
    db $5f, $60

PuzzleNamePointerTable_Puzzle_SC14::
    db $68, $60

PuzzleNamePointerTable_Puzzle_SC15::
    db $77, $60

PuzzleNamePointerTable_Puzzle_SC16::
    db $88, $60

PuzzleNamePointerTable_Puzzle_SC17::
    db $9d, $60

PuzzleNamePointerTable_Puzzle_SC18::
    db $a6, $60

PuzzleNamePointerTable_Puzzle_SC19::
    db $b9, $60

PuzzleNamePointerTable_Puzzle_SC1A::
    db $c4, $60

PuzzleNamePointerTable_Puzzle_SC1B::
    db $d1, $60

PuzzleNamePointerTable_Puzzle_SC1C::
    db $e0, $60

PuzzleNamePointerTable_Puzzle_SC1D::
    db $f5, $60

PuzzleNamePointerTable_Puzzle_SC1E::
    db $fe, $60

PuzzleNamePointerTable_Puzzle_SC1F::
    db $0b, $61

PuzzleNamePointerTable_Puzzle_SC20::
    db $1a, $61

PuzzleNamePointerTable_Puzzle_SC21::
    db $27, $61

PuzzleNamePointerTable_Puzzle_SC22::
    db $34, $61

PuzzleNamePointerTable_Puzzle_SC23::
    db $3d, $61

PuzzleNamePointerTable_Puzzle_SC24::
    db $46, $61

PuzzleNamePointerTable_Puzzle_SC25::
    db $4f, $61

PuzzleNamePointerTable_Puzzle_SC26::
    db $5a, $61

PuzzleNamePointerTable_Puzzle_SC27::
    db $63, $61

PuzzleNamePointerTable_Puzzle_SC28::
    db $6e, $61

PuzzleNamePointerTable_Puzzle_SC29::
    db $79, $61

PuzzleNamePointerTable_Puzzle_SC2A::
    db $84, $61

PuzzleNamePointerTable_Puzzle_SC2B::
    db $8d, $61

PuzzleNamePointerTable_Puzzle_SC2C::
    db $9a, $61

PuzzleNamePointerTable_Puzzle_SC2D::
    db $a7, $61

PuzzleNamePointerTable_Puzzle_SC2E::
    db $bc, $61

PuzzleNamePointerTable_Puzzle_SC2F::
    db $c7, $61

PuzzleNamePointerTable_Puzzle_SC30::
    db $d8, $61

PuzzleNamePointerTable_Puzzle_SC31::
    db $e5, $61

PuzzleNamePointerTable_Puzzle_SC32::
    db $f2, $61

PuzzleNamePointerTable_Puzzle_SC33::
    db $fd, $61

PuzzleNamePointerTable_Puzzle_SC34::
    db $0c, $62

PuzzleNamePointerTable_Puzzle_SC35::
    db $17, $62

PuzzleNamePointerTable_Puzzle_SC36::
    db $22, $62

PuzzleNamePointerTable_Puzzle_SC37::
    db $2f, $62

PuzzleNamePointerTable_Puzzle_SC38::
    db $3a, $62

PuzzleNamePointerTable_Puzzle_SC39::
    db $43, $62

PuzzleNamePointerTable_Puzzle_SC3A::
    db $50, $62

PuzzleNamePointerTable_Puzzle_SC3B::
    db $5b, $62

PuzzleNamePointerTable_Puzzle_SC3C::
    db $68, $62

PuzzleNamePointerTable_Puzzle_SC3D::
    db $77, $62

PuzzleNamePointerTable_Puzzle_SC3E::
    db $84, $62

PuzzleNamePointerTable_Puzzle_SC3F::
    db $93, $62

PuzzleNamePointerTable_Puzzle_TT00::
    db $a2, $62

PuzzleNamePointerTable_Puzzle_TT01::
    db $ad, $62

PuzzleNamePointerTable_Puzzle_TT02::
    db $b6, $62

PuzzleNamePointerTable_Puzzle_TT03::
    db $bf, $62

PuzzleNamePointerTable_Puzzle_TT04::
    db $d2, $62

PuzzleNamePointerTable_Puzzle_TT05::
    db $dd, $62

PuzzleNamePointerTable_Puzzle_TT06::
    db $f0, $62

PuzzleNamePointerTable_Puzzle_TT07::
    db $fd, $62

PuzzleNamePointerTable_Puzzle_TT08::
    db $10, $63

PuzzleNamePointerTable_Puzzle_TT09::
    db $19, $63

PuzzleNamePointerTable_Puzzle_TT0A::
    db $24, $63

PuzzleNamePointerTable_Puzzle_TT0B::
    db $35, $63

PuzzleNamePointerTable_Puzzle_TT0C::
    db $42, $63

PuzzleNamePointerTable_Puzzle_TT0D::
    db $55, $63

PuzzleNamePointerTable_Puzzle_TT0E::
    db $66, $63

PuzzleNamePointerTable_Puzzle_TT0F::
    db $6f, $63

PuzzleNamePointerTable_Puzzle_TT10::
    db $7a, $63

PuzzleNamePointerTable_Puzzle_TT11::
    db $87, $63

PuzzleNamePointerTable_Puzzle_TT12::
    db $92, $63

PuzzleNamePointerTable_Puzzle_TT13::
    db $9b, $63

PuzzleNamePointerTable_Puzzle_TT14::
    db $aa, $63

PuzzleNamePointerTable_Puzzle_TT15::
    db $b5, $63

PuzzleNamePointerTable_Puzzle_TT16::
    db $c0, $63

PuzzleNamePointerTable_Puzzle_TT17::
    db $c9, $63

PuzzleNamePointerTable_Puzzle_TT18::
    db $d6, $63

PuzzleNamePointerTable_Puzzle_TT19::
    db $e5, $63

PuzzleNamePointerTable_Puzzle_TT1A::
    db $f6, $63

PuzzleNamePointerTable_Puzzle_TT1B::
    db $01, $64

PuzzleNamePointerTable_Puzzle_TT1C::
    db $14, $64

PuzzleNamePointerTable_Puzzle_TT1D::
    db $1f, $64

PuzzleNamePointerTable_Puzzle_TT1E::
    db $2e, $64

PuzzleNamePointerTable_Puzzle_TT1F::
    db $37, $64

PuzzleNamePointerTable_Puzzle_TT20::
    db $44, $64

PuzzleNamePointerTable_Puzzle_TT21::
    db $51, $64

PuzzleNamePointerTable_Puzzle_TT22::
    db $5e, $64

PuzzleNamePointerTable_Puzzle_TT23::
    db $67, $64

PuzzleNamePointerTable_Puzzle_TT24::
    db $70, $64

PuzzleNamePointerTable_Puzzle_TT25::
    db $79, $64

PuzzleNamePointerTable_Puzzle_TT26::
    db $8a, $64

PuzzleNamePointerTable_Puzzle_TT27::
    db $95, $64

PuzzleNamePointerTable_Puzzle_TT28::
    db $a8, $64

PuzzleNamePointerTable_Puzzle_TT29::
    db $b5, $64

PuzzleNamePointerTable_Puzzle_TT2A::
    db $c0, $64

PuzzleNamePointerTable_Puzzle_TT2B::
    db $c9, $64

PuzzleNamePointerTable_Puzzle_TT2C::
    db $dc, $64

PuzzleNamePointerTable_Puzzle_TT2D::
    db $eb, $64

PuzzleNamePointerTable_Puzzle_TT2E::
    db $f6, $64

PuzzleNamePointerTable_Puzzle_TT2F::
    db $ff, $64

PuzzleNamePointerTable_Puzzle_TT30::
    db $0a, $65

PuzzleNamePointerTable_Puzzle_TT31::
    db $17, $65

PuzzleNamePointerTable_Puzzle_TT32::
    db $20, $65

PuzzleNamePointerTable_Puzzle_TT33::
    db $2b, $65

PuzzleNamePointerTable_Puzzle_TT34::
    db $34, $65

PuzzleNamePointerTable_Puzzle_TT35::
    db $3d, $65

PuzzleNamePointerTable_Puzzle_TT36::
    db $4c, $65

PuzzleNamePointerTable_Puzzle_TT37::
    db $59, $65

PuzzleNamePointerTable_Puzzle_TT38::
    db $62, $65

PuzzleNamePointerTable_Puzzle_TT39::
    db $6f, $65

PuzzleNamePointerTable_Puzzle_TT3A::
    db $7a, $65

PuzzleNamePointerTable_Puzzle_TT3B::
    db $87, $65

PuzzleNamePointerTable_Puzzle_TT3C::
    db $94, $65

PuzzleNamePointerTable_Puzzle_TT3D::
    db $a3, $65

PuzzleNamePointerTable_Puzzle_TT3E::
    db $b2, $65

PuzzleNamePointerTable_Puzzle_TT3F::
    db $bf, $65

Puzzle_EP08_note_Name::
    db $4c, $5c, "おんぷ", $ff, $ff, $00

Puzzle_EP09_diamond_Name::
    db $4b, $5c, "ダイヤ", $ff, $ff, $00

Puzzle_EP0A_spade_Name::
    db $4a, $5c, "スペード", $ff, $ff, $00

Puzzle_EP0B_heart_Name::
    db $4f, $5c, "ハート", $ff, $ff, $00

Puzzle_EP0C_clover_Name::
    db $4d, $5c, "クラブ", $ff, $ff, $00

Puzzle_EP0D_question_mark_Name::
    db $44, $5c, "クエスチョン", $ff, $ff, $00

Puzzle_EP0E_dollar_sign_Name::
    db $46, $5c, "ドルマーク", $ff, $ff, $00

Puzzle_EP0F_arrow_Name::
    db $4a, $5c, "やじるし", $ff, $ff, $00

Puzzle_EP10_crescent_Name::
    db $51, $5c, "つき", $ff, $ff, $00

Puzzle_EP11_star_Name::
    db $52, $5c, "ほし", $ff, $ff, $00

Puzzle_EP12_sailboat_Name::
    db $50, $5c, "ヨット", $ff, $ff, $00

Puzzle_EP13_car_Name::
    db $4f, $5c, "くるま", $ff, $ff, $00

Puzzle_EP14_cactus_Name::
    db $49, $5c, "サボテン", $ff, $ff, $00

Puzzle_EP15_apple_Name::
    db $4e, $5c, "リンゴ", $ff, $ff, $00

Puzzle_EP16_chestnut_Name::
    db $53, $5c, "くり", $ff, $ff, $00

Puzzle_EP17_doughnut_Name::
    db $4a, $5c, "ドーナツ", $ff, $ff, $00

Puzzle_EP18_knife_and_fork_Name::
    db $3e, $5c, "フォーク ナイフ", $ff, $ff, $00

Puzzle_EP19_flag_Name::
    db $51, $5c, "はた", $ff, $ff, $00

Puzzle_EP1A_cup_Name::
    db $4d, $5c, "カップ", $ff, $ff, $00

Puzzle_EP1B_flask_Name::
    db $49, $5c, "フラスコ", $ff, $ff, $00

Puzzle_EP1C_house_Name::
    db $51, $5c, "いえ", $ff, $ff, $00

Puzzle_EP1D_glove_Name::
    db $4a, $5c, "てぶくろ", $ff, $ff, $00

Puzzle_EP1E_balloon_Name::
    db $4a, $5c, "ふうせん", $ff, $ff, $00

Puzzle_EP1F_pencil_Name::
    db $48, $5c, "えんぴつ", $ff, $ff, $00

Puzzle_EP20_pot_Name::
    db $4e, $5c, "ポット", $ff, $ff, $00

Puzzle_EP21_umbrella_Name::
    db $51, $5c, "かさ", $ff, $ff, $00

Puzzle_EP22_bell_Name::
    db $51, $5c, "ベル", $ff, $ff, $00

Puzzle_EP23_boot_Name::
    db $4d, $5c, "ブーツ", $ff, $ff, $00

Puzzle_EP24_candle_Name::
    db $47, $5c, "キャンドル", $ff, $ff, $00

Puzzle_EP25_faucet_Name::
    db $4a, $5c, "じゃぐち", $ff, $ff, $00

Puzzle_EP26_bulb_Name::
    db $46, $5c, "でんきゅう", $ff, $ff, $00

Puzzle_EP27_anchor_Name::
    db $4d, $5c, "いかり", $ff, $ff, $00

Puzzle_EP28_choplifter_Name::
    db $42, $5c, "ヘリコプター", $ff, $ff, $00

Puzzle_EP29_ball_Name::
    db $4d, $5c, "ボール", $ff, $ff, $00

Puzzle_EP2A_cocktail_Name::
    db $4a, $5c, "カクテル", $ff, $ff, $00

Puzzle_EP2B_panda_Name::
    db $4b, $5c, "パンダ", $ff, $ff, $00

Puzzle_EP2C_wild_duck_Name::
    db $49, $5c, "ガチョウ", $ff, $ff, $00

Puzzle_EP2D_chicken_Name::
    db $4b, $5c, "ニワトリ", $ff, $ff, $00

Puzzle_EP2E_snail_Name::
    db $47, $5c, "カタツムリ", $ff, $ff, $00

Puzzle_EP2F_MARIO_Name::
    db $4e, $5c, "マリオ", $ff, $ff, $00

Puzzle_EP30_lipstick_Name::
    db $5a, $78, "くちべに", $ff, $ff, $00

Puzzle_EP31_wine_glass_Name::
    db $50, $78, "ワイングラス", $ff, $ff, $00

Puzzle_EP32_ax_Name::
    db $60, $78, "おの", $ff, $ff, $00

Puzzle_EP33_wood_stove_Name::
    db $59, $78, "ストーブ", $ff, $ff, $00

Puzzle_EP34_locomotive_Name::
    db $55, $78, "きかんしゃ", $ff, $ff, $00

Puzzle_EP35_frozen_pop_Name::
    db $4e, $78, "アイスクリーム", $ff, $ff, $00

Puzzle_EP36_carrot_Name::
    db $59, $78, "ニンジン", $ff, $ff, $00

Puzzle_EP37_whale_Name::
    db $5c, $78, "クジラ", $ff, $ff, $00

Puzzle_EP38_chair_Name::
    db $60, $78, "イス", $ff, $ff, $00

Puzzle_EP39_hourglass_Name::
    db $53, $78, "すなどけい", $ff, $ff, $00

Puzzle_EP3A_bottles_Name::
    db $5c, $78, "ボトル", $ff, $ff, $00

Puzzle_EP3B_skillet_Name::
    db $5c, $78, "おなべ", $ff, $ff, $00

Puzzle_EP3C_coffee_maker_Name::
    db $4b, $78, "コーヒーメーカー", $ff, $ff, $00

Puzzle_EP3D_mail_box_Name::
    db $5c, $78, "ポスト", $ff, $ff, $00

Puzzle_EP3E_camera_Name::
    db $5d, $78, "カメラ", $ff, $ff, $00

Puzzle_EP3F_scissors_Name::
    db $5d, $78, "ハサミ", $ff, $ff, $00

Puzzle_KC00_GAME_BOY_Name::
    db $4f, $78, "ゲームボーイ", $ff, $ff, $00

Puzzle_KC01_STAR_Name::
    db $5d, $78, "スター", $ff, $ff, $00

Puzzle_KC02_high_heel_Name::
    db $55, $78, "ハイヒール", $ff, $ff, $00

Puzzle_KC03_bread_Name::
    db $57, $78, "しょくパン", $ff, $ff, $00

Puzzle_KC04_cake_Name::
    db $51, $78, "ショートケーキ", $ff, $ff, $00

Puzzle_KC05_hanger_Name::
    db $58, $78, "ハンガー", $ff, $ff, $00

Puzzle_KC06_bus_Name::
    db $5f, $78, "バス", $ff, $ff, $00

Puzzle_KC07_tinkle_Name::
    db $5f, $78, "すず", $ff, $ff, $00

Puzzle_KC08_shogi_piece_Name::
    db $4f, $78, "しょうぎのこま", $ff, $ff, $00

Puzzle_KC09_shoe_Name::
    db $62, $78, "くつ", $ff, $ff, $00

Puzzle_KC0A_cap_Name::
    db $51, $78, "やきゅうぼう", $ff, $ff, $00

Puzzle_KC0B_telephone_Name::
    db $5b, $78, "でんわ", $ff, $ff, $00

Puzzle_KC0C_can_Name::
    db $58, "ル", $00, "きかん", $ff, $ff, $00

Puzzle_KC0D_tsurigane_Name::
    db $57, $78, "つりがね", $ff, $ff, $00

Puzzle_KC0E_hand_Name::
    db $59, $78, "てのひら", $ff, $ff, $00

Puzzle_KC0F_kama_Name::
    db $60, $78, "かま", $ff, $ff, $00

Puzzle_KC10_shovel_Name::
    db $58, $78, "スコップ", $ff, $ff, $00

Puzzle_KC11_necklace_Name::
    db $54, $78, "くびかざり", $ff, $ff, $00

Puzzle_KC12_UFO_Name::
    db $5e, $78, "UFO", $ff, $ff, $00

Puzzle_KC13_BULLET_BILL_Name::
    db $5d, $78, "キラー", $ff, $ff, $00

Puzzle_KC14_tomato_Name::
    db $5e, $78, "トマト", $ff, $ff, $00

Puzzle_KC15_flower_Name::
    db $60, $78, "はな", $ff, $ff, $00

Puzzle_KC16_GRAND_GOOMBAS_Name::
    db $59, $78, "クリボー", $ff, $ff, $00

Puzzle_KC17_coffee_cup_Name::
    db $4d, $78, "コーヒーカップ", $ff, $ff, $00

Puzzle_KC18_mutt_Name::
    db $5c, $78, "こいぬ", $ff, $ff, $00

Puzzle_KC19_overalls_Name::
    db $4d, $78, "オーバーオール", $ff, $ff, $00

Puzzle_KC1A_leaf_Name::
    db $5c, $78, "このは", $ff, $ff, $00

Puzzle_KC1B_tsukimi_dango_Name::
    db $4e, $78, "つきみだんご", $ff, $ff, $00

Puzzle_KC1C_bull_Name::
    db $61, $78, "ウシ", $ff, $ff, $00

Puzzle_KC1D_controller_Name::
    db $4f, $78, "コントローラー", $ff, $ff, $00

Puzzle_KC1E_onion_Name::
    db $58, $78, "タマネギ", $ff, $ff, $00

Puzzle_KC1F_skull_and_crossbones_Name::
    db $52, $78, "どくろマーク", $ff, $ff, $00

Puzzle_KC20_snowman_Name::
    db $54, $78, "ゆきだるま", $ff, $ff, $00

Puzzle_KC21_chameleon_Name::
    db $56, $78, "カメレオン", $ff, $ff, $00

Puzzle_KC22_cucumber_Name::
    db $5a, $78, "きゅうり", $ff, $ff, $00

Puzzle_KC23_buildings_Name::
    db $5f, $78, "ビル", $ff, $ff, $00

Puzzle_KC24_pear_Name::
    db $5a, $78, "ようなし", $ff, $ff, $00

Puzzle_KC25_owl_Name::
    db $59, $78, "みみずく", $ff, $ff, $00

Puzzle_KC26_rice_ball_Name::
    db $57, $78, "おむすび", $ff, $ff, $00

Puzzle_KC27_soap_bubbles_Name::
    db $50, $78, "しゃぼんだま", $ff, $ff, $00

Puzzle_KC28_baby_buggy_Name::
    db $54, $78, "ベビーカー", $ff, $ff, $00

Puzzle_KC29_bomb_Name::
    db $57, $78, "ばくだん", $ff, $ff, $00

Puzzle_KC2A_kettle_Name::
    db $5c, $78, "やかん", $ff, $ff, $00

Puzzle_KC2B_weight_lifting_Name::
    db $4b, $78, "じゅうりょうあ⁣げ", $ff, $ff, $00

Puzzle_KC2C_coffee_mill_Name::
    db $52, $78, "コーヒーミル", $ff, $ff, $00

Puzzle_KC2D_plug_Name::
    db $5a, $78, "プラグ", $ff, $ff, $00

Puzzle_KC2E_sun_glasses_Name::
    db $54, $78, "サングラス", $ff, $ff, $00

Puzzle_KC2F_beer_mug_Name::
    db $4e, $78, "ビールジョッキ", $ff, $ff, $00

Puzzle_KC30_vacuum_Name::
    db $59, $78, "そうじき", $ff, $ff, $00

Puzzle_KC31_NESSY_Name::
    db $5a, $78, "ネッシー", $ff, $ff, $00

Puzzle_KC32_camel_Name::
    db $5b, $78, "ラクダ", $ff, $ff, $00

Puzzle_KC33_oranges_Name::
    db $5c, $78, "みかん", $ff, $ff, $00

Puzzle_KC34_bucket_Name::
    db $5c, $78, "バケツ", $ff, $ff, $00

Puzzle_KC35_fan_Name::
    db $5c, $78, "せんす", $ff, $ff, $00

Puzzle_KC36_racing_car_Name::
    db $4e, $78, "レーシングカー", $ff, $ff, $00

Puzzle_KC37_purse_Name::
    db $51, $78, "ハンドバック", $ff, $ff, $00

Puzzle_KC38_rocking_horse_Name::
    db $5c, $78, "もくば", $ff, $ff, $00

Puzzle_KC39_ice_cream_cone_Name::
    db $4f, $78, "ソフトクリーム", $ff, $ff, $00

Puzzle_KC3A_deer_Name::
    db $60, $78, "しか", $ff, $ff, $00

Puzzle_KC3B_strawberry_Name::
    db $5b, $78, "イチゴ", $ff, $ff, $00

Puzzle_KC3C_bicycle_Name::
    db $56, $78, "じてんしゃ", $ff, $ff, $00

Puzzle_KC3D_atlantic_penguin_Name::
    db $59, $78, "ペンギン", $ff, $ff, $00

Puzzle_KC3E_ambulance_Name::
    db $4d, $78, "きゅうきゅうしゃ", $ff, $ff, $00

Puzzle_KC3F_back_hoe_Name::
    db $4d, $78, "パワーショベル", $ff, $ff, $00

Puzzle_SC00_bubble_pipe_Name::
    db $5a, $78, "パイプ", $ff, $ff, $00

Puzzle_SC01_shirt_Name::
    db $5e, $78, "シャツ", $ff, $ff, $00

Puzzle_SC02_hermit_crab_Name::
    db $59, $78, "ヤドカリ", $ff, $ff, $00

Puzzle_SC03_shooting_star_Name::
    db $52, $78, "ながれぼし", $ff, $ff, $00

Puzzle_SC04_acorn_Name::
    db $58, $78, "どんぐり", $ff, $ff, $00

Puzzle_SC05_lamp_Name::
    db $5c, $78, "ランプ", $ff, $ff, $00

Puzzle_SC06_sun_fish_Name::
    db $58, $78, "マンボウ", $ff, $ff, $00

Puzzle_SC07_green_peas_Name::
    db $51, $78, "エンドウマメ", $ff, $ff, $00

Puzzle_SC08_ladybug_Name::
    db $52, $78, "テントウムシ", $ff, $ff, $00

Puzzle_SC09_balance_Name::
    db $57, $78, "てんびん", $ff, $ff, $00

Puzzle_SC0A_samurai_Name::
    db $59, $78, "ろうにん", $ff, $ff, $00

Puzzle_SC0B_wild_duck_Name::
    db $60, $78, "かも", $ff, $ff, $00

Puzzle_SC0C_MINI_YOSHI_Name::
    db $53, $78, "ミニヨッシー", $ff, $ff, $00

Puzzle_SC0D_weathercock_Name::
    db $52, $78, "かざみどり", $ff, $ff, $00

Puzzle_SC0E_crown_Name::
    db $59, $78, "クラウン", $ff, $ff, $00

Puzzle_SC0F_poodle_Name::
    db $58, $78, "プードル", $ff, $ff, $00

Puzzle_SC10_scarecrow_Name::
    db $5c, $78, "かかし", $ff, $ff, $00

Puzzle_SC11_grape_Name::
    db $5b, $78, "ぶどう", $ff, $ff, $00

Puzzle_SC12_cannon_Name::
    db $59, $78, "たいほう", $ff, $ff, $00

Puzzle_SC13_ship_Name::
    db $60, $78, "ふね", $ff, $ff, $00

Puzzle_SC14_duckbill_Name::
    db $55, $78, "カモノハシ", $ff, $ff, $00

Puzzle_SC15_crab_beetle_Name::
    db $51, $78, "くわがたむし", $ff, $ff, $00

Puzzle_SC16_christmas_tree_Name::
    db $4c, $78, "クリスマスツリー", $ff, $ff, $00

Puzzle_SC17_tiger_Name::
    db $61, $78, "トラ", $ff, $ff, $00

Puzzle_SC18_bowling_pins_Name::
    db $4c, $78, "ボーリングピン", $ff, $ff, $00

Puzzle_SC19_sea_lion_Name::
    db $5d, $78, "アシカ", $ff, $ff, $00

Puzzle_SC1A_SUN_FLOWER_Name::
    db $59, $78, "フラワー", $ff, $ff, $00

Puzzle_SC1B_ice_cream_sundae_Name::
    db $53, $78, "かきごおり", $ff, $ff, $00

Puzzle_SC1C_cowboy_hat_Name::
    db $4a, $78, "カウボーイハット", $ff, $ff, $00

Puzzle_SC1D_ray_Name::
    db $60, $78, "エイ", $ff, $ff, $00

Puzzle_SC1E_SPINY_Name::
    db $57, $78, "トゲゾー", $ff, $ff, $00

Puzzle_SC1F_cherry_Name::
    db $55, $78, "さくらんぼ", $ff, $ff, $00

Puzzle_SC20_palm_tree_Name::
    db $59, $78, "ヤシのき", $ff, $ff, $00

Puzzle_SC21_tank_Name::
    db $5a, $78, "せんしゃ", $ff, $ff, $00

Puzzle_SC22_hawk_Name::
    db $60, $78, "たか", $ff, $ff, $00

Puzzle_SC23_fly_Name::
    db $60, $78, "ハエ", $ff, $ff, $00

Puzzle_SC24_spinning_top_Name::
    db $60, $78, "コマ", $ff, $ff, $00

Puzzle_SC25_MUSHROOM_Name::
    db $5d, $78, "キノコ", $ff, $ff, $00

Puzzle_SC26_squirrel_Name::
    db $61, $78, "リス", $ff, $ff, $00

Puzzle_SC27_bath_Name::
    db $5c, $78, "おふろ", $ff, $ff, $00

Puzzle_SC28_skiing_Name::
    db $5d, $78, "スキー", $ff, $ff, $00

Puzzle_SC29_coat_Name::
    db $5e, $78, "コート", $ff, $ff, $00

Puzzle_SC2A_crab_Name::
    db $60, $78, "カニ", $ff, $ff, $00

Puzzle_SC2B_goldfish_Name::
    db $59, $78, "きんぎょ", $ff, $ff, $00

Puzzle_SC2C_reindeer_Name::
    db $59, $78, "トナカイ", $ff, $ff, $00

Puzzle_SC2D_jack_o_lantern_Name::
    db $49, $78, "パンプキンヘッド", $ff, $ff, $00

Puzzle_SC2E_mud_Name::
    db $5d, $78, "タニシ", $ff, $ff, $00

Puzzle_SC2F_nio_face_Name::
    db $50, $78, "におうのかお", $ff, $ff, $00

Puzzle_SC30_radar_Name::
    db $59, $78, "アンテナ", $ff, $ff, $00

Puzzle_SC31_mermaid_Name::
    db $59, $78, "にんぎょ", $ff, $ff, $00

Puzzle_SC32_fox_Name::
    db $5d, $78, "キツネ", $ff, $ff, $00

Puzzle_SC33_sumo_wrestler_Name::
    db $55, $78, "すもうとり", $ff, $ff, $00

Puzzle_SC34_frog_Name::
    db $5c, $78, "カエル", $ff, $ff, $00

Puzzle_SC35_cat_fish_Name::
    db $5b, $78, "ナマズ", $ff, $ff, $00

Puzzle_SC36_racket_Name::
    db $5a, $78, "ラケット", $ff, $ff, $00

Puzzle_SC37_guitar_Name::
    db $5d, $78, "ギター", $ff, $ff, $00

Puzzle_SC38_spider_Name::
    db $61, $78, "クモ", $ff, $ff, $00

Puzzle_SC39_pelican_Name::
    db $5a, $78, "ペリカン", $ff, $ff, $00

Puzzle_SC3A_dragonfly_Name::
    db $5d, $78, "トンボ", $ff, $ff, $00

Puzzle_SC3B_wild_boar_Name::
    db $5a, $78, "イノシシ", $ff, $ff, $00

Puzzle_SC3C_beetle_Name::
    db $55, $78, "カブトムシ", $ff, $ff, $00

Puzzle_SC3D_seal_Name::
    db $57, $78, "アザラシ", $ff, $ff, $00

Puzzle_SC3E_kite_Name::
    db $55, $78, "やっこだこ", $ff, $ff, $00

Puzzle_SC3F_armadillo_Name::
    db $54, $78, "アルマジロ", $ff, $ff, $00

Puzzle_TT00_witch_Name::
    db $5e, $78, "まじょ", $ff, $ff, $00

Puzzle_TT01_bow_Name::
    db $60, $78, "ゆみ", $ff, $ff, $00

Puzzle_TT02_Man_in_the_moon_Name::
    db $60, $78, "つき", $ff, $ff, $00

Puzzle_TT03_alarm_clock_Name::
    db $4b, $78, "めざましどけい", $ff, $ff, $00

Puzzle_TT04_water_melon_Name::
    db $5c, $78, "スイカ", $ff, $ff, $00

Puzzle_TT05_straw_hat_Name::
    db $4c, $78, "むぎわらぼうし", $ff, $ff, $00

Puzzle_TT06_rocket_Name::
    db $5a, $78, "ロケット", $ff, $ff, $00

Puzzle_TT07_karakasa_obake_Name::
    db $4a, $78, "からかさおばけ", $ff, $ff, $00

Puzzle_TT08_bird_Name::
    db $61, $78, "とり", $ff, $ff, $00

Puzzle_TT09_banana_Name::
    db $5b, $78, "バナナ", $ff, $ff, $00

Puzzle_TT0A_corn_Name::
    db $52, $78, "トウモロコシ", $ff, $ff, $00

Puzzle_TT0B_ostrich_Name::
    db $58, $78, "ダチョウ", $ff, $ff, $00

Puzzle_TT0C_TERUTERU_BOUZU_Name::
    db $4a, $78, "てるてるぼうず", $ff, $ff, $00

Puzzle_TT0D_pineapple_Name::
    db $4f, $78, "パイナップル", $ff, $ff, $00

Puzzle_TT0E_feather_Name::
    db $60, $78, "はね", $ff, $ff, $00

Puzzle_TT0F_mouse_Name::
    db $5c, $78, "ネズミ", $ff, $ff, $00

Puzzle_TT10_BLOOPER_Name::
    db $59, $78, "ゲッソー", $ff, $ff, $00

Puzzle_TT11_fish_Name::
    db $5c, $78, "さかな", $ff, $ff, $00

Puzzle_TT12_monkey_Name::
    db $60, $78, "さる", $ff, $ff, $00

Puzzle_TT13_dirk_Name::
    db $56, $78, "しゅりけん", $ff, $ff, $00

Puzzle_TT14_BUZZY_BEETLE_Name::
    db $5f, $78, "メット", $ff, $ff, $00

Puzzle_TT15_tobacco_Name::
    db $5b, $78, "たばこ", $ff, $ff, $00

Puzzle_TT16_cat_Name::
    db $60, $78, "ネコ", $ff, $ff, $00

Puzzle_TT17_KOOPA_TROOPAS_Name::
    db $59, $78, "ノコノコ", $ff, $ff, $00

Puzzle_TT18_candy_Name::
    db $56, $78, "キャンディ", $ff, $ff, $00

Puzzle_TT19_crane_Name::
    db $54, $78, "クレーンしゃ", $ff, $ff, $00

Puzzle_TT1A_ram_Name::
    db $5c, $78, "ヒツジ", $ff, $ff, $00

Puzzle_TT1B_denden_daiko_Name::
    db $49, $78, "でんでんだいこ", $ff, $ff, $00

Puzzle_TT1C_scorpion_Name::
    db $5d, $78, "サソリ", $ff, $ff, $00

Puzzle_TT1D_kangaroo_Name::
    db $54, $78, "カンガルー", $ff, $ff, $00

Puzzle_TT1E_pig_Name::
    db $60, $78, "ブタ", $ff, $ff, $00

Puzzle_TT1F_white_lion_Name::
    db $59, $78, "ライオン", $ff, $ff, $00

Puzzle_TT20_sake_bottle_Name::
    db $5c, $78, "とっくり", $ff, $ff, $00

Puzzle_TT21_flower_Name::
    db $57, "ル", $00, "さがお", $ff, $ff, $00

Puzzle_TT22_friendly_dog_Name::
    db $61, $78, "イヌ", $ff, $ff, $00

Puzzle_TT23_shrimp_Name::
    db $5f, $78, "エビ", $ff, $ff, $00

Puzzle_TT24_hippopotamus_Name::
    db $5f, $78, "カバ", $ff, $ff, $00

Puzzle_TT25_tulip_Name::
    db $53, $78, "チューリップ", $ff, $ff, $00

Puzzle_TT26_clay_image_Name::
    db $5c, $78, "ハニワ", $ff, $ff, $00

Puzzle_TT27_wooden_horse_Name::
    db $4c, $78, "かいてんもくば", $ff, $ff, $00

Puzzle_TT28_socks_Name::
    db $5a, $78, "くつした", $ff, $ff, $00

Puzzle_TT29_butterfly_Name::
    db $5e, $78, "チョウ", $ff, $ff, $00

Puzzle_TT2A_tortoise_Name::
    db $61, $78, "カメ", $ff, $ff, $00

Puzzle_TT2B_football_Name::
    db $4a, $78, "ラグビーボール", $ff, $ff, $00

Puzzle_TT2C_scooter_Name::
    db $56, $78, "スクーター", $ff, $ff, $00

Puzzle_TT2D_koala_Name::
    db $5c, $78, "コアラ", $ff, $ff, $00

Puzzle_TT2E_lock_Name::
    db $5f, $78, "かぎ", $ff, $ff, $00

Puzzle_TT2F_chick_Name::
    db $5d, $78, "ひよこ", $ff, $ff, $00

Puzzle_TT30_CHEEP_CHEEPS_Name::
    db $57, $78, "プクプク", $ff, $ff, $00

Puzzle_TT31_snake_Name::
    db $5f, $78, "ヘビ", $ff, $ff, $00

Puzzle_TT32_white_eye_Name::
    db $5c, $78, "メジロ", $ff, $ff, $00

Puzzle_TT33_elephant_Name::
    db $5e, $78, "ゾウ", $ff, $ff, $00

Puzzle_TT34_horse_Name::
    db $60, $78, "ウマ", $ff, $ff, $00

Puzzle_TT35_tea_cup_Name::
    db $53, $78, "マグカップ", $ff, $ff, $00

Puzzle_TT36_pegasus_Name::
    db $57, $78, "ペガサス", $ff, $ff, $00

Puzzle_TT37_rhinoceros_Name::
    db $60, $78, "サイ", $ff, $ff, $00

Puzzle_TT38_angler_Name::
    db $59, $78, "アンコウ", $ff, $ff, $00

Puzzle_TT39_ring_Name::
    db $5b, $78, "ゆびわ", $ff, $ff, $00

Puzzle_TT3A_woodpecker_Name::
    db $5a, $78, "キツツキ", $ff, $ff, $00

Puzzle_TT3B_Grim_Reaper_Name::
    db $57, $78, "しにがみ", $ff, $ff, $00

Puzzle_TT3C_hedgehog_Name::
    db $55, $78, "ハリネズミ", $ff, $ff, $00

Puzzle_TT3D_dump_truck_Name::
    db $52, $78, "ダンプカー", $ff, $ff, $00

Puzzle_TT3E_bi_plane_Name::
    db $59, $78, "ひこうき", $ff, $ff, $00

Puzzle_TT3F_sheriff_Name::
    db $54, $78, "ほあ⁣んかん", $ff, $ff, $00

Puzzle_HT00_EP00_07_Name::
    db $00

OAMSpritePointerTable_Event00::
    db $db, $66

OAMSpritePointerTable_Event01::
    db $e4, $66

OAMSpritePointerTable_Event02::
    db $f1, $66

OAMSpritePointerTable_Event03::
    db $f6, $66

OAMSpritePointerTable_Event04::
    db $ff, $66

OAMSpritePointerTable_Event05::
    db $08, $67

OAMSpritePointerTable_Event06::
    db $11, $67

OAMSpritePointerTable_Event07::
    db $1a, $67

OAMSpritePointerTable_Event08::
    db $23, $67

OAMSpritePointerTable_Event09::
    db $2c, $67

OAMSpritePointerTable_Event0a::
    db $35, $67

OAMSpritePointerTable_Event0b::
    db $3a, $67

OAMSpritePointerTable_Event0c::
    db $4b, $67

OAMSpritePointerTable_Event0d::
    db $5c, $67

OAMSpritePointerTable_Event0e::
    db $6d, $67

OAMSpritePointerTable_Event0f::
    db $8e, $67

OAMSpritePointerTable_Event10::
    db $a3, $67

OAMSpritePointerTable_Event11::
    db $d0, $67

OAMSpritePointerTable_Event12::
    db $0d, $68

OAMSpritePointerTable_Event13::
    db $4a, $68

OAMSpritePointerTable_Event14::
    db $87, $68

OAMSpritePointerTable_Event15::
    db $c4, $68

OAMSpritePointerTable_Event16::
    db $01, $69

OAMSpritePointerTable_Event17::
    db $3a, $69

OAMSpritePointerTable_Event18::
    db $6f, $69

OAMSpritePointerTable_Event19::
    db $a0, $69

OAMSpritePointerTable_Event1a::
    db $d1, $69

OAMSpritePointerTable_Event1b::
    db $fe, $69

OAMSpritePointerTable_Event1c::
    db $2b, $6a

OAMSpritePointerTable_Event1d::
    db $44, $6a

OAMSpritePointerTable_Event1e::
    db $5d, $6a

OAMSpritePointerTable_Event1f::
    db $6e, $6a

OAMSpritePointerTable_Event20::
    db $8f, $6a

OAMSpritePointerTable_Event21::
    db $a0, $6a

OAMSpritePointerTable_Event22::
    db $b1, $6a

OAMSpritePointerTable_Event23::
    db $ea, $6a

OAMSpritePointerTable_Event24::
    db $1f, $6b

OAMSpritePointerTable_Event25::
    db $54, $6b

OAMSpritePointerTable_Event26::
    db $89, $6b

OAMSpritePointerTable_Event27::
    db $be, $6b

OAMSpritePointerTable_Event28::
    db $f3, $6b

OAMSpritePointerTable_Event29::
    db $1c, $6c

OAMSpritePointerTable_Event2a::
    db $45, $6c

OAMSpritePointerTable_Event2b::
    db $66, $6c

OAMSpritePointerTable_Event2c::
    db $6b, $6c

OAMSpritePointerTable_Event2d::
    db $70, $6c

OAMSpritePointerTable_Event2e::
    db $75, $6c

OAMSpritePointerTable_Event2f::
    db $8e, $6c

OAMSpritePointerTable_Event30::
    db $a7, $6c

OAMSpritePointerTable_Event31::
    db $c0, $6c

OAMSpritePointerTable_Event32::
    db $d9, $6c

OAMSpritePointerTable_Event33::
    db $f2, $6c

OAMSpritePointerTable_Event34::
    db $0b, $6d

OAMSpritePointerTable_Event35::
    db $4c, $6d

OAMSpritePointerTable_Event36::
    db $8d, $6d

OAMSpritePointerTable_Event37::
    db $ce, $6d

OAMSpritePointerTable_Event38::
    db $d3, $6d

OAMSpritePointerTable_Event39::
    db $d8, $6d

OAMSpritePointerTable_Event3a::
    db $dd, $6d

OAMSpritePointerTable_Event3b::
    db $3e, $6e

OAMSpritePointerTable_Event3c::
    db $9f, $6e

OAMSpritePointerTable_Event3d::
    db $18, $6f

OAMSpritePointerTable_Event3e::
    db $79, $6f

OAMSpritePointerTable_Event3f::
    db $da, $6f

OAMSpritePointerTable_Event40::
    db $1b, $70

OAMSpritePointerTable_Event41::
    db $44, $70

OAMSpritePointerTable_Event42::
    db $6d, $70

OAMSpritePointerTable_Event43::
    db $96, $70

OAMSpritePointerTable_Event44::
    db $b7, $70

OAMSpritePointerTable_Event45::
    db $d8, $70

OAMSpritePointerTable_Event46::
    db $19, $71

OAMSpritePointerTable_Event47::
    db $5a, $71

OAMSpritePointerTable_Event48::
    db $9b, $71

OAMSpritePointerTable_Event49::
    db $dc, $71

OAMSpritePointerTable_Event4a::
    db $1d, $72

OAMSpritePointerTable_Event4b::
    db $5e, $72

OAMSpritePointerTable_Event4c::
    db $77, $72

OAMSpritePointerTable_Event4d::
    db $88, $72

OAMSpritePointerTable_Event4e::
    db $a9, $72

OAMSpritePointerTable_Event4f::
    db $c6, $72

OAMSpritePointerTable_Event50::
    db $df, $72

OAMSpritePointerTable_Event51::
    db $08, $73

OAMSpritePointerTable_Event52::
    db $0d, $73

OAMSpritePointerTable_Event53::
    db $12, $73

OAMSpritePointerTable_Event54::
    db $17, $73

OAMSpritePointerTable_Event55::
    db $1c, $73

OAMSpritePointerTable_Event56::
    db $21, $73

OAMSpritePointerTable_Event57::
    db $26, $73

OAMSpritePointerTable_Event58::
    db $2b, $73

OAMSpritePointerTable_Event59::
    db $30, $73

OAMSpritePointerTable_Event5a::
    db $35, $73

OAMSpritePointerTable_Event5b::
    db $3a, $73

OAMSpritePointerTable_Event5c::
    db $53, $73

OAMSpritePointerTable_Event5d::
    db $6c, $73

OAMSpritePointerTable_Event5e::
    db $85, $73

OAMSpritePointerTable_Event5f::
    db $9e, $73

OAMSpritePointerTable_Event60::
    db $b7, $73

OAMSpritePointerTable_Event61::
    db $c8, $73

OAMSpritePointerTable_Event62::
    db $d9, $73

OAMSpritePointerTable_Event63::
    db $ea, $73

OAMSpritePointerTable_Event64::
    db $ef, $73

OAMSpritePointerTable_Event65::
    db $f4, $73

OAMSpritePointerTable_Event66::
    db $f9, $73

OAMSpritePointerTable_Event67::
    db $fe, $73

OAMSpritePointerTable_Event68::
    db $03, $74

OAMSpritePointerTable_Event69::
    db $08, $74

OAMSpritePointerTable_Event6a::
    db $0d, $74

OAMSpritePointerTable_Event6b::
    db $12, $74

OAMSpritePointerTable_Event6c::
    db $17, $74

OAMSpritePointerTable_Event6d::
    db $1c, $74

OAMSpritePointerTable_Event6e::
    db $21, $74

OAMSpritePointerTable_Event6f::
    db $26, $74

OAMSpritePointerTable_Event70::
    db $2b, $74

OAMSpritePointerTable_Event71::
    db $30, $74

OAMSpritePointerTable_Event72::
    db $35, $74

OAMSpritePointerTable_Event73::
    db $3a, $74

OAMSpritePointerTable_Event74::
    db $3f, $74

OAMSpritePointerTable_Event75::
    db $44, $74

OAMSpritePointerTable_Event76::
    db $49, $74

OAMSpritePointerTable_Event77::
    db $4e, $74

OAMSpritePointerTable_Event78::
    db $53, $74

OAMSpritePointerTable_Event79::
    db $58, $74

OAMSpritePointerTable_Event7a::
    db $5d, $74

OAMSpritePointerTable_Event7b::
    db $62, $74

OAMSpritePointerTable_Event7c::
    db $67, $74

OAMSpritePointerTable_Event7d::
    db $6c, $74

OAMSpritePointerTable_Event7e::
    db $71, $74

OAMSpritePointerTable_Event7f::
    db $76, $74

OAMSpritePointerTable_Event80::
    db $7b, $74

OAMSpritePointerTable_Event81::
    db $80, $74

OAMSpritePointerTable_Event82::
    db $85, $74

OAMSpritePointerTable_Event83::
    db $8a, $74

OAMSpritePointerTable_Event84::
    db $0b, $75

OAMSpritePointerTable_Event85::
    db $8c, $75

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
    db $18, $18, $5a, $10
    db $18, $30, $5d, $10
    db $18, $38, $5e, $10
    db $18, $40, $5f, $10
    db $20, $18, $62, $10
    db $20, $30, $65, $10
    db $20, $38, $66, $10
    db $20, $40, $67, $10
    db $20, $08, $60, $10
    db $20, $10, $61, $10
    db $18, $08, $58, $10
    db $18, $10, $59, $10
    db $18, $20, $6c, $10
    db $18, $28, $6d, $10
    db $20, $20, $6e, $10
    db $20, $28, $6f, $10
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
    ds $9f3, $00
