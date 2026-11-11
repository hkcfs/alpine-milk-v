#!/bin/bash
# install-qemu.sh - install the QEMU system emulators the boot proof needs.
#
# Run on the CI runner before the image build, so the QEMU boot proof can
# actually run.
#
# The package name moved between Ubuntu releases, so we try the candidates in
# order and check for the BINARY we actually exec rather than trusting the
# package name:
#
#   ubuntu-24.04 (noble)     qemu-system-riscv64   (a real package)
#   ubuntu-26.04 (resolute)  qemu-system-riscv64   (VIRTUAL - provided by
#                            qemu-system-riscv / qemu-system-riscv-hwe;
#                            installing the virtual name fails with
#                            "E: Package 'qemu-system-riscv64' has no
#                            installation candidate")
#
# In every case the package ships the binary /usr/bin/qemu-system-riscv64,
# which is what capture-boot.sh execs.
#
# The mirrors: the hosted runners intermittently cannot resolve the Ubuntu
# archives; scripts/ci/apt-mirror.sh falls back to mirrors on other domains
# and bounds every apt call with a timeout.
set -euo pipefail

export DEBIAN_FRONTEND=noninteractive
export NEEDRESTART_MODE=a

HERE="$(cd "$(dirname "$0")" && pwd)"
# shellcheck source=scripts/ci/apt-mirror.sh
. "$HERE/apt-mirror.sh"

# Install the first candidate package that provides the binary $1.
install_provider() {
    local bin="$1"; shift
    local pkg
    for pkg in "$@"; do
        echo "install-qemu: trying $pkg for $bin"
        if apt_install_only "$pkg"; then
            if command -v "$bin" >/dev/null 2>&1; then
                echo "install-qemu: $bin provided by $pkg"
                return 0
            fi
        fi
        echo "install-qemu: $pkg did not provide $bin"
    done
    echo "::error::no installable package provides $bin" >&2
    return 1
}

# One update, then install from whichever mirror answered.
apt_update || { echo "::error::no Ubuntu mirror was reachable" >&2; exit 1; }

install_provider qemu-system-riscv64 \
    qemu-system-riscv64 \
    qemu-system-riscv \
    qemu-system-riscv-hwe

install_provider qemu-system-aarch64 \
    qemu-system-aarch64 \
    qemu-system-arm \
    qemu-system-arm-hwe

apt_install_only sshpass mtools util-linux

# Fail loudly here rather than halfway through the 40-minute image build.
for bin in qemu-system-riscv64 qemu-system-aarch64; do
    if ! command -v "$bin" >/dev/null; then
        echo "::error::$bin is not installed - the QEMU boot proof cannot run" >&2
        exit 1
    fi
done

echo "QEMU ready: $(command -v qemu-system-riscv64), $(command -v qemu-system-aarch64)"
