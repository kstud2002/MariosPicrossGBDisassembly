; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

Picross15x15GameBoardTileData::
    INCBIN "gfx/Picross15x15GameBoardTileData.2bpp"

CellEffectTileDataSet00::
    INCBIN "gfx/CellEffectTileDataSet00.2bpp"

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
