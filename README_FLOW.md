# Mario's Picross GB Disassembly: Game Flow Reference

Based on currently mapped symbols in `Mario's Picross (USA, Europe) (SGB Enhanced).sym` and `disassembly/bank_00[1-f].asm`. Only mapped symbols and directly observed control flow are included.

## 1) Main Game Loop & Interrupts

### VBlank interrupt

## 2) State Flow

The game is driven by a state machine centered on the main game-state byte, with state handlers dispatched from the startup/runtime entry points and phase-specific routines reached from within each state. The flow starts from the title and selection screens, moves into gameplay, and then branches into result/end-game paths depending on the mode and outcome. The available evidence supports a layered structure of broad states plus smaller phase steps, rather than a single monolithic loop.

### GameState Flow

```mermaid
flowchart TD
    GS00[GS00 Title Screen]
    GS01[GS01 Data Select]
    GS02[GS02 Game Select]
    GS03[GS03 Picross Course Select]
    GS04[GS04 Picross Course Puzzle Select]
    GS05[GS05 Easy Picross Puzzle Select]
    GS06[GS06 How To Play]
    GS07[GS07 Time Trial Ranking]
	GS08[GS08 Easy Picross Puzzle]
	GS09[GS09 Time Trial Puzzle]
	GS0A[GS0A Picross Puzzle]

    GS00 -->|has save data path| GS01
    GS00 -->|no save data init path| GS02
    GS00 -->|continue EASY PICROSS| GS08
    GS00 -->|continue KINOKO/STAR| GS0A
    GS00 -->|continue TIME TRIAL| GS09

    GS01 -->|select SAVE DATA 1/2/3| GS02

    GS02 -->|select HOW TO PLAY| GS06
    GS02 -->|select EASY PICROSS| GS05
    GS02 -->|select PICROSS| GS03
    GS02 -->|cancel| GS01

    GS03 -->|select KINOKO/STAR| GS04
    GS03 -->|select TIME TRIAL| GS07
    GS03 -->|cancel| GS02

    GS04 -->|start puzzle| GS0A
    GS04 -->|exit| GS03
    GS04 -->|all puzzles cleared| GS03

    GS05 -->|start puzzle| GS08
    GS05 -->|exit| GS02
    GS05 -->|all puzzles cleared| GS02

    GS07 -->|start puzzle| GS09
    GS07 -->|exit| GS03

	GS08 -->|save and exit| GS00
	GS08 -->|return after puzzle end| GS05

	GS09 -->|save and exit| GS00
	GS09 -->|return after puzzle end| GS07

	GS0A -->|save and exit| GS00
	GS0A -->|return after puzzle end| GS04
```

### Phase Flows

#### GS00 Phase Flow

```mermaid
flowchart TD
	GS00P00[Phase 00 TitleScreenInit]
	GS00P01[Phase 01 TitleScreenIdle]
	GS00P02[Phase 02 TitleScreenTransition]
	GS00P03[Phase 03 ContinueSavedGameScreenInit]
	GS00P04[Phase 04 ContinueSavedGameScreenIdle]
	GS01E[Exit to GS01]
	GS02E[Exit to GS02]
	GS08E[Exit to GS08]
	GS09E[Exit to GS09]
	GS0AE[Exit to GS0A]

	GS00P00 --> GS00P01
	GS00P01 --> GS00P02
	GS00P02 -->|has save data| GS01E
	GS00P02 -->|no save data| GS02E
	GS00P02 -->|continue saved puzzle| GS00P03
	GS00P03 --> GS00P04
	GS00P03 -->|continue EASY PICROSS| GS08E
	GS00P03 -->|continue KINOKO/STAR| GS0AE
	GS00P03 -->|continue TIME TRIAL| GS09E
	GS00P04 -->|confirm continue choice| GS08E
	GS00P04 -->|confirm continue choice| GS0AE
	GS00P04 -->|confirm continue choice| GS09E
```

#### GS01 Phase Flow

