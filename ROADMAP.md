# ROADMAP.md — full peripheral support

Current state: Alpine images for Duo 256M boot on both arches (riscv
mainline; arm64 vendor tree). Peripheral coverage is whatever mainline
provides. No per-phase HW proof exists; QEMU `virt` cannot prove SG2002
hardware.

**Updated 2026-10-20:** the 25-patch out-of-tree series is obsolete — Linux
7.2.10 upstream now ships the Duo 256M board DTB, the thermal/PWM/MDIO/eFuse/
remoteproc/I2S drivers, the CODA980 H.264 + JPEG encoders, the GC2083 sensor
and the SG2000 DT overlays. The series is deleted; only the aic8800 WiFi
driver (in-tree, vendor) and the TPU (vendored, out-of-tree) remain ours.
See `kernel/patches/STATUS.md` for the full audit.

Forward map: linear — every phase touches the kernel tree / build, so phases
run in order, no parallel waves. All phases in-MVP. Phase 05 is best-effort
(attempt under the static gates; an honest blocked-record beats junk).

| # | Phase | Status | In MVP | Spec |
|---|-------|--------|--------|------|
| 01 | Audit + scaffold | pending | yes | specs/01-audit-scaffold.md |
| 02 | Community port (USB/WiFi/BT/overlays/I2S) | pending | yes | specs/02-community-port.md |
| 03 | Orphan drivers (eFuse, SPI NOR) | pending | yes | specs/03-orphan-drivers.md |
| 04 | In-flight completions (thermal/PWM/timer/wdog/sysctrl/MDIO/rproc) | pending | yes | specs/04-completions.md |
| 05 | Greenfield best-effort (8051/DRM/Media) | pending | yes | specs/05-greenfield.md |
| 06 | TPU stack | pending | yes | specs/06-tpu.md |
| 07 | Final image + evidence bundle | pending | yes | specs/07-final-image.md |

MVP boundary: phases 01–07. Done = final image assembled, QEMU regression
green, HW-EVIDENCE checklist ready — then one user flash session.
