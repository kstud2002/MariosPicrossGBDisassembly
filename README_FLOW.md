# Mario's Picross GB Disassembly: Game Flow Reference

Based on currently mapped symbols in `Mario's Picross (USA, Europe) (SGB Enhanced).sym` and `disassembly/bank_00[1-f].asm`. Only mapped symbols and directly observed control flow are included.

## 1) Main Game Loop & Interrupts

### VBlank interrupt

## 2) State Flow

The game is driven by a state machine centered on the main game-state byte, with state handlers dispatched from the startup/runtime entry points and phase-specific routines reached from within each state. The flow starts from the title and selection screens, moves into gameplay, and then branches into result/end-game paths depending on the mode and outcome. The available evidence supports a layered structure of broad states plus smaller phase steps, rather than a single monolithic loop.

## 3) Gameplay Loop Internals (State $00)

### Gameplay phase bytes

### BoardUpdatePhase pipeline

### Line counters

## 4) Sound Engine (Bank ???)

## 5) Graphics & Sprite Rendering System

## 6) Unused / Cut Content
