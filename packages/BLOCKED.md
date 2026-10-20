# BLOCKED.md — honest best-effort records (phase 05/06 overflow)

These items were attempted and are NOT shipped. No half-wired drivers were
added. Each entry: what was tried, what exists, what's missing.

## Camera receiver + capture (cv1800-csi2, cv1800-vi) — BLOCKED, repo gone

- The SG2000 MIPI CSI-2 receiver and the VI raw-capture driver are NOT in
  mainline 7.2.10. They live in `leafpmmp/sg200x-camera-dkms` (pinned commit
  `2c1ebd5470b44b10f5fbf28f05c438aafb7e5f06`), which Armbian's
  `sophgo-sg200x-camera` extension copies into the kernel tree.
- **That repository is not publicly accessible** (404 on github.com, on
  codeload and on raw.githubusercontent as of 2026-10-20, while the search
  index still lists it). Without it the camera pipeline cannot be built.
- What IS upstream and shipped: the GC2083 sensor driver
  (`drivers/media/i2c/gc2083.c`), the CODA980 H.264 encoder and the JPEG
  unit. So the *encoder* side works; only the *capture* side is missing.
- Fallback candidate: the vendor SDK's 5.10-era `osdrv/interdrv/vi` (a port
  job of the same size as the TPU one) - not started.
- Consequence for the Duo 256M: it has no CSI connector, so a camera is not
  a use case there. This matters for the Duo S, not for us.

## DRM/display — BLOCKED, no HW path

- Tried: searched vendor `linux_5.10` `drivers/gpu/drm` (162 entries) — no
  cvitek/sophgo DRM driver, only generic MIPI helpers.
- Missing: any display driver source AND a display output on the Duo 256M
  board (nothing wired). Even a perfect driver would be unverifiable.
- Verdict: out of scope until a board with display appears.

## Media VENC/VDEC (H264/H265) — RESOLVED (H.264), H.265 still parked

- H.264: upstream mainline 7.2.10 has the CODA980 driver (ARCH_SOPHGO) and
  the `sg2000-video-codec` DT overlay; we ship the overlay and the
  `coda980.bin` firmware. Proven upstream on the Duo S at 29.6 fps 1080p.
- H.265 (WAVE420L): parked upstream too - the encoder never finishes a
  picture (Lukasz Sobala's notes in `duos-camera/h265/`). Nothing to port
  until upstream unparks it.

## 8051 MCU — BLOCKED, needs toolchain + firmware

- The little-core story is covered by remoteproc + mailbox (both upstream
  now) - the Arduino matrix's GPIO proof works that way.
- Missing: SDCC 8051 toolchain integration + vendor 8051 firmware in a
  buildable form.
- Verdict: remoteproc path is the supported route; bare-8051 deferred.

## aic8800 WiFi — BUILDS + bsp LOADS, fdrv PANICS WITHOUT HARDWARE

- Builds clean on 7.2.10 (3 modules) and `aic8800_bsp.ko` loads in QEMU.
- `aic8800_fdrv.ko` **panics the kernel on insmod when there is no WiFi
  chip / DT node** — verified in QEMU 2026-10-11: `Oops - load access fault
  [#1]` inside `rwnx_mod_init` → `aicbsp_set_subsys()` /
  `aicsmac_driver_register()`. Almost certainly the no-hardware path, but
  that is an assumption until the board says otherwise.
- Handling: fdrv is NOT auto-loaded anywhere (no boot hook, no selftest
  insmod). Loading it is a deliberate manual step via
  `milkv-load-wifi` on the real board only.
- HW session must try it and paste either the working path or the panic.

## TPU — PACKAGED + COMPILE-PROVEN + LOADS (HW-unverified, NOT blocked)

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
- QEMU 2026-10-11: `cv181x_tpu.ko` insmod SUCCESS (no device node on
  QEMU's virt DTB, so it just idles — no hang, no panic).