```mermaid
flowchart TD
	GS01P00[Phase 00 DataSelectScreenInit]
	GS01P01[Phase 01 DataSelectScreenIdle]
	GS01P02[Phase 02 DataSelectScreenFinish]
	GS02E[Exit to GS02]

	GS01P00 --> GS01P01
	GS01P01 -->|A or START| GS01P02
	GS01P01 -->|erase prompt flow| GS01P01
	GS01P02 --> GS02E
```

#### GS02 Phase Flow

```mermaid
flowchart TD
	GS02P00[Phase 00 GameSelectScreenInit]
	GS02P01[Phase 01 GameSelectScreenIdle]
	GS02P02[Phase 02 ConfirmSelectionTransition]
	GS02P03[Phase 03 CancelSelectionTransition]
	GS01E[Exit to GS01]
	GS03E[Exit to GS03]
	GS05E[Exit to GS05]
	GS06E[Exit to GS06]

	GS02P00 --> GS02P01
	GS02P01 -->|confirm selection| GS02P02
	GS02P01 -->|cancel| GS02P03
	GS02P02 -->|HOW TO PLAY| GS06E
	GS02P02 -->|EASY PICROSS| GS05E
	GS02P02 -->|PICROSS| GS03E
	GS02P03 --> GS01E
```

#### GS03 Phase Flow

```mermaid
flowchart TD
	GS03P00[Phase 00 CourseSelectScreenInit]
	GS03P01[Phase 01 CourseSelectScreenIdle]
	GS03P02[Phase 02 ConfirmSelectionTransition]
	GS03P03[Phase 03 CancelSelectionTransition]
	GS02E[Exit to GS02]
	GS04E[Exit to GS04]
	GS07E[Exit to GS07]

	GS03P00 --> GS03P01
	GS03P01 -->|confirm selection| GS03P02
	GS03P01 -->|cancel| GS03P03
	GS03P02 -->|KINOKO/STAR| GS04E
	GS03P02 -->|TIME TRIAL| GS07E
	GS03P03 --> GS02E
```

#### GS04 Phase Flow

```mermaid
flowchart TD
	GS04P00[Phase 00 PicrossCoursePuzzleSelectScreenInit]
	GS04P01[Phase 01 Idle]
	GS04P02[Phase 02 ConfirmSelectionTransitionToPuzzle]
	GS04P03[Phase 03 CancelSelectionTransitionToCourseSelect]
	GS04P04[Phase 04 ReturnFromPuzzleTransitionAndHandleUnlockFlow]
	GS04P05[Phase 05 ReturnFromPuzzleTransitionAndCommitResult]
	GS03E[Exit to GS03]
	GS0AE[Exit to GS0A]

	GS04P00 --> GS04P01
	GS04P01 -->|confirm selection| GS04P02
	GS04P01 -->|cancel| GS04P03
	GS04P02 --> GS0AE
	GS04P03 --> GS03E
	GS04P05 --> GS04P04
	GS04P04 -->|normal return| GS04P01
	GS04P04 -->|unlock exit or completion flow exit| GS03E
```

#### GS05 Phase Flow

```mermaid
flowchart TD
	GS05P00[Phase 00 EasyPicrossPuzzleSelectScreenInit]
	GS05P01[Phase 01 Idle]
	GS05P02[Phase 02 ConfirmSelectionTransitionToPuzzle]
	GS05P03[Phase 03 CancelSelectionTransitionToGameSelect]
	GS05P04[Phase 04 ReturnFromPuzzleTransitionAndHandleUnlockFlow]
	GS05P05[Phase 05 ReturnFromPuzzleTransitionAndCommitResult]
	GS02E[Exit to GS02]
	GS08E[Exit to GS08]

	GS05P00 --> GS05P01
	GS05P01 -->|confirm selection| GS05P02
	GS05P01 -->|cancel| GS05P03
	GS05P02 --> GS08E
	GS05P03 --> GS02E
	GS05P05 --> GS05P04
	GS05P04 -->|normal return| GS05P01
	GS05P04 -->|unlock exit or completion flow exit| GS02E
```

#### GS06 Phase Flow

