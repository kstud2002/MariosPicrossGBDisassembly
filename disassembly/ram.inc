; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

DEF ActiveROMBank EQU $c312
DEF RequestedROMBank EQU $c314
DEF MessageProgressionCopySourceX EQU $c351
DEF MessageProgressionCopySourceY EQU $c352
DEF MessageProgressionCopyDestX EQU $c353
DEF MessageProgressionCopyDestY EQU $c354
DEF MessageProgressionCopyBankAddressLow EQU $c355
DEF MessageProgressionCopyBankAddressHigh EQU $c356
DEF MessageProgressionCopyBank EQU $c357
DEF MessageProgressionCopyMaskLow EQU $c358
DEF MessageProgressionCopyMaskHigh EQU $c359
DEF MessageProgressionCopyValueA EQU $c35a
DEF MessageProgressionCopyValueB EQU $c35b
DEF MessageProgressionCopyValueC EQU $c35c
DEF MessageProgressionCopyValueD EQU $c35d
DEF MessageProgressionCopyValueE EQU $c35e
DEF MessageProgressionCopyValueF EQU $c35f
DEF MessageProgressionCopyValueG EQU $c360
DEF MessageProgressionCopyValueH EQU $c361
DEF MessageProgressionCopyValueI EQU $c362
DEF GameState_Current EQU $d634
DEF StatePhase_Current EQU $d635
DEF CurrentGridSize EQU $d800
DEF MessageProgressionEntryLow EQU $d82b
DEF MessageProgressionEntryHigh EQU $d82c
DEF MessageProgressionPointerLow EQU $d82d
DEF MessageProgressionPointerHigh EQU $d82e
DEF MessageProgressionResetEntryLow EQU $d843
DEF MessageProgressionResetEntryHigh EQU $d844
DEF MessageProgressionCopyLimitLow EQU $d845
DEF MessageProgressionCopyLimitHigh EQU $d846
DEF LevelSelectColumn EQU $f635
DEF LevelSelectRow EQU $f636
