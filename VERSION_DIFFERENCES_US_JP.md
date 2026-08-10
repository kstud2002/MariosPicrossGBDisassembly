# USA/EU vs Japan Disassembly Differences

This document tracks high-level differences between the two disassemblies in this repository:

- USA/EU: `disassembly/`
- Japan: `disassembly_jp/`

## File Pair 001

- USA/EU: `disassembly/bank_000.asm`
- Japan: `disassembly_jp/bank_000.asm`

### High-level difference summary (bank_000)

- Diff hunks: 95.
- Confirmed semantic changes: mixed code and data divergence; save-validation constants differ by region; at least one startup-path behavior difference is present (a USA/EU `HandleStartupSaveDataIntegrityCheck` call-site is absent in JP in the same form).
- Likely relocation/data-length fallout: many immediate and pointer/address differences downstream are consistent with layout shifts caused by earlier regional content changes.

## File Pair 002

- USA/EU: `disassembly/bank_001.asm`
- Japan: `disassembly_jp/bank_001.asm`

### High-level difference summary (bank_001)

- Diff hunks: 24.
- Confirmed semantic changes: primarily localization/script content differences, with stable control-flow mnemonics and no clear major logic rewrite.
- Likely relocation/data-length fallout: many table and pointer constant changes are expected rebases caused by different message/script lengths.

## File Pair 003

- USA/EU: `disassembly/bank_002.asm`
- Japan: `disassembly_jp/bank_002.asm`

### High-level difference summary (bank_002)

- Diff hunks: 17.
- Confirmed semantic changes: regional puzzle-object naming/content differences and related data-table content divergence.
- Likely relocation/data-length fallout: table rebases and pointer/address deltas are mostly consistent with shifted data layout, not standalone logic additions/removals.

## File Pair 004

- USA/EU: `disassembly/bank_003.asm`
- Japan: `disassembly_jp/bank_003.asm`

### High-level difference summary (bank_003)

- Diff hunks: 13.
- Confirmed semantic changes: large localized message and puzzle-name data rewrite.
- Likely relocation/data-length fallout: substantial byte-level churn is largely structural re-layout ripple from changed data lengths and ordering.

## File Pair 005

- USA/EU: `disassembly/bank_004.asm`
- Japan: `disassembly_jp/bank_004.asm`

### High-level difference summary (bank_004)

- Diff hunks: 11.
- Confirmed semantic changes: SGB title-border payload and table content differences.
- Likely relocation/data-length fallout: payload ordering and pointer/address differences are mostly expected consequences of payload size/layout variation.

## File Pair 006

- USA/EU: `disassembly/bank_005.asm`
- Japan: `disassembly_jp/bank_005.asm`

### High-level difference summary (bank_005)

- Diff hunks: 5.
- Confirmed semantic changes: tutorial/how-to-play text/script content differs by region.
- Likely relocation/data-length fallout: companion pointer/table changes are expected from script length differences; no direct `call`/`jp` mnemonic-line additions/removals are evident.

## File Pair 007

- USA/EU: `disassembly/bank_006.asm`
- Japan: `disassembly_jp/bank_006.asm`

### High-level difference summary (bank_006)

- Diff hunks: 1.
- Confirmed semantic changes: none detected.
- Likely relocation/data-length fallout: none; header-comment-only diff after excluding the generated ROM-title comment line.

## File Pair 008

- USA/EU: `disassembly/bank_007.asm`
- Japan: `disassembly_jp/bank_007.asm`

### High-level difference summary (bank_007)

- Diff hunks: 1.
- Confirmed semantic changes: none detected.
- Likely relocation/data-length fallout: none; header-comment-only diff.

## File Pair 009

- USA/EU: `disassembly/bank_008.asm`
- Japan: `disassembly_jp/bank_008.asm`

### High-level difference summary (bank_008)

- Diff hunks: 1.
- Confirmed semantic changes: none detected.
- Likely relocation/data-length fallout: none; header-comment-only diff.

## File Pair 010

- USA/EU: `disassembly/bank_009.asm`
- Japan: `disassembly_jp/bank_009.asm`

### High-level difference summary (bank_009)

- Diff hunks: 1.
- Confirmed semantic changes: none detected.
- Likely relocation/data-length fallout: none; header-comment-only diff.

## File Pair 011

- USA/EU: `disassembly/bank_00a.asm`
- Japan: `disassembly_jp/bank_00a.asm`

### High-level difference summary (bank_00a)

- Diff hunks: 1.
- Confirmed semantic changes: none detected.
- Likely relocation/data-length fallout: none; header-comment-only diff.

## File Pair 012

- USA/EU: `disassembly/bank_00b.asm`
- Japan: `disassembly_jp/bank_00b.asm`

### High-level difference summary (bank_00b)

- Diff hunks: 3.
- Confirmed semantic changes: tilemap/data-region content divergence with stable high-level code structure.
- Likely relocation/data-length fallout: any nearby pointer/address drift is likely dependent on data placement shifts rather than independent logic edits.

## File Pair 013

- USA/EU: `disassembly/bank_00c.asm`
- Japan: `disassembly_jp/bank_00c.asm`

### High-level difference summary (bank_00c)

- Diff hunks: 5.
- Confirmed semantic changes: SGB X-Ray border payload/table content divergence.
- Likely relocation/data-length fallout: table and address shifts are likely secondary effects of payload length/layout variation; no obvious high-level control-flow rewrite.

## File Pair 014

- USA/EU: `disassembly/bank_00d.asm`
- Japan: `disassembly_jp/bank_00d.asm`

### High-level difference summary (bank_00d)

- Diff hunks: 1.
- Confirmed semantic changes: none detected.
- Likely relocation/data-length fallout: none; header-comment-only diff.

## File Pair 015

- USA/EU: `disassembly/bank_00e.asm`
- Japan: `disassembly_jp/bank_00e.asm`

### High-level difference summary (bank_00e)

- Diff hunks: 1.
- Confirmed semantic changes: none detected.
- Likely relocation/data-length fallout: none; header-comment-only diff.

## File Pair 016

- USA/EU: `disassembly/bank_00f.asm`
- Japan: `disassembly_jp/bank_00f.asm`

### High-level difference summary (bank_00f)

- Diff hunks: 53.
- Confirmed semantic changes: real sound-engine behavior divergence is present, including JP re-entry/busy guard behavior in dispatcher and frame-tick paths.
- Likely relocation/data-length fallout: much of the remaining pointer/byte churn is still expected from stream/table content and length differences that shift referenced addresses.
