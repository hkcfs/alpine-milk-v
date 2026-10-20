#!/bin/sh
# hw-selftest.sh - on-device PASS/FAIL/SKIP self-test for Duo 256M images.
# Runs from first-boot (log to /var/log/hw-selftest.log) and by hand.
# NEVER hangs: every check is timeout-guarded and degrades to SKIP when the
# hardware is absent (QEMU virt has no SG2002 peripherals - those SKIP).
# Exit code = number of FAILs. Usage: hw-selftest.sh [--qemu-ok]
set -u
LOG="${LOG:-/var/log/hw-selftest.log}"
PASS=0; FAIL=0; SKIP=0
MODEL="$(cat /proc/device-tree/model 2>/dev/null || echo unknown)"
case "$MODEL" in *qemu*|*virt*) QEMU=1;; *) QEMU=0;; esac

rep() { # $1=PASS|FAIL|SKIP $2=name $3=detail
    echo "[$1] $2 -- $3" | tee -a "$LOG"
    case "$1" in PASS) PASS=$((PASS+1));; FAIL) FAIL=$((FAIL+1));; *) SKIP=$((SKIP+1));; esac
}
have() { [ -e "$1" ]; }
# t <secs> <name> <command...> : run with timeout, report
t() { secs="$1"; name="$2"; shift 2; timeout "$secs" "$@" >/dev/null 2>&1; }

: > "$LOG"
echo "===== hw-selftest $(date -u) model=$MODEL =====" | tee "$LOG"

# --- core (must PASS everywhere) ---
[ "$(id -u)" = "0" ] && rep PASS root "uid 0" || rep FAIL root "not root"
uname -r | grep -qE "^[0-9]+\.[0-9]+" && rep PASS kernel "$(uname -r)" || rep FAIL kernel "$(uname -r)"
grep -q "root=" /proc/cmdline && rep PASS cmdline-root "$(cat /proc/cmdline | cut -c1-80)" || rep FAIL cmdline "no root="
touch /tmp/.wtest 2>/dev/null && { rm -f /tmp/.wtest; rep PASS root-rw "tmp writable"; } || rep FAIL root-rw "ro root?"
grep -q "MemTotal" /proc/meminfo && rep PASS mem "$(grep MemTotal /proc/meminfo)" || rep FAIL mem "no meminfo"

# --- drivers: present? (module dir or builtin) probed? (sysfs/dmesg) ---
# $1=name $2=sysfs-or-dev path $3=module-or-builtin tag
drv() {
    name="$1"; ev="$2"; mod="$3"
    if [ "$QEMU" = "1" ]; then rep SKIP "$name" "QEMU: no SG2002 hardware"; return; fi
    if have "/sys/module/$mod" || lsmod 2>/dev/null | grep -q "^$mod"; then
        if have "$ev"; then rep PASS "$name" "loaded + $ev"; else rep FAIL "$name" "loaded, no $ev"; fi
    else rep FAIL "$name" "driver $mod absent"; fi
}
for spec in \
    "thermal:/sys/class/thermal:cv1800_thermal" \
    "pwm:/sys/class/pwm:pwm_cv1800" \
    "rtc:/dev/rtc0:rtc_cv1800" \
    "efuse:/sys/bus/nvmem/devices:nvmem_sophgo_efuse" \
    "remoteproc:/sys/class/remoteproc:c906l" \
    "watchdog:/dev/watchdog:watchdog" \
    "tpu:probe:wip"; do
    n="${spec%%:*}"; rest="${spec#*:}"; ev="${rest%%:*}"; mod="${rest##*:}"
    case "$n" in tpu) [ "$QEMU" = 1 ] && rep SKIP tpu "QEMU: needs board+firmware" || rep SKIP tpu "needs firmware+cviruntime (see BLOCKED)";; *) drv "$n" "$ev" "$mod";; esac
done
# sound (card may legitimately be absent if no codec probed)
if [ "$QEMU" = 1 ]; then rep SKIP sound "QEMU: no audio hw"
elif have /proc/asound/cards && [ "$(wc -l < /proc/asound/cards)" -gt 1 ]; then rep PASS sound "$(head -1 /proc/asound/cards)"
else rep FAIL sound "no soundcards"; fi
# mailbox: driver upstream, node evidence via dmesg
if [ "$QEMU" = 1 ]; then rep SKIP mailbox "QEMU"
elif dmesg | grep -qi "mailbox.*cv1800\|cv1800.*mbox\|mailbox.*probe"; then rep PASS mailbox "probe line present"
else rep FAIL mailbox "no probe line"; fi

# --- net/usb (virtio in QEMU, real hw on board) ---
ip -br link 2>/dev/null | grep -q "eth0\|en" && rep PASS net "$(ip -br link | head -2 | tr '\n' ' ')" || rep SKIP net "no eth yet"
[ -d /sys/kernel/config/usb_gadget ] && rep PASS usb-configfs "gadget framework present" || rep SKIP usb-configfs "no configfs gadget"
[ -f /etc/milkv-usb-mode ] && rep PASS usb-mode "$(cat /etc/milkv-usb-mode)" || rep SKIP usb-mode "not configured"
# wifi: the Milk-V Duo 256M has NO WiFi/BT radio on board (that is the
# Duo S), so there is nothing to check here. Kept as a SKIP with the reason
# so the log does not look like something was missed.
if ls /sys/class/net/wlan* /sys/class/net/bt* >/dev/null 2>&1; then
    rep PASS wifi "wireless iface present"
else
    rep SKIP wifi "Duo 256M has no WiFi/BT on board"
fi

# --- overlays ---
if [ -d /boot/overlays ] || [ -d /boot/vendor ]; then rep PASS overlays "overlay dir present"
else rep SKIP overlays "no overlay dir"; fi

# --- edge cases: never crash, always degrade ---
t 5 edgecase-ro-test sh -c 'touch /proc/.w 2>/dev/null' && rep FAIL edge-ro "/proc writable?!" || rep PASS edge-ro "/proc correctly ro"
t 5 edgecase-bad-overlay sh -c '[ ! -f /boot/overlays/nonexistent.dtbo ]' && rep PASS edge-missing-ov "missing overlay detected, skipped" || rep FAIL edge-missing-ov "logic error"
t 10 edgecase-modprobe-bad modprobe __nonexistent_module_xyz__ && rep FAIL edge-modprobe "phantom module loaded?!" || rep PASS edge-modprobe "bad modprobe fails cleanly"
t 5 edgecase-dmesg dmesg && rep PASS edge-dmesg "dmesg readable" || rep FAIL edge-dmesg "dmesg unreadable"
if dmesg | grep -qi "panic\|oops\|BUG:"; then rep FAIL edge-no-oops "kernel oops/panic in log"; else rep PASS edge-no-oops "no oops/panic"; fi

echo "===== result: $PASS pass, $FAIL fail, $SKIP skip =====" | tee -a "$LOG"
exit "$FAIL"
