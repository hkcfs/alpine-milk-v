# Phase 05 — Greenfield best-effort (8051 / DRM / Media)

## Goal

Attempt the untouched items — 8051 MCU support, DRM/display, Media/video
codec — under a strict best-effort rule: attempt under the static gates, ship
what builds boot-safe, record honest blocked-with-evidence for the rest.

## Requirements

- Time-box each item; cheapest-first (8051, then DRM, then Media).
- Nothing may risk the boot: all greenfield drivers as modules, off by
  default, no required DTS nodes.
- A blocked item gets a dated note (what was tried, what source exists,
  what's missing) — never a half-wired driver.

## Acceptance criteria

- Whatever ships: builds, `dtc`/gates clean, image assembles, QEMU login green.
- Blocked items documented; phase still counts as complete (best-effort).
- Marked untested-on-HW; no tested claims.

## Hardstop

Phase-level stop only if the QEMU login regresses. Item-level stops are
expected and recorded.

## Open questions

- [OPEN: 8051 toolchain/firmware availability.]
- [OPEN: whether any DRM driver source exists for CV18xx outside the vendor
  drop.]
- [OPEN: H265/Media codec source — likely blocked; confirm and record.]

## Out of scope

- Making blocked items work at any cost. Upstream submissions.
