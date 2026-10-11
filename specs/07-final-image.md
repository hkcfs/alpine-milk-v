# Phase 07 — Final image + evidence bundle

## Goal

Assemble the single flash-and-test image with everything phases 01–06 landed,
QEMU-regression green, and hand over a complete evidence bundle for the one
real-hardware session.

## Requirements

- Full riscv image build from the final tree (latest stable at build time).
- QEMU regression: boots to login, SSH diagnostics clean.
- Evidence bundle: `HW-EVIDENCE.md` final pass (every peripheral, expected
  evidence, commands to run), `hw-probe.sh` output captured from QEMU as a
  format sample, flash instructions (`dd` line, serial settings
  `ttyS0 115200n8`, credentials).
- No release tag, no "tested" claims anywhere — the image is
  complete-but-untested until the HW session signs it off.

## Acceptance criteria

- Image artifact + evidence bundle present; QEMU log attached.
- HW-EVIDENCE covers all items from phases 02–06 with zero gaps.
- Repo has no tested-claims or premature tags.

## Hardstop

Stop if QEMU regresses — fix forward, never hand over a non-booting image.

## Open questions

None — all product questions were settled up front; remaining unknowns live
in their phase specs.

## Out of scope

- The HW session itself (user-run). Release publishing (after sign-off).