```mermaid
flowchart TD
	GS06P00[00 Init] --> GS06P01[01 Message]
	GS06P01 --> GS06P02[02 HighlightNumbersTop Prepare]
	GS06P02 --> GS06P03[03 HighlightNumbersTop Animation]
	GS06P03 --> GS06P04[04 HighlightNumbersLeft Prepare]
	GS06P04 --> GS06P05[05 HighlightNumbersLeft Animation]
	GS06P05 --> GS06P06[06 Message]
	GS06P06 --> GS06P07[07 Message]
	GS06P07 --> GS06P08[08 SolvePuzzle Prepare]
	GS06P08 --> GS06P09[09 SolvePuzzle Animation]
	GS06P09 --> GS06P0A[0A SolvePuzzle Finish]
	GS06P0A --> GS06P0B[0B Message]
	GS06P0B --> GS06P0C[0C ResetBoard]
	GS06P0C --> GS06P0D[0D HighlightNumbersTop Prepare]
	GS06P0D --> GS06P0E[0E HighlightNumbersTop Animation]
	GS06P0E --> GS06P0F[0F Message]
	GS06P0F --> GS06P10[10 HighlightNumbersFirstColumn Prepare]
	GS06P10 --> GS06P11[11 HighlightNumbersFirstColumn Animation]
	GS06P11 --> GS06P12[12 SolveFirstColumn Prepare]
	GS06P12 --> GS06P13[13 SolveFirstColumn Animation]
	GS06P13 --> GS06P14[14 HighlightNumbersLeft Prepare]
	GS06P14 --> GS06P15[15 HighlightNumbersLeft Animation]
	GS06P15 --> GS06P16[16 Message]
	GS06P16 --> GS06P17[17 HighlightNumbersSecondRow Prepare]
	GS06P17 --> GS06P18[18 HighlightNumbersSecondRow Animation]
	GS06P18 --> GS06P19[19 SolveSecondRow Prepare]
	GS06P19 --> GS06P1A[1A SolveSecondRow Animation]
	GS06P1A --> GS06P1B[1B Message]
	GS06P1B --> GS06P1C[1C DecrementPuzzleTimer]
	GS06P1C --> GS06P1D[1D GameOverMessage]
	GS06P1D --> GS06P1E[1E MakeMistake Prepare]
	GS06P1E --> GS06P1F[1F MakeMistake Animation]
	GS06P1F --> GS06P20[20 Message]
	GS06P20 --> GS06P21[21 MarkWithX Prepare]
	GS06P21 --> GS06P22[22 MarkWithX Animation]
	GS06P22 --> GS06P23[23 WithHintPopUp Prepare]
	GS06P23 --> GS06P24[24 WithHintPopUp Demonstration]
	GS06P24 --> GS06P25[25 Message]
	GS06P25 --> GS06P26[26 StopTopHintCursor]
	GS06P26 --> GS06P27[27 StopLeftHintCursor]
	GS06P27 --> GS06P28[28 ApplyHintSolve]
	GS06P28 --> GS06P29[29 AdvanceOrRestart]
	GS06P29 -->|restart path| GS06P00
	GS06P29 -->|cancel path| GS06P2A[2A CancelAndReturnToMenu]
```

#### GS07 Phase Flow

```mermaid
flowchart TD
		GS07P00[Phase 00 TimeTrialRankingScreenInit]
		GS07P01[Phase 01 TimeTrialRankingScreenIdle]
		GS07P02[Phase 02 TransitionToPuzzleStart]
		GS07P03[Phase 03 TransitionBackToMenu]
		GS07P04[Phase 04 PostClearRankingTransition]
		GS07P05[Phase 05 NewRecordNameEntry]
		GS03E[Exit to GS03]
		GS09E[Exit to GS09]

		GS07P00 --> GS07P01
		GS07P01 -->|start puzzle| GS07P02
		GS07P01 -->|cancel| GS07P03
		GS07P02 --> GS09E
		GS07P03 --> GS03E
		GS09E -->|post-clear return path| GS07P04
		GS07P04 -->|no new record| GS07P01
		GS07P04 -->|new record| GS07P05
		GS07P05 --> GS07P01
```

#### GS08 Phase Flow

