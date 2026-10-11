# Custom packages

This directory holds out-of-tree packages that get baked into the image
alongside the stock Alpine + mainline kernel. It mirrors the way the kernel
lives in its own tree (`kernel/`) - keep board-specific extras here instead of
patching the rootfs by hand.

```
packages/
|-- userspace/      # prebuilt .apk packages installed into the rootfs
`-- kernel-modules/ # out-of-tree .ko kernel modules for the running kernel
```

## userspace/

Drop prebuilt `.apk` packages in `packages/userspace/`. During the rootfs
stage (`scripts/second-stage.sh`) each one is installed with:

```sh
apk add --allow-untrusted --no-cache packages/userspace/<pkg>.apk
```

To build an `.apk` from your own source, use `apk-tools`/`abuild` on Alpine
(e.g. `abuild -r`) and copy the resulting package here.

## kernel-modules/

Drop out-of-tree `.ko` modules in `packages/kernel-modules/`. They are copied
to `/lib/modules/<kernel-version>/extra/` and `depmod` is run so they load on
boot. Build them against the kernel source that `build.sh` checks out
(`kernel/linux`), using the same `ARCH`/`CROSS_COMPILE` as the main build.

## Notes

- Both subdirs are optional - an empty dir is a no-op.
- The mechanism is wired into the build (`build.sh` copies `packages/` into the
  rootfs; `scripts/second-stage.sh` installs from it). No extra step required.

## Adding a driver (phases 02-06 checklist)

1. Source under `packages/kernel-modules/<driver>/` with origin URL + version
   pinned in a `SOURCE` file (no mystery drops).
2. Firmware blobs (if any) under `packages/firmware/<driver>/` with the
   license noted in the `SOURCE` file; installed to `/lib/firmware/...`.
3. DTS hookup: node in the board DTS patch, or a fragment in
   `kernel/overlays/` (see that dir's README).
4. Kconfig: default `m` (module, off-by-default safe) unless probe order
   demands built-in — justify in the commit message.
5. Evidence: extend `scripts/hw-probe.sh` + `HW-EVIDENCE.md` for the new
   peripheral in the same commit.
