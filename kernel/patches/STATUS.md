# Kernel support status (audited 2026-10-20 against Linux 7.2.10)

Upstream mainline has absorbed most of what this project used to carry as
out-of-tree patches. The old 25-patch series is GONE - upstream 7.2.10 ships
the board DTBs, the drivers and the DT overlays itself.

## What upstream 7.2.10 already has (no patches needed)

| Item | Upstream location |
|------|-------------------|
| Duo 256M board DTB | `arch/riscv/boot/dts/sophgo/sg2002-milkv-duo-256m.dts` |
| Duo S board DTB (riscv + arm64) | `sg2000-milkv-duo-s.dts`, `arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts` |
| SG2000/SG2002 SoC DTS | `sg2000.dtsi`, `sg2002.dtsi`, `cv180x.dtsi`, `cv181x.dtsi` |
| Thermal driver + zones | `drivers/thermal/cv1800_thermal.c` |
| PWM driver | `drivers/pwm/pwm-cv1800.c` |
| MDIO mux | `drivers/net/mdio/mdio-mux-cv1800b.c` |
| eFuse (nvmem) | `drivers/nvmem/nvmem-sophgo-efuse.c` |
| C906L remoteproc + mailbox | `drivers/remoteproc/sophgo_cv1800b_c906l.c`, `drivers/mailbox/cv1800-mailbox.c` |
| I2S / TDM audio | `sound/soc/sophgo/cv1800b-tdm.c` |
| **CODA980 H.264 encoder** | `drivers/media/platform/chips-media/coda/` (ARCH_SOPHGO) |
| **JPEG unit** | same, enabled by the video-codec overlay |
| **GC2083 camera sensor** | `drivers/media/i2c/gc2083.c` |
| SG2000 DT overlays | `arch/riscv/boot/dts/sophgo/overlay/sg2000-*.dtso` (video-codec, usb-device, pwm, i2c, spi, uart, c906l) |

The upstream Duo 256M DTB enables: dmac, emmc, gmac0 (ethernet), efuse,
pwm1/2, i2c1/2/3, mdio, saradc, sdhci0 (SD), sdhci1 (WiFi SDIO), spi2,
uart0-3, usb (OTG), wdt, i2s0/3, int_dac, int_adc, remoteproc.

## What this project still carries (and why)

| Item | Where | Why |
|------|-------|-----|
| aic8800 WiFi/BT | `packages/kernel-modules/aic8800/` + `kernel/patches-in-tree/aic8800-Fix-building-on-7.{1,2}-kernel.patch` | Vendor driver; no mainline equivalent. Copied INTO the kernel tree at build time and built as in-tree modules (same shape as Armbian's `sophgo-sg200x-aic8800` extension). The 7.1/7.2 patches are Lukasz Sobala's, version-guarded so 7.0 and 7.2 both build. |
| TPU (NPU) | `packages/kernel-modules/tpu/` | Vendor driver ported to 7.2 (out-of-tree; no mainline equivalent). Documented in that dir's SOURCE. |
| coda980.bin firmware | `packages/firmware-manifest` | The H.264 encoder driver loads it from `/lib/firmware/coda980.bin`. |
| aic8800 firmware | `packages/firmware-manifest` | To `/lib/firmware/aic8800/SDIO/aic8800D80/` (the path compiled into the modules). |
| SG2000 overlays | `kernel/overlays/` | Copied from upstream `arch/riscv/boot/dts/sophgo/overlay/`, built to `/boot/overlays/*.dtbo` and applied at runtime via configfs. |

## Still missing upstream (gaps)

- **Camera receiver + capture** (`cv1800-csi2`, `cv1800-vi`): NOT in 7.2.10.
  Lives in `leafpmmp/sg200x-camera-dkms` (pinned commit
  `2c1ebd5470b44b10f5fbf28f05c438aafb7e5f06`), which is **not publicly
  accessible** (404 as of 2026-10-20). Armbian's `sophgo-sg200x-camera`
  extension copies it in; without the repo we cannot. Vendor SDK
  `osdrv/interdrv/vi` is the 5.10-era equivalent - a port candidate.
- **H.265 (WAVE420L)**: parked upstream too; the encoder never finishes a
  picture (Lukasz's notes in `duos-camera/h265/`).
