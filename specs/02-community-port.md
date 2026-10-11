# Phase 02 — Community port (USB / WiFi / BT / overlays / I2S)

## Goal

Bring the working community pieces (proven in queenkjuul/milkv-duo-ubuntu on
mainline 7.0) into our riscv images: USB mode switching, aic8800 WiFi/BT
modules + firmware, DT overlay plumbing, I2S audio, Duo ethernet DTS if the
current stable still needs it.

## Requirements

- USB: host/gadget mode scripts + boot-time service (adapt `milkv-usb-*`
  pattern); must default to a safe mode and never break serial console boot.
- WiFi/BT: package aic8800 kernel modules + vendor firmware blobs under
  `packages/`; wire module load + MAC-fix setup into second-stage/first-boot.
- DT overlays: ship overlay sources + compile/install path from phase 01.
- I2S audio: driver + DTS nodes + device nodes present at boot.
- Ethernet: carry Duo 256M ethernet DTS only if not yet in stable (check at
  build time; prefer upstream).

## Acceptance criteria

- All modules build against the current stable tree; firmware lands in the
  image at the paths the drivers expect.
- `shellcheck` clean; full image assembles; QEMU boots to login.
- `hw-probe.sh` extended with usb/net/sound sections.
- Marked untested-on-HW; no tested claims.

## Hardstop

Stop if any addition panics the QEMU boot or breaks the FIT/genimage assembly.

## Open questions

- [OPEN: aic8800 module source vs. prebuilt — prefer source if it builds
  against current stable, else versioned prebuilt with a pinned note.]
- [OPEN: whether stable at build time already has Duo ethernet — decide at
  build time, prefer upstream.]

## Out of scope

- Orphan/greenfield/TPU drivers. Upstream submissions. arm64 changes.
