# Phase 01 — Audit + scaffold

## Goal

Know exactly what our tree carries vs. what current stable already has, and
scaffold what later phases need: `packages/` driver layout, DT overlay
support, and the evidence tooling for the final HW session.

## Requirements

- Audit all 25 `kernel/patches/*.patch` against the current stable tree:
  drop what's upstream (must auto-skip today), refresh what applies with
  fuzz, record the verdict per patch in `kernel/patches/STATUS.md`.
- Verify patch `024`'s fate across versions (redundant once Duo 256M board
  support lands in stable; must skip cleanly, never break the build).
- Scaffold `packages/kernel-modules/<driver>/` + `packages/userspace/` layout
  with a README describing how a phase adds a driver (source location, Kconfig
  wiring, firmware placement, DTS hookup).
- Add `scripts/hw-probe.sh`: on-board evidence collector (dmesg + per-subsystem
  `/sys` dumps: thermal zones, pwm, rtc, i2s, remoteproc, tpu, mmc, usb, net).
- Add DT overlay support (overlay dir + loader hook, following the
  queenkjuul pattern).
- Draft `HW-EVIDENCE.md` checklist (one section per peripheral, expected
  evidence) for the final flash session.

## Acceptance criteria

- `shellcheck` clean on touched scripts; `yamllint` clean on touched YAML.
- Full riscv image builds; QEMU boots to login (regression).
- `STATUS.md` covers all 25 patches; `HW-EVIDENCE.md` covers every
  peripheral in phases 02–06.

## Hardstop

Stop if the QEMU login regresses or any patch breaks `git apply`-clean.

## Open questions

- [OPEN: exact stable version at build time determines which patches drop —
  re-audit if stable bumps mid-effort.]

## Out of scope

- New drivers (phases 02–06). Upstream submissions. arm64 changes.
