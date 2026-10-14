#!/bin/sh
# hw-probe.sh - on-board evidence collector for the flash-and-test session.
# Run as root on the Duo 256M, saves a bundle to /tmp/hw-evidence-<date>.txt.
# Each section maps to HW-EVIDENCE.md. QEMU sample output is NOT hardware proof.
set -u
OUT="${1:-/tmp/hw-evidence-$(date +%Y%m%d-%H%M%S).txt}"
{
echo "===== hw-probe $(date -u) ====="
echo "--- system ---"; uname -a; cat /proc/device-tree/model 2>/dev/null; echo
echo "--- cmdline ---"; cat /proc/cmdline; echo
echo "--- dmesg errors ---"; dmesg | grep -iE "error|fail|warn|defer|panic" | head -40; echo
echo "--- mmc ---"; ls /sys/bus/mmc/devices/ 2>/dev/null; lsblk; echo
echo "--- net ---"; ip -br link; echo
echo "--- usb ---"; lsusb 2>/dev/null || echo "no lsusb"; ls /sys/bus/usb/devices/ 2>/dev/null; echo
echo "--- thermal ---"; ls /sys/class/thermal/ 2>/dev/null; cat /sys/class/thermal/thermal_zone*/temp 2>/dev/null; echo
echo "--- pwm ---"; ls /sys/class/pwm/ 2>/dev/null || echo "no pwm"; echo
echo "--- rtc ---"; ls /dev/rtc* 2>/dev/null; hwclock -r 2>&1 | head -2; echo
echo "--- i2c ---"; ls /dev/i2c* 2>/dev/null || echo "no i2c-dev"; echo
echo "--- spi ---"; ls /dev/spidev* 2>/dev/null || echo "no spidev"; echo
echo "--- sound ---"; cat /proc/asound/cards 2>/dev/null || echo "no soundcards"; echo
echo "--- nvmem/efuse ---"; ls /sys/bus/nvmem/devices/ 2>/dev/null || echo "no nvmem"; echo
echo "--- remoteproc ---"; ls /sys/class/remoteproc/ 2>/dev/null || echo "no remoteproc"; echo
echo "--- mailbox ---"; dmesg | grep -i "mbox\|mailbox" | head -5; echo
echo "--- watchdog ---"; ls /dev/watchdog* 2>/dev/null || echo "no watchdog"; echo
echo "--- tpu ---"; ls /dev/*tpu* /dev/*npu* 2>/dev/null; lsmod | grep -i tpu; dmesg | grep -iE "tpu|npu" | head -10; echo
echo "--- wifi/bt ---"; ip -br link | grep -iE "wlan|bt" || echo "no wlan/bt iface"; lsmod | grep -iE "aic8800|cfg80211" ; dmesg | grep -i "aic8800" | head -5; echo
echo "--- selftest ---"; [ -f /var/log/hw-selftest.log ] && cat /var/log/hw-selftest.log || echo "no selftest log"; echo
echo "--- spi-nor ---"; dmesg | grep -iE "spi-nor|m25p|w25q|gd25" | head -5; echo
echo "--- modules ---"; lsmod | head -30
echo "===== end ====="
} > "$OUT" 2>&1
echo "wrote $OUT"
