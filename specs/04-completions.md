# Phase 04 — In-flight completions

## Goal

Finish what's partially in our tree but not demonstrably working: thermal
zones, PWM, timer, watchdog, sysctrl, Ethernet MDIO mux, remoteproc C906L +
mailbox, I2S DTS — for each, either confirm working (with evidence hook) or
fix forward.

## Requirements

- Per item: check driver + DTS presence against current stable; fix the
  delta (driver port, DTS node, Kconfig/defconfig symbol, module packaging).
- Remoteproc + mailbox must at least reach firmware-load attempt;
  GPIO-toggle proof is the reference behavior (Arduino matrix).
- SPI/UART DMA complaints stay as known-notes unless the fix is small and
  safe (no DMA rework in this effort).
- Extend `hw-probe.sh` + HW-EVIDENCE per item fixed.

## Acceptance criteria

- Everything builds; `dtc`/`shellcheck`/`yamllint` clean; image assembles;
  QEMU boots to login.
- Each item: working-or-documented-why-not in its spec section.
- Marked untested-on-HW; no tested claims.

## Hardstop

Stop an item (not the phase) if the fix needs DMA/core rework — note it and
move on.

## Open questions

- [OPEN: which items stable already absorbed — decided at build time
  against the audit in phase 01.]

## Out of scope

- DMA subsystem rework. Upstream submissions. arm64 changes.