```mermaid
flowchart TD
	GS08P00[Phase 00 EasyPicrossPuzzleInit]
	GS08P0B[Phase 0B ContinueSavedPuzzleInitAndOpenPauseMenu]
	GS08P01[Phase 01 HintPopupSelection]
	GS08P02[Phase 02 HintCursorSweepAndApplySelection]
	GS08P03[Phase 03 PuzzleGameplayLoop]
	GS08P04[Phase 04 ConfirmExitAndReturnToEasyPicrossSelect]
	GS08P05[Phase 05 PauseMenuInitAndMaskClues]
	GS08P06[Phase 06 PauseMenuIdle]
	GS08P07[Phase 07 PauseMenuSavePrompt]
	GS08P08[Phase 08 PauseMenuBGMSubmenu]
	GS08P09[Phase 09 PauseMenuGiveUpPrompt]
	GS08P0A[Phase 0A ClosePauseMenuAndResumeGameplay]
	GS00E[Exit to GS00]
	GS05E[Exit to GS05]

	GS08P00 --> GS08P03
	GS08P0B --> GS08P06
	GS08P03 -->|hint flow trigger| GS08P01
	GS08P01 --> GS08P02
	GS08P02 --> GS08P03
	GS08P03 -->|START| GS08P05
	GS08P03 -->|post-clear or game-over confirm| GS08P04
	GS08P05 --> GS08P06
	GS08P06 -->|A on SAVE| GS08P07
	GS08P06 -->|A on GIVE UP| GS08P09
	GS08P06 -->|A on BGM| GS08P08
	GS08P06 -->|B/START close| GS08P0A
	GS08P07 -->|cancel save| GS08P06
	GS08P07 -->|confirm save and exit| GS00E
	GS08P08 -->|confirm| GS08P06
	GS08P09 -->|cancel give up| GS08P06
	GS08P09 -->|confirm give up| GS08P04
	GS08P0A --> GS08P03
	GS08P04 --> GS05E
```

## 3) Graphics & Sprite Rendering System

## 4) Sound Engine (Bank ???)

## 5) Save-Slot RAM Region Structure

The save-related region is centered in the `00:a000`-`00:ba07` address space and is split into a primary block plus a mirrored copy with checksums.

