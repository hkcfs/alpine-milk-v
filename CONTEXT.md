# CONTEXT.md — alpine-milk-v glossary

Bootable Alpine Linux SD images for the Milk-V Duo 256M (Sophgo SG2002, 256 MB DRAM).

- **SG2002** — Sophgo SoC (RISC-V C906 + ARM Cortex-A53). Vendor DTB/U-Boot describe 512 MB (shared family DTS); kernel must be capped with `mem=256M cma=32M`.
- **duo256m** — only supported board (`build.sh … duo256m`).
- **riscv / arm64** — the two arch targets. BOTH now build the same vanilla mainline kernel (7.2.x); they differ only in ARCH, defconfig and board DTB. The vendor `scpcom/linux` 5.10 tree is no longer used.
- **fip.bin** — vendor U-Boot + firmware blob, board-specific. Must be the Duo **256M** fip (`&Milk-V Duo256M`), not DuoS.
- **boot.sd** — FIT image (`mkimage -f multi.its`) the vendor U-Boot loads via `fatload … boot.sd` → `bootm …#config-…`. NOT a raw Image. FIT config names are exact per arch.
- **multi.its.in** — FIT template; `build.sh` substitutes Image/DTB paths, load addrs (kernel `0x80200000`, fdt `0x82200000`), bootargs, config name.
- **BOARD_DTB** — per-arch board device tree. riscv: `sophgo/sg2002-milkv-duo-256m.dtb` (from patch 0036); arm64: `sophgo/sg2002-milkv-duo-256m.dtb` (our own SG2002 arm64 port, patch 0058). Both are named identically, by arch.
- **upstream-absorbed** — peripherals that mainline 7.2.x now ships for SG2000/SG2002 and that this project used to carry as out-of-tree patches: board DTBs, thermal, PWM, MDIO mux, eFuse, C906L remoteproc + mailbox, I2S, CODA980 H.264 encoder, JPEG unit, GC2083 sensor, SG2000 DT overlays. See kernel/patches/STATUS.md.
- **genimage / genimage.cfg** — assembles the SD image: boot(1, vfat: fip+boot.sd+Image+dtb) / rootfs(2, ext4) / swap(3). Real hardware root = `mmcblk0p2`.
- **second-stage.sh** — first-boot chroot setup + resize of `mmcblk0p2`.
- **capture-boot.sh** — QEMU boot proof for CI releases. QEMU root = `vda2` (rootfs); `vda3` is swap.
- **builder image** — Docker image from `docker/Dockerfile` baking `build.sh`, `kernel/`, `scripts/`, `multi.its.in`, `genimage.cfg`, `milkv-bootloader/`, `packages/`. CI builds it in-job with `--no-cache` (never pull a prebuilt one — stale `COPY kernel/` layers break the build at the end).
- **outputs/** — gitignored build products (`outputs/<arch>/`, `outputs/kernel-<arch>/`).
- **QEMU boot proof** — release images are booted under `qemu-system-riscv64/-aarch64 -machine virt` and the console + SSH diagnostics ship in the release notes.
- **TPU** — SG2002 neural accelerator. In-image stack = kernel driver + firmware blobs + userspace hooks; boot-safe (deferred probe, never hangs boot). _Avoid:_ "NPU" in new docs (vendor calls it TPU).
- **CODA980** — the SG2000's Chips&Media H.264 encoder IP; mainline `coda` driver (ARCH_SOPHGO) drives it; firmware `coda980.bin` in /lib/firmware. The JPEG unit is the same driver's other engine. Enabled by the `sg2000-video-codec` DT overlay.
- **video-codec overlay** — upstream `sg2000-video-codec.dtso`: enables the H.264 encoder + JPEG unit nodes (not enabled by default; we ship it in /boot/overlays).
- **DT overlay** — pluggable device-tree fragments (queenkjuul pattern) for enabling peripherals without rebuilding the base DTB.
- **hw-probe / HW-EVIDENCE** — `scripts/hw-probe.sh` collects on-board evidence (dmesg + `/sys` dumps per peripheral); `HW-EVIDENCE.md` is the checklist for the single flash-and-test session.
- **untested-done** — a phase is complete when static gates + QEMU regression pass; "tested" is claimed only after the hardware session. Never tag or describe untested work as tested.
