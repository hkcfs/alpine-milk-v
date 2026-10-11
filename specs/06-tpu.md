# Phase 06 — TPU stack

## Goal

Ship a boot-safe TPU (NPU) stack in-image: kernel driver + firmware blobs +
userspace hooks, off-or-deferred by default, provable in the HW session.

## Requirements

- Source the driver from the best available vendor/community drop
  (SeimoDev/cv1812h-linux-6.18-port is the watched reference); record
  origin + version in `packages/README.md`.
- Firmware blobs packaged at driver-expected paths; license noted.
- Boot-safe: module, deferred probe, no boot dependency; failure must log,
  never hang.
- `hw-probe.sh` + HW-EVIDENCE TPU section (device node, dmesg signature,
  minimal inference proof if userspace allows).

## Acceptance criteria

- Builds against current stable; gates clean; image assembles; QEMU login green.
- Marked untested-on-HW; no tested claims.

## Hardstop

Stop if no driver source builds without vendoring half the kernel — record
blocked-with-evidence (with the SeimoDev pointer) instead of shipping junk.

## Open questions

- [OPEN-SPIKE: which vendor drop actually builds — spike with the prototype
  skill if the choice is unclear at build time.]
- [OPEN: firmware redistribution license — verify before shipping blobs.]

## Out of scope

- Full TPU userspace SDK. Upstream submissions. arm64 changes.
