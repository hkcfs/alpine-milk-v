# PRODUCT.md — full peripheral support for the Duo 256M

## Problem

The Milk-V Duo 256M (Sophgo SG2002) boots our Alpine images, but much of the
SoC sits idle: upstream mainline still lacks drivers for several CV18xx
peripherals (orphaned eFuse and SPI-NOR submissions, unfinished thermal/PWM/
timer/watchdog/remoteproc work, and greenfield 8051/DRM/Media/TPU), and our
images don't yet carry the working vendor/community pieces (USB modes,
WiFi/BT, DT overlays, I2S audio) that reference projects have proven.

## Who it's for

Duo 256M owners who want one Alpine image where every peripheral on the
board works — and one flash session to prove it.

## Direction

Port and package every missing piece into our riscv images as out-of-tree
drivers/modules/firmware, gated by static analysis (shellcheck, yamllint,
`dtc`, `git apply`-clean, QEMU boot-to-login regression). No upstream list
work in this effort. Both architectures now run **mainline** (arm64 via our
own SG2002 device tree); the vendor scpcom kernel tree is gone. Every phase
lands **complete-but-untested**; a single final image plus an evidence
checklist goes to one real-hardware flash-and-test session. No phase claims
"tested" or takes a release tag until that session signs it off.
