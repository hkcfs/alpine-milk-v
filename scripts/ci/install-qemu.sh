#!/bin/bash
# install-qemu.sh - install the QEMU system emulators the boot proof needs.
#
# Run on the CI runner before the image build, so the QEMU boot proof can
# actually run.
#
# Two things this has to get right:
#
#  1. The package name. `qemu-system-riscv64` is a VIRTUAL package on
#     Ubuntu >= 25.10 (26.04 "resolute"), provided by the real
#     `qemu-system-riscv` / `qemu-system-riscv-hwe` packages. Installing the
#     virtual name fails with:
#       E: Package 'qemu-system-riscv64' has no installation candidate
#     The real package still ships the BINARY we exec
#     (/usr/bin/qemu-system-riscv64), so install the package names and fall
#     back to the -hwe variants.
#
#  2. The mirrors. The hosted runners intermittently cannot resolve the
#     Ubuntu archives; scripts/ci/apt-mirror.sh falls back to mirrors on
#     other domains and bounds every apt call with a timeout.
set -euo pipefail

export DEBIAN_FRONTEND=noninteractive
export NEEDRESTART_MODE=a

HERE="$(cd "$(dirname "$0")" && pwd)"
# shellcheck source=scripts/ci/apt-mirror.sh
. "$HERE/apt-mirror.sh"

install_pkg() {
    local pkg="$1"
    apt_install_only "$pkg" && return 0
    apt_install_only "${pkg}-hwe" && return 0
    echo "::warning::could not install $pkg" >&2
    return 1
}

# One update, then install from whichever mirror answered.
apt_update || { echo "::error::no Ubuntu mirror was reachable" >&2; exit 1; }

for pkg in qemu-system-riscv qemu-system-arm; do
    install_pkg "$pkg" || true
done

apt_install_only sshpass mtools util-linux

# Fail loudly here rather than halfway through the 40-minute image build.
for bin in qemu-system-riscv64 qemu-system-aarch64; do
    if ! command -v "$bin" >/dev/null; then
        echo "::error::$bin is not installed - the QEMU boot proof cannot run" >&2
        exit 1
    fi
done

echo "QEMU ready: $(command -v qemu-system-riscv64), $(command -v qemu-system-aarch64)"
