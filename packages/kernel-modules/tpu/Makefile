# M= entry Makefile for the CV18xx TPU driver package (SG2002 = CV181X).
# Invoked by build.sh: make -C $(KDIR) ARCH=.. CROSS_COMPILE=.. M=<this dir> modules
CVIARCH_L := cv181x

ccflags-y += -D__CV181X__
# PDE_DATA() was removed in 5.17; the vendor source (5.10-era) still uses it.
ccflags-y += -DPDE_DATA=pde_data
# Stale #include "ion.h" in cvi_tpu_interface.c: no ION API is used
# (verified: zero ion_* symbols in the tree); stub below satisfies it.
ccflags-y += -I$(src)/src/tpu/common
ccflags-y += -I$(src)/src/tpu/hal/$(CVIARCH_L)
ccflags-y += -I$(src)/src/include/uapi
ccflags-y += -I$(src)/src/include/chip/$(CVIARCH_L)/uapi/linux

obj-m += $(CVIARCH_L)_tpu.o
$(CVIARCH_L)_tpu-y += src/tpu/common/cvi_tpu_interface.o
$(CVIARCH_L)_tpu-y += src/tpu/hal/$(CVIARCH_L)/tpu_platform.o
$(CVIARCH_L)_tpu-y += src/tpu/hal/$(CVIARCH_L)/tpu_pmu.o
