; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

DEF rActiveROMBank EQU $c312
DEF rRequestedROMBank EQU $c314
DEF rMessageScriptCopySourceX EQU $c351
DEF rMessageScriptCopySourceY EQU $c352
DEF rMessageScriptCopyDestX EQU $c353
DEF rMessageScriptCopyDestY EQU $c354
DEF rMessageScriptCopyBankAddressLow EQU $c355
DEF rMessageScriptCopyBankAddressHigh EQU $c356
DEF rMessageScriptCopyBank EQU $c357
DEF rMessageScriptCopyMaskLow EQU $c358
DEF rMessageScriptCopyMaskHigh EQU $c359
DEF rMessageScriptCopyValueA EQU $c35a
DEF rMessageScriptCopyValueB EQU $c35b
DEF rMessageScriptCopyValueC EQU $c35c
DEF rMessageScriptCopyValueD EQU $c35d
DEF rMessageScriptCopyValueE EQU $c35e
DEF rMessageScriptCopyValueF EQU $c35f
DEF rMessageScriptCopyValueG EQU $c360
DEF rMessageScriptCopyValueH EQU $c361
DEF rMessageScriptCopyValueI EQU $c362
DEF rGS06_OAMSequenceBaseLow EQU $cda2
DEF rGS06_OAMSequenceBaseHigh EQU $cda3
DEF rGS06_OAMSequenceEventSpriteId EQU $cda4
DEF rGS06_OAMSequenceEventDelay EQU $cda5
DEF rGS06_OAMSequenceEventCursor EQU $cda6
DEF rGS06_OAMSequenceEventTableLow EQU $cda7
DEF rGS06_OAMSequenceEventTableHigh EQU $cda8
DEF rGS06_OAMSequenceEventTableBank EQU $cda9
DEF rGameState_Current EQU $d634
DEF rStatePhase_Current EQU $d635
DEF rStatePhaseTimer EQU $d63c
DEF rCurrentGridSize EQU $d800
DEF rGS06_MarioMouthAnimationSpriteId EQU $d819
DEF rGS06_MarioMouthAnimationCountdown EQU $d81a
DEF rGS06_MarioMouthAnimationPatternCursor EQU $d81b
DEF rMessageStepDelayTimer EQU $d81f
DEF rMessageStepSequenceCursor EQU $d820
DEF rMessageStepSequenceState EQU $d821
DEF rMessageScriptStreamEntryLow EQU $d82b
DEF rMessageScriptStreamEntryHigh EQU $d82c
DEF rMessageScriptStreamPointerLow EQU $d82d
DEF rMessageScriptStreamPointerHigh EQU $d82e
DEF rMessageScriptStreamResetEntryLow EQU $d843
DEF rMessageScriptStreamResetEntryHigh EQU $d844
DEF rMessageScriptStreamLimitLow EQU $d845
DEF rMessageScriptStreamLimitHigh EQU $d846
DEF rLevelSelectColumn EQU $f636
DEF rLevelSelectRow EQU $f637
