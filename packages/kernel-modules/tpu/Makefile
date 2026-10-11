# M= entry Makefile for the CV18xx TPU driver package (SG2002 = CV181X).
# Invoked by build.sh: make -C $(KDIR) ARCH=.. CROSS_COMPILE=.. M=<this dir> modules
CVIARCH_L := cv181x

# $(src) is "." here — resolve our own dir absolutely for -I/-include paths.
PKGDIR := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))

ccflags-y += -D__CV181X__
# PDE_DATA() was removed in 5.17; the vendor source (5.10-era) still uses it.
ccflags-y += -DPDE_DATA=pde_data
# tpu_compat.h supplies <linux/timer.h> (from_timer/del_timer_sync) without
# editing vendor files; ion.h vendors the ION layout (see that file).
ccflags-y += -include $(PKGDIR)/src/tpu/common/tpu_compat.h
ccflags-y += -I$(PKGDIR)/src/tpu/common
ccflags-y += -I$(PKGDIR)/src/tpu/hal/$(CVIARCH_L)
ccflags-y += -I$(PKGDIR)/src/include/uapi
ccflags-y += -I$(PKGDIR)/src/include/chip/$(CVIARCH_L)/uapi/linux
# Stub for ARM-only Streamline annotation header (no-op on riscv).
ccflags-y += -I$(PKGDIR)/src/compat-include

obj-m += $(CVIARCH_L)_tpu.o
$(CVIARCH_L)_tpu-y += src/tpu/common/cvi_tpu_interface.o
$(CVIARCH_L)_tpu-y += src/tpu/hal/$(CVIARCH_L)/tpu_platform.o
$(CVIARCH_L)_tpu-y += src/tpu/hal/$(CVIARCH_L)/tpu_pmu.o
