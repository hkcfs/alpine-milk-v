# Custom packages

Out-of-tree additions baked into the Alpine image by `build.sh` / `second-stage.sh`.

Layout:
- `kernel-modules/` — out-of-tree Linux kernel modules (e.g. vendor drivers,
  backports). Each subdir has a `build.sh` that compiles against the just-built
  kernel tree and installs `.ko` files into the rootfs.
- `userspace/` — userspace tools / services packaged for the image (e.g.
  board utilities, daemons). Each subdir has a `build.sh` that installs
  binaries / scripts into the rootfs.

Every `build.sh` is invoked from `scripts/second-stage.sh` with the rootfs
path as `$1`, so it can copy its artefacts into `$ROOTFS`.
