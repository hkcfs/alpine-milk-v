# Phase 03 — Orphan drivers (eFuse, SPI NOR)

## Goal

Make the two orphaned submissions functional in-image: eFuse (nvmem) and
SPI NOR/NAND flash. "Take over" here means carry working drivers, not list
submissions (image-only scope).

## Requirements

- eFuse: working nvmem driver + bindings + DTS node; read path provable via
  `/sys` (exact evidence goes in HW-EVIDENCE).
- SPI NOR: working driver + DTS flash node; probe must be safe on boards
  whose flash is absent/different (no boot hang — degrade to probe-defer).
- Both must survive kernel bumps: prefer driver sources that apply cleanly
  over frozen prebuilts; record origin + version in `packages/README.md`.

## Acceptance criteria

- Drivers build as modules (or built-in where probe order demands);
  `dtc`-clean DTS; `shellcheck`/`yamllint` clean.
- Full image assembles; QEMU boots to login.
- Marked untested-on-HW; no tested claims.

## Hardstop

Stop if a driver can't be made to build against current stable without
vendoring half the kernel — record blocked-with-evidence instead.

## Open questions

- [OPEN: SPI NAND vs NOR coverage depends on what the vendor source
  supports — survey at build time.]

## Out of scope

- Upstream list submissions. arm64 backports. Greenfield items.
