# BLOCKED.md — honest best-effort records (phase 05/06 overflow)

These items were attempted and are NOT shipped. No half-wired drivers were
added. Each entry: what was tried, what exists, what's missing.

## DRM/display — BLOCKED, no HW path

- Tried: searched vendor `linux_5.10` `drivers/gpu/drm` (162 entries) — no
  cvitek/sophgo DRM driver, only generic MIPI helpers.
- Missing: any display driver source AND a display output on the Duo 256M
  board (nothing wired). Even a perfect driver would be unverifiable.
- Verdict: out of scope until a board with display appears.

## Media VENC/VDEC (H264/H265) — BLOCKED, needs media-stack port

- Exists: `osdrv/interdrv/{vcodec,vpss,vi,vo,ive,jpeg}` in
  milkv-duo/duo-buildroot-sdk-v2 (same SDK the TPU driver came from).
- Missing: porting the whole stack (vi/vpss/venc + userspace cvi_mpi) from
  5.10 to 7.2 — a multi-day job, not a phase-05 time-box.
- Pointer kept for a future media phase.

## 8051 MCU — BLOCKED, needs toolchain + firmware

- The little-core story is covered by remoteproc + mailbox (in-tree,
  Arduino matrix: GPIO works).
- Missing: SDCC 8051 toolchain integration + vendor 8051 firmware source in
  a buildable form.
- Verdict: remoteproc path is the supported route; bare-8051 deferred.

## TPU — PACKAGED + COMPILE-PROVEN (HW-unverified, NOT blocked)

- Packaged: `packages/kernel-modules/tpu/` (vendor driver + interdrv
  headers + wrapper Makefile + shims, all documented in SOURCE).
- Proven 2026-10-11 on 7.2.10: `cv181x_tpu.ko` builds clean (fixed along
  the way: PKGDIR absolute paths, timer rename shims, class_create,
  void remove, dma_sync_single_for_device, DMA_BUF namespace, vendored
  ION layout, streamline stub).
- cviruntime userspace SDK + TPU firmware blobs NOT included
  (redistribution unverified — spec 06 OPEN stands).
- Runtime needs an ION-compatible exporter + firmware; proves in the HW
  session via HW-EVIDENCE TPU section.
