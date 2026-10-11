# HW-EVIDENCE.md — single flash-and-test session checklist

Flash the phase-07 image, boot with serial on `ttyS0 115200n8`, log in
(`root`/`milkv`), run `sh /usr/local/bin/hw-probe.sh`, and paste the bundle
back. Each item passes when its evidence is present; anything else is a fail
with the dmesg lines attached.

## Boot + base

- [ ] Serial boot log from `soph#` U-Boot through login prompt (FIT config
  name, `mem=256M` in cmdline, root on `mmcblk0p2`).
- [ ] `ip link` shows eth0; SSH reachable.

## Phase 02 — community

- [ ] USB host mode: `lsusb` lists a plugged device.
- [ ] USB gadget (NCM): interface appears on the host PC.
- [ ] WiFi: `wlan0` appears, scans see networks.
- [ ] Bluetooth: `bluetoothctl` lists a controller.
- [ ] Sound: `/proc/asound/cards` non-empty.
- [ ] DT overlay in `/boot/overlays` applies (see overlays README).

## Phase 03 — orphans

- [ ] eFuse: `/sys/bus/nvmem/devices/` non-empty, read works.
- [ ] SPI NOR: probe line in dmesg; no boot hang on boards without the flash.

## Phase 04 — completions

- [ ] Thermal: `/sys/class/thermal/` zones with sane `temp` values.
- [ ] PWM: `/sys/class/pwm/` present.
- [ ] Watchdog: `/dev/watchdog*` present.
- [ ] Remoteproc: `/sys/class/remoteproc/` present; firmware load attempted.
- [ ] Mailbox: `mbox` probe line in dmesg.
- [ ] RTC: `hwclock -r` returns a date.

## Phase 05 — greenfield (best-effort)

- [ ] Whatever shipped per its spec notes; blocked items stay unchecked.

## Phase 06 — TPU

- [ ] TPU device node and/or dmesg `tpu|npu` probe lines; inference proof if
  userspace allows.
