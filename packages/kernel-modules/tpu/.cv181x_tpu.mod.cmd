savedcmd_cv181x_tpu.mod := printf '%s\n'   src/tpu/common/cvi_tpu_interface.o src/tpu/hal/cv181x/tpu_platform.o src/tpu/hal/cv181x/tpu_pmu.o | awk '!x[$$0]++ { print("./"$$0) }' > cv181x_tpu.mod
