# kernel/overlays — device-tree overlay fragments

Drop `*.dts` overlay sources here. The build compiles each to
`/boot/overlays/*.dtbo` with `dtc -@`. At runtime,
`scripts/apply-overlays.sh` (runs at boot if present) applies the ones listed
in `/etc/overlays.conf` via configfs (`/sys/kernel/config/device-tree/overlays`),
which needs `CONFIG_OF_CONFIGFS=y` in the defconfig.

Vendor U-Boot does NOT apply overlays at boot — runtime configfs apply is the
supported path. Keep overlays additive (enable nodes, set pinmux); never
override the base board DTS incompatibly.
