#!/bin/bash
# apt-mirror.sh - run apt-get against the first reachable Ubuntu mirror.
#
# Sourced by scripts/setup.sh (inside the builder image) and by
# scripts/ci/install-qemu.sh (on the GitHub-hosted runner).
#
# Why this exists: the hosted runners intermittently fail to resolve
# azure/archive/security.ubuntu.com and ports.ubuntu.com ("Temporary failure
# resolving"). apt then sits in its DNS retry backoff for half an hour, which
# is indistinguishable from a hang. The fallback mirrors below live on other
# domains, so they normally resolve even when *.ubuntu.com does not.
#
# Library use:
#   apt_update             # apt-get update, trying each mirror pair in turn
#   apt_install PKG...     # apt-get install -y --no-install-recommends PKG...
#   apt_upgrade            # apt-get upgrade -y
#
# CLI use:
#   apt-mirror.sh update
#   apt-mirror.sh install PKG...
#   apt-mirror.sh upgrade
#
# Every apt call is wrapped in `timeout` so a stalled mirror fails the step
# in minutes instead of hanging the job.

set -uo pipefail

# Mirror pairs: "<main archive base> <ubuntu-ports base>". The first entry is
# the canonical Ubuntu host; the others are third-party mirrors that carry the
# same archive layout. Tried in order until apt-get update succeeds.
if [ -z "${APT_MIRROR_PAIRS:-}" ]; then
    APT_MIRROR_PAIRS="
http://archive.ubuntu.com/ubuntu/ http://ports.ubuntu.com/ubuntu-ports/
http://azure.archive.ubuntu.com/ubuntu/ http://ports.ubuntu.com/ubuntu-ports/
http://ftp.osuosl.org/pub/ubuntu/ http://mirrors.ustc.edu.cn/ubuntu-ports/
http://mirrors.edge.kernel.org/ubuntu/ http://mirrors.tuna.tsinghua.edu.cn/ubuntu-ports/
"
fi

# Seconds allowed for one apt-get update / install.
: "${APT_UPDATE_TIMEOUT:=240}"
: "${APT_INSTALL_TIMEOUT:=900}"

apt_as_root() {
    if [ "$(id -u)" = "0" ]; then
        "$@"
    else
        sudo "$@"
    fi
}

# Rewrite the Ubuntu archive sources to point at the given mirrors.
# Only the URL host is replaced - Suites, Components and Signed-By are left
# alone, so this works for any Ubuntu release and any deb822 or one-line
# source format. Non-Ubuntu repositories (e.g. packages.microsoft.com) are
# untouched because their URLs do not match the patterns below.
apt_use_mirror() {
    local main="$1" ports="$2" f
    for f in /etc/apt/sources.list.d/*.sources \
             /etc/apt/sources.list.d/*.list \
             /etc/apt/sources.list; do
        [ -f "$f" ] || continue
        # ubuntu-ports first: the main pattern would otherwise match the
        # "ubuntu.com/ubuntu" prefix of "ubuntu.com/ubuntu-ports".
        apt_as_root sed -i -E \
            "s#https?://[a-z0-9.-]*ubuntu\.com/ubuntu-ports/?#${ports}#g" "$f"
        apt_as_root sed -i -E \
            "s#https?://[a-z0-9.-]*ubuntu\.com/ubuntu/?#${main}#g" "$f"
    done
}

# apt-get update against the first mirror pair that answers.
apt_update() {
    local main ports
    while read -r main ports; do
        [ -z "$main" ] && continue
        echo "apt: trying mirror ${main}"
        apt_use_mirror "$main" "$ports"
        if apt_as_root timeout --kill-after=15s "$APT_UPDATE_TIMEOUT" \
                apt-get -o Acquire::Retries=2 \
                        -o Acquire::http::Timeout=20 \
                        -o Acquire::https::Timeout=20 \
                        update; then
            return 0
        fi
        echo "apt: mirror ${main} did not answer, trying the next one" >&2
    done <<EOF
$APT_MIRROR_PAIRS
EOF
    echo "apt: no Ubuntu mirror was reachable" >&2
    return 1
}

apt_install_only() {
    apt_as_root timeout --kill-after=15s "$APT_INSTALL_TIMEOUT" \
        apt-get -o Acquire::Retries=2 \
                -o Acquire::http::Timeout=20 \
                -o Acquire::https::Timeout=20 \
                install -y --no-install-recommends "$@"
}

apt_install() {
    apt_update || return 1
    apt_install_only "$@"
}

apt_upgrade() {
    apt_update || return 1
    apt_as_root timeout --kill-after=15s "$APT_INSTALL_TIMEOUT" \
        apt-get -o Acquire::Retries=2 \
                -o Acquire::http::Timeout=20 \
                -o Acquire::https::Timeout=20 \
                upgrade -y
}

# CLI mode.
if [ "${BASH_SOURCE[0]}" = "${0}" ]; then
    export DEBIAN_FRONTEND=noninteractive
    export NEEDRESTART_MODE=a
    case "${1:-}" in
        update)  apt_update ;;
        install) shift; apt_install "$@" ;;
        upgrade) apt_upgrade ;;
        *) echo "usage: $0 {update|install PKG...|upgrade}" >&2; exit 2 ;;
    esac
fi
