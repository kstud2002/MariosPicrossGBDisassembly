; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

DEF rActiveROMBank EQU $c312
DEF rRequestedROMBank EQU $c314
DEF rMessageProgressionCopySourceX EQU $c351
DEF rMessageProgressionCopySourceY EQU $c352
DEF rMessageProgressionCopyDestX EQU $c353
DEF rMessageProgressionCopyDestY EQU $c354
DEF rMessageProgressionCopyBankAddressLow EQU $c355
DEF rMessageProgressionCopyBankAddressHigh EQU $c356
DEF rMessageProgressionCopyBank EQU $c357
DEF rMessageProgressionCopyMaskLow EQU $c358
DEF rMessageProgressionCopyMaskHigh EQU $c359
DEF rMessageProgressionCopyValueA EQU $c35a
DEF rMessageProgressionCopyValueB EQU $c35b
DEF rMessageProgressionCopyValueC EQU $c35c
DEF rMessageProgressionCopyValueD EQU $c35d
DEF rMessageProgressionCopyValueE EQU $c35e
DEF rMessageProgressionCopyValueF EQU $c35f
DEF rMessageProgressionCopyValueG EQU $c360
DEF rMessageProgressionCopyValueH EQU $c361
DEF rMessageProgressionCopyValueI EQU $c362
DEF rGS06_SequenceMessageScriptBaseLow EQU $cda2
DEF rGS06_SequenceMessageScriptBaseHigh EQU $cda3
DEF rGS06_SequenceEventMessageId EQU $cda4
DEF rGS06_SequenceEventDelay EQU $cda5
DEF rGS06_SequenceEventCursor EQU $cda6
DEF rGS06_SequenceEventTableLow EQU $cda7
DEF rGS06_SequenceEventTableHigh EQU $cda8
DEF rGS06_SequenceEventTableBank EQU $cda9
DEF rGameState_Current EQU $d634
DEF rStatePhase_Current EQU $d635
DEF rStatePhaseTimer EQU $d63c
DEF rCurrentGridSize EQU $d800
DEF rGS06_MessageSequenceMessageId EQU $d819
DEF rGS06_MessageSequenceCountdown EQU $d81a
DEF rGS06_MessageSequencePatternCursor EQU $d81b
DEF rMessageStepDelayTimer EQU $d81f
DEF rMessageStepSequenceCursor EQU $d820
DEF rMessageStepSequenceState EQU $d821
DEF rMessageProgressionEntryLow EQU $d82b
DEF rMessageProgressionEntryHigh EQU $d82c
DEF rMessageProgressionPointerLow EQU $d82d
DEF rMessageProgressionPointerHigh EQU $d82e
DEF rMessageProgressionResetEntryLow EQU $d843
DEF rMessageProgressionResetEntryHigh EQU $d844
DEF rMessageProgressionCopyLimitLow EQU $d845
DEF rMessageProgressionCopyLimitHigh EQU $d846
DEF rLevelSelectColumn EQU $f636
DEF rLevelSelectRow EQU $f637
