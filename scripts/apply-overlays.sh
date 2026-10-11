#!/bin/sh
# apply-overlays.sh - apply DT overlays listed in /etc/overlays.conf via configfs.
# Safe no-op if configfs overlay support or the conf file is absent.
set -u
CONF="${1:-/etc/overlays.conf}"
OVDIR=/boot/overlays
CFGBASE=/sys/kernel/config/device-tree/overlays
[ -f "$CONF" ] || exit 0
[ -d "$CFGBASE" ] || { echo "apply-overlays: configfs overlays unsupported, skipping"; exit 0; }
i=0
while IFS= read -r ov _rest; do
    case "$ov" in ''|\#*) continue;; esac
    [ -f "$OVDIR/$ov" ] || { echo "apply-overlays: missing $ov, skipping"; continue; }
    d="$CFGBASE/ov$i"; mkdir -p "$d" || continue
    if cat "$OVDIR/$ov" > "$d/dtbo" 2>/dev/null; then echo "apply-overlays: applied $ov"; else echo "apply-overlays: FAILED $ov"; rmdir "$d" 2>/dev/null; fi
    i=$((i+1))
done < "$CONF"
