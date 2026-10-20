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
- [ ] Sound: `/proc/asound/cards` non-empty.
- [ ] DT overlay in `/boot/overlays` applies (see overlays README).
- [ ] WiFi/BT: **N/A** — the Duo 256M has no radio on board.

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

## Video / camera (upstream mainline 7.2.x)

Apply the overlay first: `echo "video-codec" >> /etc/overlays.conf` (or
`sg2000-video-codec`), reboot, then:

- [ ] `ls /sys/class/video4linux/` shows the coda encoder + JPEG nodes.
- [ ] H.264: encoder produces a stream (vendor `cvi_vc_drv` or any
      v4l2-mem2mem client). Reference: 29.6 fps at 1080p on the Duo S.
- [ ] JPEG unit: `/dev/video*` m2m device present, a still encodes.
- [ ] `coda980.bin` present in /lib/firmware (the driver loads it; without
      it the encoder probes but emits no bitstream).
- [ ] GC2083 sensor (I2C): `i2cdetect` sees the sensor address; the
      `camera-j1-gc2083` overlay enables it on Duo S. The 256M has no
      CSI connector - sensor check is N/A there.
- [ ] Camera RECEIVER/CAPTURE (`cv1800-csi2`, `cv1800-vi`) is NOT upstream
      and NOT shipped: expect no video node on the 256M. (Blocked: the
      upstream source repo is not publicly accessible.)

## Phase 06 — TPU

- [ ] TPU device node and/or dmesg `tpu|npu` probe lines; inference proof if
  userspace allows.