| Address / Range | Size | Key symbols | Purpose |
|---|---:|---|---|
| 00:a000 | 1 | rSaveDataPrimaryBlockStart | Start of primary save-data block. |
| 00:a001-00:a002 | 2 | rPuzzleOrderTableCursor, rPuzzleOrderTableStart | Puzzle-order table metadata. |
| 00:a003-00:a03e | 0x3c | TODO | Unmapped bytes in primary save block (TODO). |
| 00:a03f | 1 | rSaveDataTimeTrialRankingEntriesInsertAddressBias | Bias/base byte used by GS07 name-entry commit math when targeting ranking entries. |
| 00:a042-00:a064 | 0x23 | rSaveDataTimeTrialRankingEntries, rSaveDataTimeTrialRankingEntriesShiftSourceEnd, rSaveDataTimeTrialRankingEntriesShiftDestEnd | Time Trial ranking table in save data (5 entries x 7 bytes: MMSS + 3-char name), plus helper endpoints used by ranking-entry shifting. |
| 00:a065 | 1 | rSelectedSaveSlotIndex | Active save-slot index used by GS01/GS04/GS05 logic. |
| 00:a066-00:a068 | 3 | TODO | Unmapped bytes in primary save block (TODO). |
| 00:a069-00:a077 | 0x0f | rSaveSlotXEasyPicrossBGMSelectionIndex, rSaveSlotXPicrossKinokoBGMSelectionIndex, rSaveSlotXPicrossStarBGMSelectionIndex, rSaveSlotXTimeTrialBGMSelectionIndex, rSaveSlotXModeBGMSelectionIndexEntry4_Unknown | Per-slot BGM selection index entries (5 bytes per save slot: Easy Picross, Picross Kinoko, Picross Star, Time Trial, unknown entry4). |
| 00:a078-00:a07a | 3 | rSaveSlotXGameSelectCursorRow | Per-slot game-select cursor row. |
| 00:a07b-00:a07d | 3 | rSaveSlotXEasyPicrossPostClearUnlockFlowState_Unsure | Per-slot Easy Picross post-clear unlock-flow state bytes (observed in GS05). |
| 00:a07e-00:a080 | 3 | rSaveSlotXEasyPicrossClearedPuzzleCount | Per-slot Easy Picross cleared-count values. |
| 00:a081-00:a086 | 6 | rSaveSlotXEasyPicrossPuzzleSelectCursorColumn/Row | Per-slot Easy Picross puzzle-select cursor positions. |
| 00:a087-00:a386 | 0x300 | rSaveSlotXEasyPicrossPuzzleTimeDataRecordTable | Easy Picross per-slot time records (3 slots, each 64 entries x 3 bytes). |
| 00:a387-00:a389 | 3 | rSaveSlotXUnlockProgressState | Per-slot unlock progression state (`$01/$02/$03` observed). |
| 00:a38a-00:a38c | 3 | rSaveSlotXPicrossKinokoStarClearedPuzzleCount | Per-slot shared cleared-count used for GS04 unlock checks. |
| 00:a38d-00:a38f | 3 | rSaveSlotXCourseSelectCursorRow | Per-slot GS04 course-select row. |
| 00:a390-00:a3a1 | 0x12 | rSaveSlotXPicross{Kinoko,Star,TimeTrial_Unsure}CoursePuzzleSelectCursorColumn/Row | Per-slot + per-course GS04 cursor caches (Kinoko, Star, TimeTrial_Unsure). |
| 00:a3a2-00:aa61 | 0x6c0 | rSaveSlotXPicross{Course}PuzzleTimeDataRecordTable | GS04 time tables (3 slots x 3 course rows x 64 entries x 3 bytes). |
| 00:aa62-00:aca1 | 0x240 | rSaveSlotXPicross{Course}PuzzleStatusDataTable | GS04 status tables (3 slots x 3 course rows x 64 entries x 1 byte). |
| 00:aca2 | 1 | rContinueSavedGameFlowMode_Unsure | Continue/load flow mode byte (behavior still uncertain). |
| 00:aca3-00:acea | 0x48 | rSavedPuzzleHintPopupSelection, rSavedPuzzleTimerAdjustmentStep, rSavedPuzzleTimerMinuteOnes, rSavedPuzzleTimerMinuteTens, rSavedPuzzleTimerSecondOnes, rSavedPuzzleTimerSecondTens, rSavedPuzzleDataIndexLow, rSavedPuzzleDataIndexHigh, rSavedPuzzleCursorColumn, rSavedPuzzleCursorRow, rSavedPuzzleCellStatePackedBuffer, rSavedPuzzleGridWidth, rSavedPuzzleGridHeight | Saved puzzle snapshot fields used by continue/restore flow (timer, puzzle id, cursor, packed cell-state buffer, grid dimensions). |
| 00:aceb-00:acec | 2 | TODO | Unmapped bytes in primary save block (TODO). |
| 00:aced | 1 | rHiddenProgrammerCreditsMirror | Mirror byte tied to signature validation data. |
| 00:acee-00:acfc | 0x0f | TODO | Unmapped bytes in primary save block (TODO). |
| 00:acfd | 1 | rSaveValidationMagicBytesMirror | Mirror of save-validation magic data. |
| 00:acfe-00:ad01 | 4 | TODO | Unmapped bytes in primary save block (TODO). |
| 00:ad02-00:ad03 | 2 | rSaveDataPrimaryChecksumSum, rSaveDataPrimaryChecksumXor | Checksums for primary save block. |
| 00:ad04-00:ba05 | 0x0d02 | rSaveDataMirrorBlockStart | Mirror copy of save-data block. |
| 00:ba06-00:ba07 | 2 | rSaveDataMirrorChecksumSum, rSaveDataMirrorChecksumXor | Checksums for mirror save block. |

Notes:
- `rSaveSlotX...` denotes the slot-specific variants (slot 1/2/3 labels) already mapped in the symbol file.
- `Picross{Course}` denotes the Kinoko/Star/TimeTrial_Unsure variants.

## 6) Unused / Cut Content
