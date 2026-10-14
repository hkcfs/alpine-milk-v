savedcmd_src/tpu/hal/cv181x/tpu_platform.o := riscv64-linux-gcc -Wp,-MMD,src/tpu/hal/cv181x/.tpu_platform.o.d -nostdinc -I/tmp/opencode/kernel-audit/src/arch/riscv/include -I/tmp/opencode/kernel-audit/src/arch/riscv/include/generated -I/tmp/opencode/kernel-audit/src/include -I/tmp/opencode/kernel-audit/src/include -I/tmp/opencode/kernel-audit/src/arch/riscv/include/uapi -I/tmp/opencode/kernel-audit/src/arch/riscv/include/generated/uapi -I/tmp/opencode/kernel-audit/src/include/uapi -I/tmp/opencode/kernel-audit/src/include/generated/uapi -include /tmp/opencode/kernel-audit/src/include/linux/compiler-version.h -include /tmp/opencode/kernel-audit/src/include/linux/kconfig.h -include /tmp/opencode/kernel-audit/src/include/linux/compiler_types.h -D__KERNEL__ -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -std=gnu11 -fms-extensions -mabi=lp64 -Wa,-misa-spec=2.2 -march=rv64imac -mno-save-restore -mcmodel=medany -fno-asynchronous-unwind-tables -fno-unwind-tables -mno-riscv-attribute -Wa,-mno-arch-attr -mstrict-align -fno-delete-null-pointer-checks -Os -fno-allow-store-data-races -fstack-protector-strong -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-stack-clash-protection -fno-strict-overflow -fno-stack-check -fconserve-stack -fno-builtin-wcslen -Wall -Wextra -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wmissing-declarations -Wmissing-prototypes -Wframe-larger-than=2048 -Wno-main -Wno-type-limits -Wvla-larger-than=1 -Wno-pointer-sign -Wcast-function-type -Wno-array-bounds -Wno-stringop-overflow -Wno-alloc-size-larger-than -Wimplicit-fallthrough=5 -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -Wenum-conversion -Wunused -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-packed-not-aligned -Wno-format-overflow -Wno-format-truncation -Wno-stringop-truncation -Wno-override-init -Wno-missing-field-initializers -Wno-shift-negative-value -Wno-maybe-uninitialized -Wno-sign-compare -Wno-unused-parameter -DGCC_PLUGINS -D__CV181X__ -DPDE_DATA=pde_data -include /home/debian/apline-milk-v/packages/kernel-modules/tpu/src/tpu/common/tpu_compat.h -I/home/debian/apline-milk-v/packages/kernel-modules/tpu/src/tpu/common -I/home/debian/apline-milk-v/packages/kernel-modules/tpu/src/tpu/hal/cv181x -I/home/debian/apline-milk-v/packages/kernel-modules/tpu/src/include/uapi -I/home/debian/apline-milk-v/packages/kernel-modules/tpu/src/include/chip/cv181x/uapi/linux -I/home/debian/apline-milk-v/packages/kernel-modules/tpu/src/compat-include  -DMODULE -mno-relax  -DKBUILD_BASENAME='"tpu_platform"' -DKBUILD_MODNAME='"cv181x_tpu"' -D__KBUILD_MODNAME=cv181x_tpu -c -o src/tpu/hal/cv181x/tpu_platform.o src/tpu/hal/cv181x/tpu_platform.c  

source_src/tpu/hal/cv181x/tpu_platform.o := src/tpu/hal/cv181x/tpu_platform.c

deps_src/tpu/hal/cv181x/tpu_platform.o := \
  /tmp/opencode/kernel-audit/src/include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  /tmp/opencode/kernel-audit/src/include/generated/gcc-plugins.h \
  /tmp/opencode/kernel-audit/src/include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \
  /tmp/opencode/kernel-audit/src/include/linux/compiler_types.h \
    $(wildcard include/config/DEBUG_INFO_BTF) \
    $(wildcard include/config/PAHOLE_HAS_BTF_TAG) \
    $(wildcard include/config/FUNCTION_ALIGNMENT) \
    $(wildcard include/config/CC_HAS_SANE_FUNCTION_ALIGNMENT) \
    $(wildcard include/config/X86_64) \
    $(wildcard include/config/ARM64) \
    $(wildcard include/config/LD_DEAD_CODE_DATA_ELIMINATION) \
    $(wildcard include/config/LTO_CLANG) \
    $(wildcard include/config/HAVE_ARCH_COMPILER_H) \
    $(wildcard include/config/KCSAN) \
    $(wildcard include/config/CC_HAS_ASSUME) \
    $(wildcard include/config/CC_HAS_COUNTED_BY) \
    $(wildcard include/config/FORTIFY_SOURCE) \
    $(wildcard include/config/UBSAN_BOUNDS) \
    $(wildcard include/config/CC_HAS_COUNTED_BY_PTR) \
    $(wildcard include/config/CC_HAS_MULTIDIMENSIONAL_NONSTRING) \
    $(wildcard include/config/CFI) \
    $(wildcard include/config/ARCH_USES_CFI_GENERIC_LLVM_PASS) \
    $(wildcard include/config/CC_HAS_BROKEN_COUNTED_BY_REF) \
    $(wildcard include/config/CC_HAS_ASM_INLINE) \
  /tmp/opencode/kernel-audit/src/include/linux/compiler-context-analysis.h \
  /tmp/opencode/kernel-audit/src/include/linux/compiler_attributes.h \
  /tmp/opencode/kernel-audit/src/include/linux/compiler-gcc.h \
    $(wildcard include/config/ARCH_USE_BUILTIN_BSWAP) \
    $(wildcard include/config/SHADOW_CALL_STACK) \
    $(wildcard include/config/KCOV) \
    $(wildcard include/config/CC_HAS_TYPEOF_UNQUAL) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/asm/percpu_types.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/percpu_types.h \
  /home/debian/apline-milk-v/packages/kernel-modules/tpu/src/tpu/common/tpu_compat.h \
  /tmp/opencode/kernel-audit/src/include/linux/timer.h \
    $(wildcard include/config/LOCKDEP) \
    $(wildcard include/config/DEBUG_OBJECTS_TIMERS) \
    $(wildcard include/config/HOTPLUG_CPU) \
    $(wildcard include/config/SMP) \
    $(wildcard include/config/NO_HZ_COMMON) \
  /tmp/opencode/kernel-audit/src/include/linux/list.h \
    $(wildcard include/config/LIST_HARDENED) \
    $(wildcard include/config/DEBUG_LIST) \
  /tmp/opencode/kernel-audit/src/include/linux/container_of.h \
  /tmp/opencode/kernel-audit/src/include/linux/build_bug.h \
  /tmp/opencode/kernel-audit/src/include/linux/compiler.h \
    $(wildcard include/config/TRACE_BRANCH_PROFILING) \
    $(wildcard include/config/PROFILE_ALL_BRANCHES) \
    $(wildcard include/config/OBJTOOL) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/asm/rwonce.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/rwonce.h \
  /tmp/opencode/kernel-audit/src/include/linux/kasan-checks.h \
    $(wildcard include/config/KASAN_GENERIC) \
    $(wildcard include/config/KASAN_SW_TAGS) \
  /tmp/opencode/kernel-audit/src/include/linux/types.h \
    $(wildcard include/config/HAVE_UID16) \
    $(wildcard include/config/UID16) \
    $(wildcard include/config/ARCH_DMA_ADDR_T_64BIT) \
    $(wildcard include/config/PHYS_ADDR_T_64BIT) \
    $(wildcard include/config/64BIT) \
    $(wildcard include/config/ARCH_32BIT_USTAT_F_TINODE) \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/types.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/uapi/asm/types.h \
  /tmp/opencode/kernel-audit/src/include/uapi/asm-generic/types.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/int-ll64.h \
  /tmp/opencode/kernel-audit/src/include/uapi/asm-generic/int-ll64.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/uapi/asm/bitsperlong.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/bitsperlong.h \
  /tmp/opencode/kernel-audit/src/include/uapi/asm-generic/bitsperlong.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/posix_types.h \
  /tmp/opencode/kernel-audit/src/include/linux/stddef.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/stddef.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/uapi/asm/posix_types.h \
  /tmp/opencode/kernel-audit/src/include/uapi/asm-generic/posix_types.h \
  /tmp/opencode/kernel-audit/src/include/linux/kcsan-checks.h \
    $(wildcard include/config/KCSAN_WEAK_MEMORY) \
    $(wildcard include/config/KCSAN_IGNORE_ATOMICS) \
  /tmp/opencode/kernel-audit/src/include/linux/poison.h \
    $(wildcard include/config/ILLEGAL_POINTER_VALUE) \
  /tmp/opencode/kernel-audit/src/include/linux/const.h \
  /tmp/opencode/kernel-audit/src/include/vdso/const.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/const.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/barrier.h \
    $(wildcard include/config/RISCV_ISA_ZAWRS) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/cmpxchg.h \
    $(wildcard include/config/RISCV_ISA_ZABHA) \
    $(wildcard include/config/RISCV_ISA_ZACAS) \
    $(wildcard include/config/TOOLCHAIN_HAS_ZACAS) \
  /tmp/opencode/kernel-audit/src/include/linux/bug.h \
    $(wildcard include/config/GENERIC_BUG) \
    $(wildcard include/config/PRINTK) \
    $(wildcard include/config/BUG_ON_DATA_CORRUPTION) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/bug.h \
    $(wildcard include/config/GENERIC_BUG_RELATIVE_POINTERS) \
    $(wildcard include/config/DEBUG_BUGVERBOSE) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/asm.h \
    $(wildcard include/config/AS_HAS_INSN) \
    $(wildcard include/config/KPROBES) \
  /tmp/opencode/kernel-audit/src/include/asm-generic/bug.h \
    $(wildcard include/config/DEBUG_BUGVERBOSE_DETAILED) \
    $(wildcard include/config/BUG) \
  /tmp/opencode/kernel-audit/src/include/linux/instrumentation.h \
    $(wildcard include/config/NOINSTR_VALIDATION) \
  /tmp/opencode/kernel-audit/src/include/linux/once_lite.h \
  /tmp/opencode/kernel-audit/src/include/linux/panic.h \
    $(wildcard include/config/PANIC_TIMEOUT) \
  /tmp/opencode/kernel-audit/src/include/linux/stdarg.h \
  /tmp/opencode/kernel-audit/src/include/linux/printk.h \
    $(wildcard include/config/MESSAGE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_QUIET) \
    $(wildcard include/config/EARLY_PRINTK) \
    $(wildcard include/config/PRINTK_INDEX) \
    $(wildcard include/config/DYNAMIC_DEBUG) \
    $(wildcard include/config/DYNAMIC_DEBUG_CORE) \
  /tmp/opencode/kernel-audit/src/include/linux/init.h \
    $(wildcard include/config/MEMORY_HOTPLUG) \
    $(wildcard include/config/HAVE_ARCH_PREL32_RELOCATIONS) \
  /tmp/opencode/kernel-audit/src/include/linux/stringify.h \
  /tmp/opencode/kernel-audit/src/include/linux/kern_levels.h \
  /tmp/opencode/kernel-audit/src/include/linux/linkage.h \
    $(wildcard include/config/ARCH_USE_SYM_ANNOTATIONS) \
  /tmp/opencode/kernel-audit/src/include/linux/export.h \
    $(wildcard include/config/MODVERSIONS) \
    $(wildcard include/config/GENDWARFKSYMS) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/linkage.h \
  /tmp/opencode/kernel-audit/src/include/linux/ratelimit_types.h \
  /tmp/opencode/kernel-audit/src/include/linux/bits.h \
  /tmp/opencode/kernel-audit/src/include/vdso/bits.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/bits.h \
  /tmp/opencode/kernel-audit/src/include/linux/overflow.h \
  /tmp/opencode/kernel-audit/src/include/linux/limits.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/limits.h \
  /tmp/opencode/kernel-audit/src/include/vdso/limits.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/param.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/uapi/asm/param.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/param.h \
    $(wildcard include/config/HZ) \
  /tmp/opencode/kernel-audit/src/include/uapi/asm-generic/param.h \
  /tmp/opencode/kernel-audit/src/include/linux/spinlock_types_raw.h \
    $(wildcard include/config/DEBUG_SPINLOCK) \
    $(wildcard include/config/DEBUG_LOCK_ALLOC) \
  /tmp/opencode/kernel-audit/src/include/linux/spinlock_types_up.h \
  /tmp/opencode/kernel-audit/src/include/linux/lockdep_types.h \
    $(wildcard include/config/PROVE_RAW_LOCK_NESTING) \
    $(wildcard include/config/LOCK_STAT) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/alternative-macros.h \
    $(wildcard include/config/RISCV_ALTERNATIVE) \
    $(wildcard include/config/k) \
    $(wildcard include/config/k_1) \
    $(wildcard include/config/k_2) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/fence.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/hwcap.h \
    $(wildcard include/config/RISCV_M_MODE) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/uapi/asm/hwcap.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/insn-def.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/gpr-num.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/cpufeature-macros.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/processor.h \
    $(wildcard include/config/MMU) \
    $(wildcard include/config/RISCV_ISA_ZICBOP) \
    $(wildcard include/config/RISCV_ISA_V) \
    $(wildcard include/config/RISCV_ISA_SUPM) \
  /tmp/opencode/kernel-audit/src/include/linux/cache.h \
    $(wildcard include/config/ARCH_HAS_CACHE_LINE_SIZE) \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/kernel.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/sysinfo.h \
  /tmp/opencode/kernel-audit/src/include/vdso/cache.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/cache.h \
    $(wildcard include/config/RISCV_DMA_NONCOHERENT) \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/prctl.h \
  /tmp/opencode/kernel-audit/src/include/vdso/processor.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/vdso/processor.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/errata_list.h \
    $(wildcard include/config/ERRATA_SIFIVE_CIP_453) \
    $(wildcard include/config/ERRATA_SIFIVE_CIP_1200) \
    $(wildcard include/config/ERRATA_MIPS_P8700_PAUSE_OPCODE) \
    $(wildcard include/config/RISCV_ISA_SVPBMT) \
    $(wildcard include/config/ERRATA_THEAD_MAE) \
    $(wildcard include/config/RISCV_ISA_ZICBOM) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/csr.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/vendorid_list.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/errata_list_vendors.h \
    $(wildcard include/config/ERRATA_ANDES) \
    $(wildcard include/config/ERRATA_SIFIVE) \
    $(wildcard include/config/ERRATA_THEAD) \
    $(wildcard include/config/ERRATA_MIPS) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/vendor_extensions/mips.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/ptrace.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/uapi/asm/ptrace.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/usercfi.h \
    $(wildcard include/config/RISCV_USER_CFI) \
  /tmp/opencode/kernel-audit/src/include/linux/errno.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/errno.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/uapi/asm/errno.h \
  /tmp/opencode/kernel-audit/src/include/uapi/asm-generic/errno.h \
  /tmp/opencode/kernel-audit/src/include/uapi/asm-generic/errno-base.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/barrier.h \
  /tmp/opencode/kernel-audit/src/include/linux/ktime.h \
  /tmp/opencode/kernel-audit/src/include/linux/jiffies.h \
  /tmp/opencode/kernel-audit/src/include/linux/math64.h \
    $(wildcard include/config/ARCH_SUPPORTS_INT128) \
  /tmp/opencode/kernel-audit/src/include/linux/math.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/asm/div64.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/div64.h \
    $(wildcard include/config/CC_OPTIMIZE_FOR_PERFORMANCE) \
  /tmp/opencode/kernel-audit/src/include/vdso/math64.h \
  /tmp/opencode/kernel-audit/src/include/linux/minmax.h \
  /tmp/opencode/kernel-audit/src/include/linux/time.h \
    $(wildcard include/config/POSIX_TIMERS) \
  /tmp/opencode/kernel-audit/src/include/linux/time64.h \
  /tmp/opencode/kernel-audit/src/include/vdso/time64.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/time.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/time_types.h \
  /tmp/opencode/kernel-audit/src/include/linux/time32.h \
  /tmp/opencode/kernel-audit/src/include/linux/timex.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/timex.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/timex.h \
  /tmp/opencode/kernel-audit/src/include/vdso/time32.h \
  /tmp/opencode/kernel-audit/src/include/vdso/time.h \
  /tmp/opencode/kernel-audit/src/include/vdso/jiffies.h \
  /tmp/opencode/kernel-audit/src/include/generated/timeconst.h \
  /tmp/opencode/kernel-audit/src/include/vdso/ktime.h \
  /tmp/opencode/kernel-audit/src/include/linux/timekeeping.h \
    $(wildcard include/config/POSIX_AUX_CLOCKS) \
    $(wildcard include/config/GENERIC_CMOS_UPDATE) \
  /tmp/opencode/kernel-audit/src/include/linux/clocksource_ids.h \
  /tmp/opencode/kernel-audit/src/include/linux/debugobjects.h \
    $(wildcard include/config/DEBUG_OBJECTS) \
    $(wildcard include/config/DEBUG_OBJECTS_FREE) \
  /tmp/opencode/kernel-audit/src/include/linux/spinlock.h \
    $(wildcard include/config/PREEMPTION) \
    $(wildcard include/config/PREEMPT_RT) \
  /tmp/opencode/kernel-audit/src/include/linux/typecheck.h \
  /tmp/opencode/kernel-audit/src/include/linux/preempt.h \
    $(wildcard include/config/PREEMPT_COUNT) \
    $(wildcard include/config/DEBUG_PREEMPT) \
    $(wildcard include/config/TRACE_PREEMPT_TOGGLE) \
    $(wildcard include/config/PREEMPT_NOTIFIERS) \
    $(wildcard include/config/PREEMPT_DYNAMIC) \
    $(wildcard include/config/PREEMPT_NONE) \
    $(wildcard include/config/PREEMPT_VOLUNTARY) \
    $(wildcard include/config/PREEMPT) \
    $(wildcard include/config/PREEMPT_LAZY) \
  /tmp/opencode/kernel-audit/src/include/linux/cleanup.h \
  /tmp/opencode/kernel-audit/src/include/linux/err.h \
  /tmp/opencode/kernel-audit/src/include/linux/args.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/asm/preempt.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/preempt.h \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_KEY) \
  /tmp/opencode/kernel-audit/src/include/linux/thread_info.h \
    $(wildcard include/config/THREAD_INFO_IN_TASK) \
    $(wildcard include/config/GENERIC_ENTRY) \
    $(wildcard include/config/ARCH_HAS_PREEMPT_LAZY) \
    $(wildcard include/config/HAVE_ARCH_WITHIN_STACK_FRAMES) \
    $(wildcard include/config/SH) \
  /tmp/opencode/kernel-audit/src/include/linux/restart_block.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/current.h \
  /tmp/opencode/kernel-audit/src/include/linux/bitops.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/bitops/generic-non-atomic.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/bitops.h \
    $(wildcard include/config/RISCV_ISA_ZBB) \
    $(wildcard include/config/TOOLCHAIN_HAS_ZBB) \
  /tmp/opencode/kernel-audit/src/include/asm-generic/bitops/__ffs.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/bitops/__fls.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/bitops/ffs.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/bitops/fls.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/bitops/ffz.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/bitops/fls64.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/bitops/sched.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/arch_hweight.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/bitops/const_hweight.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/bitops/instrumented-atomic.h \
  /tmp/opencode/kernel-audit/src/include/linux/instrumented.h \
    $(wildcard include/config/DEBUG_ATOMIC) \
    $(wildcard include/config/DEBUG_ATOMIC_LARGEST_ALIGN) \
  /tmp/opencode/kernel-audit/src/include/linux/kmsan-checks.h \
    $(wildcard include/config/KMSAN) \
  /tmp/opencode/kernel-audit/src/include/asm-generic/bitops/instrumented-lock.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/bitops/non-atomic.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/bitops/non-instrumented-non-atomic.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/bitops/le.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/uapi/asm/byteorder.h \
  /tmp/opencode/kernel-audit/src/include/linux/byteorder/little_endian.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/byteorder/little_endian.h \
  /tmp/opencode/kernel-audit/src/include/linux/swab.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/swab.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/swab.h \
  /tmp/opencode/kernel-audit/src/include/uapi/asm-generic/swab.h \
  /tmp/opencode/kernel-audit/src/include/linux/byteorder/generic.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/bitops/ext2-atomic.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/thread_info.h \
    $(wildcard include/config/KASAN) \
    $(wildcard include/config/THREAD_SIZE_ORDER) \
    $(wildcard include/config/VMAP_STACK) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/page.h \
    $(wildcard include/config/RISCV_ISA_ZICBOZ) \
    $(wildcard include/config/DEBUG_VIRTUAL) \
  /tmp/opencode/kernel-audit/src/include/linux/pfn.h \
  /tmp/opencode/kernel-audit/src/include/vdso/page.h \
    $(wildcard include/config/PAGE_SHIFT) \
  /tmp/opencode/kernel-audit/src/include/asm-generic/memory_model.h \
    $(wildcard include/config/FLATMEM) \
    $(wildcard include/config/SPARSEMEM_VMEMMAP) \
    $(wildcard include/config/SPARSEMEM) \
  /tmp/opencode/kernel-audit/src/include/asm-generic/getorder.h \
  /tmp/opencode/kernel-audit/src/include/linux/log2.h \
    $(wildcard include/config/ARCH_HAS_ILOG2_U32) \
    $(wildcard include/config/ARCH_HAS_ILOG2_U64) \
  /tmp/opencode/kernel-audit/src/include/linux/sizes.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/thread_info_tif.h \
  /tmp/opencode/kernel-audit/src/include/linux/irqflags.h \
    $(wildcard include/config/PROVE_LOCKING) \
    $(wildcard include/config/TRACE_IRQFLAGS) \
    $(wildcard include/config/IRQSOFF_TRACER) \
    $(wildcard include/config/PREEMPT_TRACER) \
    $(wildcard include/config/DEBUG_IRQFLAGS) \
    $(wildcard include/config/TRACE_IRQFLAGS_SUPPORT) \
  /tmp/opencode/kernel-audit/src/include/linux/irqflags_types.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/irqflags.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/asm/percpu.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/percpu.h \
    $(wildcard include/config/HAVE_SETUP_PER_CPU_AREA) \
  /tmp/opencode/kernel-audit/src/include/linux/threads.h \
    $(wildcard include/config/NR_CPUS) \
    $(wildcard include/config/BASE_SMALL) \
  /tmp/opencode/kernel-audit/src/include/linux/percpu-defs.h \
    $(wildcard include/config/ARCH_MODULE_NEEDS_WEAK_PER_CPU) \
    $(wildcard include/config/DEBUG_FORCE_WEAK_PER_CPU) \
    $(wildcard include/config/AMD_MEM_ENCRYPT) \
  /tmp/opencode/kernel-audit/src/include/linux/bottom_half.h \
  /tmp/opencode/kernel-audit/src/include/linux/instruction_pointer.h \
  /tmp/opencode/kernel-audit/src/include/linux/lockdep.h \
    $(wildcard include/config/DEBUG_LOCKING_API_SELFTESTS) \
  /tmp/opencode/kernel-audit/src/include/linux/smp.h \
    $(wildcard include/config/UP_LATE_INIT) \
    $(wildcard include/config/CSD_LOCK_WAIT_DEBUG) \
  /tmp/opencode/kernel-audit/src/include/linux/cpumask.h \
    $(wildcard include/config/FORCE_NR_CPUS) \
    $(wildcard include/config/DEBUG_PER_CPU_MAPS) \
    $(wildcard include/config/CPUMASK_OFFSTACK) \
  /tmp/opencode/kernel-audit/src/include/linux/atomic.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/atomic.h \
    $(wildcard include/config/GENERIC_ATOMIC64) \
  /tmp/opencode/kernel-audit/src/include/linux/atomic/atomic-arch-fallback.h \
  /tmp/opencode/kernel-audit/src/include/linux/atomic/atomic-long.h \
  /tmp/opencode/kernel-audit/src/include/linux/atomic/atomic-instrumented.h \
  /tmp/opencode/kernel-audit/src/include/linux/bitmap.h \
  /tmp/opencode/kernel-audit/src/include/linux/align.h \
  /tmp/opencode/kernel-audit/src/include/vdso/align.h \
  /tmp/opencode/kernel-audit/src/include/linux/find.h \
  /tmp/opencode/kernel-audit/src/include/linux/string.h \
    $(wildcard include/config/BINARY_PRINTF) \
  /tmp/opencode/kernel-audit/src/include/linux/array_size.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/string.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/string.h \
  /tmp/opencode/kernel-audit/src/include/linux/bitmap-str.h \
  /tmp/opencode/kernel-audit/src/include/linux/cpumask_types.h \
  /tmp/opencode/kernel-audit/src/include/linux/gfp_types.h \
    $(wildcard include/config/KASAN_HW_TAGS) \
  /tmp/opencode/kernel-audit/src/include/linux/numa.h \
    $(wildcard include/config/NUMA_KEEP_MEMINFO) \
    $(wildcard include/config/NUMA) \
    $(wildcard include/config/HAVE_ARCH_NODE_DEV_GROUP) \
  /tmp/opencode/kernel-audit/src/include/linux/nodemask.h \
    $(wildcard include/config/HIGHMEM) \
  /tmp/opencode/kernel-audit/src/include/linux/nodemask_types.h \
    $(wildcard include/config/NODES_SHIFT) \
  /tmp/opencode/kernel-audit/src/include/linux/random.h \
    $(wildcard include/config/VMGENID) \
  /tmp/opencode/kernel-audit/src/include/linux/kernel.h \
    $(wildcard include/config/PREEMPT_VOLUNTARY_BUILD) \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_CALL) \
    $(wildcard include/config/PREEMPT_) \
    $(wildcard include/config/DEBUG_ATOMIC_SLEEP) \
    $(wildcard include/config/DYNAMIC_FTRACE) \
  /tmp/opencode/kernel-audit/src/include/linux/kstrtox.h \
  /tmp/opencode/kernel-audit/src/include/linux/sprintf.h \
  /tmp/opencode/kernel-audit/src/include/linux/static_call_types.h \
    $(wildcard include/config/HAVE_STATIC_CALL) \
    $(wildcard include/config/HAVE_STATIC_CALL_INLINE) \
  /tmp/opencode/kernel-audit/src/include/linux/trace_printk.h \
    $(wildcard include/config/TRACING) \
  /tmp/opencode/kernel-audit/src/include/linux/util_macros.h \
    $(wildcard include/config/FOO_SUSPEND) \
  /tmp/opencode/kernel-audit/src/include/linux/wordpart.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/random.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/ioctl.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/uapi/asm/ioctl.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/ioctl.h \
  /tmp/opencode/kernel-audit/src/include/uapi/asm-generic/ioctl.h \
  /tmp/opencode/kernel-audit/src/include/linux/irqnr.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/irqnr.h \
  /tmp/opencode/kernel-audit/src/include/linux/smp_types.h \
  /tmp/opencode/kernel-audit/src/include/linux/llist.h \
    $(wildcard include/config/ARCH_HAVE_NMI_SAFE_CMPXCHG) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/mmiowb.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/mmiowb.h \
    $(wildcard include/config/MMIOWB) \
  /tmp/opencode/kernel-audit/src/include/linux/spinlock_types.h \
  /tmp/opencode/kernel-audit/src/include/linux/rwlock_types.h \
  /tmp/opencode/kernel-audit/src/include/linux/spinlock_up.h \
  /tmp/opencode/kernel-audit/src/include/linux/rwlock.h \
  /tmp/opencode/kernel-audit/src/include/linux/spinlock_api_up.h \
  /tmp/opencode/kernel-audit/src/include/linux/timer_types.h \
  /tmp/opencode/kernel-audit/src/include/linux/vmalloc.h \
    $(wildcard include/config/KASAN_VMALLOC) \
    $(wildcard include/config/HAVE_ARCH_HUGE_VMALLOC) \
  /tmp/opencode/kernel-audit/src/include/linux/alloc_tag.h \
    $(wildcard include/config/MEM_ALLOC_PROFILING_DEBUG) \
    $(wildcard include/config/MEM_ALLOC_PROFILING) \
    $(wildcard include/config/MEM_ALLOC_PROFILING_ENABLED_BY_DEFAULT) \
  /tmp/opencode/kernel-audit/src/include/linux/codetag.h \
    $(wildcard include/config/MODULES) \
    $(wildcard include/config/CODE_TAGGING) \
  /tmp/opencode/kernel-audit/src/include/linux/static_key.h \
  /tmp/opencode/kernel-audit/src/include/linux/jump_label.h \
    $(wildcard include/config/JUMP_LABEL) \
    $(wildcard include/config/HAVE_ARCH_JUMP_LABEL_RELATIVE) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/jump_label.h \
  /tmp/opencode/kernel-audit/src/include/linux/sched.h \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_NATIVE) \
    $(wildcard include/config/SCHED_INFO) \
    $(wildcard include/config/SCHEDSTATS) \
    $(wildcard include/config/SCHED_CORE) \
    $(wildcard include/config/FAIR_GROUP_SCHED) \
    $(wildcard include/config/RT_GROUP_SCHED) \
    $(wildcard include/config/RT_MUTEXES) \
    $(wildcard include/config/UCLAMP_TASK) \
    $(wildcard include/config/UCLAMP_BUCKETS_COUNT) \
    $(wildcard include/config/KMAP_LOCAL) \
    $(wildcard include/config/SCHED_CLASS_EXT) \
    $(wildcard include/config/CGROUP_SCHED) \
    $(wildcard include/config/CFS_BANDWIDTH) \
    $(wildcard include/config/BLK_DEV_IO_TRACE) \
    $(wildcard include/config/PREEMPT_RCU) \
    $(wildcard include/config/TASKS_RCU) \
    $(wildcard include/config/TASKS_TRACE_RCU) \
    $(wildcard include/config/TRIVIAL_PREEMPT_RCU) \
    $(wildcard include/config/MEMCG_V1) \
    $(wildcard include/config/LRU_GEN) \
    $(wildcard include/config/COMPAT_BRK) \
    $(wildcard include/config/CGROUPS) \
    $(wildcard include/config/BLK_CGROUP) \
    $(wildcard include/config/PSI) \
    $(wildcard include/config/PAGE_OWNER) \
    $(wildcard include/config/EVENTFD) \
    $(wildcard include/config/ARCH_HAS_CPU_PASID) \
    $(wildcard include/config/X86_BUS_LOCK_DETECT) \
    $(wildcard include/config/TASK_DELAY_ACCT) \
    $(wildcard include/config/STACKPROTECTOR) \
    $(wildcard include/config/ARCH_HAS_SCALED_CPUTIME) \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_GEN) \
    $(wildcard include/config/NO_HZ_FULL) \
    $(wildcard include/config/POSIX_CPUTIMERS) \
    $(wildcard include/config/POSIX_CPU_TIMERS_TASK_WORK) \
    $(wildcard include/config/KEYS) \
    $(wildcard include/config/SYSVIPC) \
    $(wildcard include/config/DETECT_HUNG_TASK) \
    $(wildcard include/config/IO_URING) \
    $(wildcard include/config/AUDIT) \
    $(wildcard include/config/AUDITSYSCALL) \
    $(wildcard include/config/DETECT_HUNG_TASK_BLOCKER) \
    $(wildcard include/config/UBSAN) \
    $(wildcard include/config/UBSAN_TRAP) \
    $(wildcard include/config/COMPACTION) \
    $(wildcard include/config/TASK_XACCT) \
    $(wildcard include/config/CPUSETS) \
    $(wildcard include/config/X86_CPU_RESCTRL) \
    $(wildcard include/config/PERF_EVENTS) \
    $(wildcard include/config/NUMA_BALANCING) \
    $(wildcard include/config/SCHED_CACHE) \
    $(wildcard include/config/ARCH_HAS_LAZY_MMU_MODE) \
    $(wildcard include/config/FAULT_INJECTION) \
    $(wildcard include/config/LATENCYTOP) \
    $(wildcard include/config/KUNIT) \
    $(wildcard include/config/FUNCTION_GRAPH_TRACER) \
    $(wildcard include/config/MEMCG) \
    $(wildcard include/config/UPROBES) \
    $(wildcard include/config/BCACHE) \
    $(wildcard include/config/LIVEPATCH) \
    $(wildcard include/config/SECURITY) \
    $(wildcard include/config/BPF_SYSCALL) \
    $(wildcard include/config/KSTACK_ERASE) \
    $(wildcard include/config/KSTACK_ERASE_METRICS) \
    $(wildcard include/config/X86_MCE) \
    $(wildcard include/config/KRETPROBES) \
    $(wildcard include/config/RETHOOK) \
    $(wildcard include/config/ARCH_HAS_PARANOID_L1D_FLUSH) \
    $(wildcard include/config/RV) \
    $(wildcard include/config/RV_PER_TASK_MONITORS) \
    $(wildcard include/config/USER_EVENTS) \
    $(wildcard include/config/UNWIND_USER) \
    $(wildcard include/config/SCHED_PROXY_EXEC) \
    $(wildcard include/config/SCHED_MM_CID) \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/sched.h \
  /tmp/opencode/kernel-audit/src/include/linux/futex_types.h \
    $(wildcard include/config/FUTEX) \
    $(wildcard include/config/COMPAT) \
    $(wildcard include/config/FUTEX_PRIVATE_HASH) \
    $(wildcard include/config/FUTEX_ROBUST_UNLOCK) \
  /tmp/opencode/kernel-audit/src/include/linux/mutex_types.h \
    $(wildcard include/config/MUTEX_SPIN_ON_OWNER) \
    $(wildcard include/config/DEBUG_MUTEXES) \
  /tmp/opencode/kernel-audit/src/include/linux/osq_lock.h \
  /tmp/opencode/kernel-audit/src/include/linux/pid_types.h \
  /tmp/opencode/kernel-audit/src/include/linux/sem_types.h \
  /tmp/opencode/kernel-audit/src/include/linux/shm.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/asm/shmparam.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/shmparam.h \
  /tmp/opencode/kernel-audit/src/include/linux/kmsan_types.h \
  /tmp/opencode/kernel-audit/src/include/linux/plist_types.h \
  /tmp/opencode/kernel-audit/src/include/linux/hrtimer_types.h \
  /tmp/opencode/kernel-audit/src/include/linux/timerqueue_types.h \
  /tmp/opencode/kernel-audit/src/include/linux/rbtree_types.h \
  /tmp/opencode/kernel-audit/src/include/linux/seccomp_types.h \
    $(wildcard include/config/SECCOMP) \
  /tmp/opencode/kernel-audit/src/include/linux/refcount_types.h \
  /tmp/opencode/kernel-audit/src/include/linux/resource.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/resource.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/uapi/asm/resource.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/resource.h \
  /tmp/opencode/kernel-audit/src/include/uapi/asm-generic/resource.h \
  /tmp/opencode/kernel-audit/src/include/linux/latencytop.h \
  /tmp/opencode/kernel-audit/src/include/linux/sched/prio.h \
  /tmp/opencode/kernel-audit/src/include/linux/sched/types.h \
  /tmp/opencode/kernel-audit/src/include/linux/signal_types.h \
    $(wildcard include/config/OLD_SIGACTION) \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/signal.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/uapi/asm/signal.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/signal.h \
  /tmp/opencode/kernel-audit/src/include/uapi/asm-generic/signal.h \
  /tmp/opencode/kernel-audit/src/include/uapi/asm-generic/signal-defs.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/uapi/asm/sigcontext.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/uapi/asm/siginfo.h \
  /tmp/opencode/kernel-audit/src/include/uapi/asm-generic/siginfo.h \
  /tmp/opencode/kernel-audit/src/include/linux/syscall_user_dispatch_types.h \
  /tmp/opencode/kernel-audit/src/include/linux/mm_types_task.h \
    $(wildcard include/config/ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/tlbbatch.h \
  /tmp/opencode/kernel-audit/src/include/linux/netdevice_xmit.h \
    $(wildcard include/config/NET_ACT_MIRRED) \
    $(wildcard include/config/NET_EGRESS) \
    $(wildcard include/config/NF_DUP_NETDEV) \
  /tmp/opencode/kernel-audit/src/include/linux/task_io_accounting.h \
    $(wildcard include/config/TASK_IO_ACCOUNTING) \
  /tmp/opencode/kernel-audit/src/include/linux/posix-timers_types.h \
  /tmp/opencode/kernel-audit/src/include/linux/rseq_types.h \
    $(wildcard include/config/RSEQ) \
    $(wildcard include/config/RSEQ_SLICE_EXTENSION) \
  /tmp/opencode/kernel-audit/src/include/linux/irq_work_types.h \
  /tmp/opencode/kernel-audit/src/include/linux/workqueue_types.h \
  /tmp/opencode/kernel-audit/src/include/linux/seqlock_types.h \
  /tmp/opencode/kernel-audit/src/include/linux/kcsan.h \
  /tmp/opencode/kernel-audit/src/include/linux/rv.h \
    $(wildcard include/config/RV_LTL_MONITOR) \
    $(wildcard include/config/RV_HA_MONITOR) \
    $(wildcard include/config/RV_REACTORS) \
  /tmp/opencode/kernel-audit/src/include/linux/uidgid_types.h \
  /tmp/opencode/kernel-audit/src/include/linux/tracepoint-defs.h \
    $(wildcard include/config/TRACEPOINTS) \
  /tmp/opencode/kernel-audit/src/include/linux/unwind_deferred_types.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/asm/kmap_size.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/kmap_size.h \
    $(wildcard include/config/DEBUG_KMAP_LOCAL) \
  /tmp/opencode/kernel-audit/src/include/generated/rq-offsets.h \
  /tmp/opencode/kernel-audit/src/include/linux/sched/ext.h \
    $(wildcard include/config/EXT_GROUP_SCHED) \
  /tmp/opencode/kernel-audit/src/include/linux/rbtree.h \
  /tmp/opencode/kernel-audit/src/include/linux/rcupdate.h \
    $(wildcard include/config/TINY_RCU) \
    $(wildcard include/config/RCU_STRICT_GRACE_PERIOD) \
    $(wildcard include/config/RCU_LAZY) \
    $(wildcard include/config/RCU_STALL_COMMON) \
    $(wildcard include/config/VIRT_XFER_TO_GUEST_WORK) \
    $(wildcard include/config/RCU_NOCB_CPU) \
    $(wildcard include/config/TASKS_RCU_GENERIC) \
    $(wildcard include/config/TASKS_RUDE_RCU) \
    $(wildcard include/config/TREE_RCU) \
    $(wildcard include/config/DEBUG_OBJECTS_RCU_HEAD) \
    $(wildcard include/config/PROVE_RCU) \
    $(wildcard include/config/ARCH_WEAK_RELEASE_ACQUIRE) \
  /tmp/opencode/kernel-audit/src/include/linux/context_tracking_irq.h \
    $(wildcard include/config/CONTEXT_TRACKING_IDLE) \
  /tmp/opencode/kernel-audit/src/include/linux/rcutiny.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/vmalloc.h \
    $(wildcard include/config/HAVE_ARCH_HUGE_VMAP) \
  /tmp/opencode/kernel-audit/src/include/generated/uapi/linux/version.h \
  /tmp/opencode/kernel-audit/src/include/linux/module.h \
    $(wildcard include/config/SYSFS) \
    $(wildcard include/config/MODULES_TREE_LOOKUP) \
    $(wildcard include/config/STACKTRACE_BUILD_ID) \
    $(wildcard include/config/ARCH_USES_CFI_TRAPS) \
    $(wildcard include/config/MODULE_SIG) \
    $(wildcard include/config/KALLSYMS) \
    $(wildcard include/config/TREE_SRCU) \
    $(wildcard include/config/BPF_EVENTS) \
    $(wildcard include/config/DEBUG_INFO_BTF_MODULES) \
    $(wildcard include/config/EVENT_TRACING) \
    $(wildcard include/config/MODULE_UNLOAD) \
    $(wildcard include/config/CONSTRUCTORS) \
    $(wildcard include/config/FUNCTION_ERROR_INJECTION) \
    $(wildcard include/config/MITIGATION_RETPOLINE) \
  /tmp/opencode/kernel-audit/src/include/linux/stat.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/uapi/asm/stat.h \
  /tmp/opencode/kernel-audit/src/include/uapi/asm-generic/stat.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/stat.h \
  /tmp/opencode/kernel-audit/src/include/linux/uidgid.h \
    $(wildcard include/config/MULTIUSER) \
    $(wildcard include/config/USER_NS) \
  /tmp/opencode/kernel-audit/src/include/linux/highuid.h \
  /tmp/opencode/kernel-audit/src/include/linux/buildid.h \
    $(wildcard include/config/VMCORE_INFO) \
  /tmp/opencode/kernel-audit/src/include/linux/kmod.h \
  /tmp/opencode/kernel-audit/src/include/linux/umh.h \
  /tmp/opencode/kernel-audit/src/include/linux/gfp.h \
    $(wildcard include/config/ZONE_DMA) \
    $(wildcard include/config/ZONE_DMA32) \
    $(wildcard include/config/ZONE_DEVICE) \
    $(wildcard include/config/CONTIG_ALLOC) \
  /tmp/opencode/kernel-audit/src/include/linux/mmzone.h \
    $(wildcard include/config/ARCH_FORCE_MAX_ORDER) \
    $(wildcard include/config/PAGE_BLOCK_MAX_ORDER) \
    $(wildcard include/config/HAVE_GIGANTIC_FOLIOS) \
    $(wildcard include/config/HUGETLB_PAGE) \
    $(wildcard include/config/HUGETLB_PAGE_OPTIMIZE_VMEMMAP) \
    $(wildcard include/config/CMA) \
    $(wildcard include/config/MEMORY_ISOLATION) \
    $(wildcard include/config/ZSMALLOC) \
    $(wildcard include/config/UNACCEPTED_MEMORY) \
    $(wildcard include/config/IOMMU_SUPPORT) \
    $(wildcard include/config/SWAP) \
    $(wildcard include/config/TRANSPARENT_HUGEPAGE) \
    $(wildcard include/config/LRU_GEN_STATS) \
    $(wildcard include/config/LRU_GEN_WALKS_MMU) \
    $(wildcard include/config/MEMORY_FAILURE) \
    $(wildcard include/config/PAGE_EXTENSION) \
    $(wildcard include/config/DEFERRED_STRUCT_PAGE_INIT) \
    $(wildcard include/config/HAVE_MEMORYLESS_NODES) \
    $(wildcard include/config/SPARSEMEM_EXTREME) \
    $(wildcard include/config/SPARSEMEM_VMEMMAP_PREINIT) \
    $(wildcard include/config/HAVE_ARCH_PFN_VALID) \
  /tmp/opencode/kernel-audit/src/include/linux/list_nulls.h \
  /tmp/opencode/kernel-audit/src/include/linux/wait.h \
  /tmp/opencode/kernel-audit/src/include/linux/seqlock.h \
    $(wildcard include/config/CC_IS_GCC) \
    $(wildcard include/config/GCC_VERSION) \
    $(wildcard include/config/UBSAN_ALIGNMENT) \
  /tmp/opencode/kernel-audit/src/include/linux/mutex.h \
  /tmp/opencode/kernel-audit/src/include/linux/debug_locks.h \
  /tmp/opencode/kernel-audit/src/include/linux/pageblock-flags.h \
    $(wildcard include/config/HUGETLB_PAGE_SIZE_VARIABLE) \
  /tmp/opencode/kernel-audit/src/include/linux/page-flags-layout.h \
  /tmp/opencode/kernel-audit/src/include/generated/bounds.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/sparsemem.h \
  /tmp/opencode/kernel-audit/src/include/linux/mm_types.h \
    $(wildcard include/config/HAVE_ALIGNED_STRUCT_PAGE) \
    $(wildcard include/config/SLAB_OBJ_EXT) \
    $(wildcard include/config/HUGETLB_PMD_PAGE_TABLE_SHARING) \
    $(wildcard include/config/SLAB_FREELIST_HARDENED) \
    $(wildcard include/config/USERFAULTFD) \
    $(wildcard include/config/ANON_VMA_NAME) \
    $(wildcard include/config/PER_VMA_LOCK) \
    $(wildcard include/config/HAVE_ARCH_COMPAT_MMAP_BASES) \
    $(wildcard include/config/MEMBARRIER) \
    $(wildcard include/config/ARCH_HAS_ELF_CORE_EFLAGS) \
    $(wildcard include/config/AIO) \
    $(wildcard include/config/MMU_NOTIFIER) \
    $(wildcard include/config/SPLIT_PMD_PTLOCKS) \
    $(wildcard include/config/IOMMU_MM_DATA) \
    $(wildcard include/config/KSM) \
    $(wildcard include/config/MM_ID) \
    $(wildcard include/config/CORE_DUMP_DEFAULT_ELF_HEADERS) \
  /tmp/opencode/kernel-audit/src/include/linux/auxvec.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/auxvec.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/uapi/asm/auxvec.h \
  /tmp/opencode/kernel-audit/src/include/linux/kref.h \
  /tmp/opencode/kernel-audit/src/include/linux/refcount.h \
  /tmp/opencode/kernel-audit/src/include/linux/maple_tree.h \
    $(wildcard include/config/MAPLE_RCU_DISABLED) \
    $(wildcard include/config/DEBUG_MAPLE_TREE) \
  /tmp/opencode/kernel-audit/src/include/linux/rwsem.h \
    $(wildcard include/config/RWSEM_SPIN_ON_OWNER) \
    $(wildcard include/config/DEBUG_RWSEMS) \
  /tmp/opencode/kernel-audit/src/include/linux/completion.h \
  /tmp/opencode/kernel-audit/src/include/linux/swait.h \
  /tmp/opencode/kernel-audit/src/include/linux/uprobes.h \
  /tmp/opencode/kernel-audit/src/include/linux/workqueue.h \
    $(wildcard include/config/DEBUG_OBJECTS_WORK) \
    $(wildcard include/config/FREEZER) \
    $(wildcard include/config/WQ_WATCHDOG) \
  /tmp/opencode/kernel-audit/src/include/linux/percpu_counter.h \
  /tmp/opencode/kernel-audit/src/include/linux/percpu.h \
    $(wildcard include/config/KMALLOC_PARTITION_CACHES) \
    $(wildcard include/config/PAGE_SIZE_4KB) \
    $(wildcard include/config/NEED_PER_CPU_PAGE_FIRST_CHUNK) \
  /tmp/opencode/kernel-audit/src/include/linux/mmdebug.h \
    $(wildcard include/config/DEBUG_VM) \
    $(wildcard include/config/DEBUG_VM_IRQSOFF) \
    $(wildcard include/config/DEBUG_VM_PGFLAGS) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/mmu.h \
    $(wildcard include/config/BINFMT_ELF_FDPIC) \
  /tmp/opencode/kernel-audit/src/include/linux/page-flags.h \
    $(wildcard include/config/PAGE_IDLE_FLAG) \
    $(wildcard include/config/ARCH_USES_PG_ARCH_2) \
    $(wildcard include/config/ARCH_USES_PG_ARCH_3) \
    $(wildcard include/config/MIGRATION) \
    $(wildcard include/config/DEBUG_KMAP_LOCAL_FORCE_MAP) \
  /tmp/opencode/kernel-audit/src/include/linux/local_lock.h \
  /tmp/opencode/kernel-audit/src/include/linux/local_lock_internal.h \
  /tmp/opencode/kernel-audit/src/include/linux/zswap.h \
    $(wildcard include/config/ZSWAP) \
  /tmp/opencode/kernel-audit/src/include/linux/memory_hotplug.h \
    $(wildcard include/config/ARCH_HAS_ADD_PAGES) \
    $(wildcard include/config/MEMORY_HOTREMOVE) \
  /tmp/opencode/kernel-audit/src/include/linux/notifier.h \
  /tmp/opencode/kernel-audit/src/include/linux/srcu.h \
    $(wildcard include/config/TINY_SRCU) \
    $(wildcard include/config/NEED_SRCU_NMI_SAFE) \
  /tmp/opencode/kernel-audit/src/include/linux/rcu_segcblist.h \
  /tmp/opencode/kernel-audit/src/include/linux/srcutiny.h \
  /tmp/opencode/kernel-audit/src/include/linux/topology.h \
    $(wildcard include/config/USE_PERCPU_NUMA_NODE_ID) \
    $(wildcard include/config/SCHED_SMT) \
    $(wildcard include/config/GENERIC_ARCH_TOPOLOGY) \
  /tmp/opencode/kernel-audit/src/include/linux/arch_topology.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/topology.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/topology.h \
  /tmp/opencode/kernel-audit/src/include/linux/sysctl.h \
    $(wildcard include/config/SYSCTL) \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/sysctl.h \
  /tmp/opencode/kernel-audit/src/include/linux/elf.h \
    $(wildcard include/config/ARCH_HAVE_EXTRA_ELF_NOTES) \
    $(wildcard include/config/ARCH_USE_GNU_PROPERTY) \
    $(wildcard include/config/ARCH_HAVE_ELF_PROT) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/elf.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/elf.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/elf-em.h \
  /tmp/opencode/kernel-audit/src/include/linux/compat.h \
    $(wildcard include/config/ARCH_HAS_SYSCALL_WRAPPER) \
    $(wildcard include/config/X86_X32_ABI) \
    $(wildcard include/config/COMPAT_OLD_SIGACTION) \
    $(wildcard include/config/HARDENED_USERCOPY) \
    $(wildcard include/config/ODD_RT_SIGACTION) \
  /tmp/opencode/kernel-audit/src/include/linux/sem.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/sem.h \
  /tmp/opencode/kernel-audit/src/include/linux/ipc.h \
  /tmp/opencode/kernel-audit/src/include/linux/rhashtable-types.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/ipc.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/uapi/asm/ipcbuf.h \
  /tmp/opencode/kernel-audit/src/include/uapi/asm-generic/ipcbuf.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/uapi/asm/sembuf.h \
  /tmp/opencode/kernel-audit/src/include/uapi/asm-generic/sembuf.h \
  /tmp/opencode/kernel-audit/src/include/linux/socket.h \
    $(wildcard include/config/PROC_FS) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/uapi/asm/socket.h \
  /tmp/opencode/kernel-audit/src/include/uapi/asm-generic/socket.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/uapi/asm/sockios.h \
  /tmp/opencode/kernel-audit/src/include/uapi/asm-generic/sockios.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/sockios.h \
  /tmp/opencode/kernel-audit/src/include/linux/uio.h \
    $(wildcard include/config/ARCH_HAS_UACCESS_FLUSHCACHE) \
    $(wildcard include/config/ARCH_HAS_COPY_MC) \
  /tmp/opencode/kernel-audit/src/include/linux/ucopysize.h \
    $(wildcard include/config/HARDENED_USERCOPY_DEFAULT_ON) \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/uio.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/socket.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/if.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/libc-compat.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/hdlc/ioctl.h \
  /tmp/opencode/kernel-audit/src/include/linux/fs.h \
    $(wildcard include/config/FANOTIFY_ACCESS_PERMISSIONS) \
    $(wildcard include/config/FS_POSIX_ACL) \
    $(wildcard include/config/CGROUP_WRITEBACK) \
    $(wildcard include/config/IMA) \
    $(wildcard include/config/FILE_LOCKING) \
    $(wildcard include/config/FSNOTIFY) \
    $(wildcard include/config/EPOLL) \
    $(wildcard include/config/FS_DAX) \
    $(wildcard include/config/BLOCK) \
    $(wildcard include/config/UNICODE) \
  /tmp/opencode/kernel-audit/src/include/linux/fs/super.h \
  /tmp/opencode/kernel-audit/src/include/linux/fs/super_types.h \
    $(wildcard include/config/QUOTA) \
    $(wildcard include/config/FS_ENCRYPTION) \
    $(wildcard include/config/FS_VERITY) \
  /tmp/opencode/kernel-audit/src/include/linux/fs_dirent.h \
  /tmp/opencode/kernel-audit/src/include/linux/errseq.h \
  /tmp/opencode/kernel-audit/src/include/linux/list_lru.h \
  /tmp/opencode/kernel-audit/src/include/linux/shrinker.h \
    $(wildcard include/config/SHRINKER_DEBUG) \
  /tmp/opencode/kernel-audit/src/include/linux/xarray.h \
    $(wildcard include/config/XARRAY_MULTI) \
  /tmp/opencode/kernel-audit/src/include/linux/sched/mm.h \
    $(wildcard include/config/MMU_LAZY_TLB_REFCOUNT) \
    $(wildcard include/config/ARCH_HAS_MEMBARRIER_CALLBACKS) \
    $(wildcard include/config/ARCH_HAS_SYNC_CORE_BEFORE_USERMODE) \
  /tmp/opencode/kernel-audit/src/include/linux/sync_core.h \
    $(wildcard include/config/ARCH_HAS_PREPARE_SYNC_CORE_CMD) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/sync_core.h \
  /tmp/opencode/kernel-audit/src/include/linux/sched/coredump.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/membarrier.h \
  /tmp/opencode/kernel-audit/src/include/linux/list_bl.h \
  /tmp/opencode/kernel-audit/src/include/linux/bit_spinlock.h \
  /tmp/opencode/kernel-audit/src/include/linux/uuid.h \
  /tmp/opencode/kernel-audit/src/include/linux/percpu-rwsem.h \
  /tmp/opencode/kernel-audit/src/include/linux/rcuwait.h \
  /tmp/opencode/kernel-audit/src/include/linux/sched/signal.h \
    $(wildcard include/config/SCHED_AUTOGROUP) \
    $(wildcard include/config/BSD_PROCESS_ACCT) \
    $(wildcard include/config/TASKSTATS) \
    $(wildcard include/config/STACK_GROWSUP) \
  /tmp/opencode/kernel-audit/src/include/linux/rculist.h \
    $(wildcard include/config/PROVE_RCU_LIST) \
  /tmp/opencode/kernel-audit/src/include/linux/signal.h \
    $(wildcard include/config/DYNAMIC_SIGFRAME) \
  /tmp/opencode/kernel-audit/src/include/linux/sched/jobctl.h \
  /tmp/opencode/kernel-audit/src/include/linux/sched/task.h \
    $(wildcard include/config/HAVE_EXIT_THREAD) \
    $(wildcard include/config/ARCH_WANTS_DYNAMIC_TASK_STRUCT) \
    $(wildcard include/config/HAVE_ARCH_THREAD_STRUCT_WHITELIST) \
  /tmp/opencode/kernel-audit/src/include/linux/uaccess.h \
    $(wildcard include/config/ARCH_HAS_SUBPAGE_FAULTS) \
    $(wildcard include/config/ARCH_MEMORY_ORDER_TSO) \
  /tmp/opencode/kernel-audit/src/include/linux/fault-inject-usercopy.h \
    $(wildcard include/config/FAULT_INJECTION_USERCOPY) \
  /tmp/opencode/kernel-audit/src/include/linux/nospec.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/uaccess.h \
    $(wildcard include/config/CC_HAS_ASM_GOTO_OUTPUT) \
    $(wildcard include/config/HAVE_EFFICIENT_UNALIGNED_ACCESS) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/asm-extable.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/cpufeature.h \
    $(wildcard include/config/RISCV_SCALAR_MISALIGNED) \
    $(wildcard include/config/RISCV_MISALIGNED) \
    $(wildcard include/config/RISCV_VECTOR_MISALIGNED) \
    $(wildcard include/config/RISCV_PROBE_UNALIGNED_ACCESS) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/pgtable.h \
    $(wildcard include/config/RELOCATABLE) \
    $(wildcard include/config/PHYS_RAM_BASE) \
    $(wildcard include/config/RISCV_ISA_SVNAPOT) \
    $(wildcard include/config/HAVE_ARCH_USERFAULTFD_WP) \
    $(wildcard include/config/HAVE_ARCH_SOFT_DIRTY) \
    $(wildcard include/config/MEM_SOFT_DIRTY) \
    $(wildcard include/config/ARCH_SUPPORTS_PMD_PFNMAP) \
    $(wildcard include/config/ARCH_SUPPORTS_PUD_PFNMAP) \
    $(wildcard include/config/ARCH_ENABLE_THP_MIGRATION) \
    $(wildcard include/config/PAGE_TABLE_CHECK) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/pgtable-bits.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/tlbflush.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/smp.h \
  /tmp/opencode/kernel-audit/src/include/linux/irqreturn.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/compat.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/compat.h \
    $(wildcard include/config/COMPAT_FOR_U64_ALIGNMENT) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/pgtable-64.h \
  /tmp/opencode/kernel-audit/src/include/linux/page_table_check.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/extable.h \
    $(wildcard include/config/BPF_JIT) \
    $(wildcard include/config/ARCH_RV64I) \
  /tmp/opencode/kernel-audit/src/include/asm-generic/access_ok.h \
    $(wildcard include/config/ALTERNATE_USER_ADDRESS_SPACE) \
  /tmp/opencode/kernel-audit/src/include/linux/cred.h \
  /tmp/opencode/kernel-audit/src/include/linux/capability.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/capability.h \
  /tmp/opencode/kernel-audit/src/include/linux/key.h \
    $(wildcard include/config/KEY_NOTIFICATIONS) \
    $(wildcard include/config/NET) \
  /tmp/opencode/kernel-audit/src/include/linux/assoc_array.h \
    $(wildcard include/config/ASSOCIATIVE_ARRAY) \
  /tmp/opencode/kernel-audit/src/include/linux/sched/user.h \
    $(wildcard include/config/VFIO_PCI_ZDEV_KVM) \
    $(wildcard include/config/IOMMUFD) \
    $(wildcard include/config/SECRETMEM) \
    $(wildcard include/config/WATCH_QUEUE) \
  /tmp/opencode/kernel-audit/src/include/linux/ratelimit.h \
  /tmp/opencode/kernel-audit/src/include/linux/pid.h \
  /tmp/opencode/kernel-audit/src/include/linux/posix-timers.h \
  /tmp/opencode/kernel-audit/src/include/linux/alarmtimer.h \
    $(wildcard include/config/RTC_CLASS) \
  /tmp/opencode/kernel-audit/src/include/linux/hrtimer.h \
    $(wildcard include/config/HIGH_RES_TIMERS) \
    $(wildcard include/config/TIME_LOW_RES) \
    $(wildcard include/config/TIMERFD) \
  /tmp/opencode/kernel-audit/src/include/linux/hrtimer_defs.h \
  /tmp/opencode/kernel-audit/src/include/linux/timerqueue.h \
  /tmp/opencode/kernel-audit/src/include/linux/hrtimer_rearm.h \
    $(wildcard include/config/HRTIMER_REARM_DEFERRED) \
  /tmp/opencode/kernel-audit/src/include/linux/rcuref.h \
  /tmp/opencode/kernel-audit/src/include/linux/rcu_sync.h \
  /tmp/opencode/kernel-audit/src/include/linux/quota.h \
    $(wildcard include/config/QUOTA_NETLINK_INTERFACE) \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/dqblk_xfs.h \
  /tmp/opencode/kernel-audit/src/include/linux/dqblk_v1.h \
  /tmp/opencode/kernel-audit/src/include/linux/dqblk_v2.h \
  /tmp/opencode/kernel-audit/src/include/linux/dqblk_qtree.h \
  /tmp/opencode/kernel-audit/src/include/linux/projid.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/quota.h \
  /tmp/opencode/kernel-audit/src/include/linux/unicode.h \
  /tmp/opencode/kernel-audit/src/include/linux/dcache.h \
  /tmp/opencode/kernel-audit/src/include/linux/rculist_bl.h \
  /tmp/opencode/kernel-audit/src/include/linux/lockref.h \
    $(wildcard include/config/ARCH_USE_CMPXCHG_LOCKREF) \
  /tmp/opencode/kernel-audit/src/include/linux/stringhash.h \
    $(wildcard include/config/DCACHE_WORD_ACCESS) \
  /tmp/opencode/kernel-audit/src/include/linux/hash.h \
    $(wildcard include/config/HAVE_ARCH_HASH) \
  /tmp/opencode/kernel-audit/src/include/linux/vfsdebug.h \
    $(wildcard include/config/DEBUG_VFS) \
  /tmp/opencode/kernel-audit/src/include/linux/wait_bit.h \
  /tmp/opencode/kernel-audit/src/include/linux/kdev_t.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/kdev_t.h \
  /tmp/opencode/kernel-audit/src/include/linux/path.h \
  /tmp/opencode/kernel-audit/src/include/linux/radix-tree.h \
  /tmp/opencode/kernel-audit/src/include/linux/semaphore.h \
  /tmp/opencode/kernel-audit/src/include/linux/fcntl.h \
    $(wildcard include/config/ARCH_32BIT_OFF_T) \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/fcntl.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/uapi/asm/fcntl.h \
  /tmp/opencode/kernel-audit/src/include/uapi/asm-generic/fcntl.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/openat2.h \
  /tmp/opencode/kernel-audit/src/include/linux/migrate_mode.h \
  /tmp/opencode/kernel-audit/src/include/linux/delayed_call.h \
  /tmp/opencode/kernel-audit/src/include/linux/ioprio.h \
  /tmp/opencode/kernel-audit/src/include/linux/sched/rt.h \
  /tmp/opencode/kernel-audit/src/include/linux/iocontext.h \
    $(wildcard include/config/BLK_ICQ) \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/ioprio.h \
  /tmp/opencode/kernel-audit/src/include/linux/mount.h \
  /tmp/opencode/kernel-audit/src/include/linux/mnt_idmapping.h \
  /tmp/opencode/kernel-audit/src/include/linux/slab.h \
    $(wildcard include/config/FAILSLAB) \
    $(wildcard include/config/KFENCE) \
    $(wildcard include/config/SLUB_TINY) \
    $(wildcard include/config/SLUB_DEBUG) \
    $(wildcard include/config/KMALLOC_PARTITION_RANDOM) \
    $(wildcard include/config/KMALLOC_PARTITION_TYPED) \
    $(wildcard include/config/SLAB_BUCKETS) \
    $(wildcard include/config/KVFREE_RCU_BATCHED) \
  /tmp/opencode/kernel-audit/src/include/linux/percpu-refcount.h \
  /tmp/opencode/kernel-audit/src/include/linux/kasan.h \
    $(wildcard include/config/KASAN_STACK) \
  /tmp/opencode/kernel-audit/src/include/linux/kasan-enabled.h \
    $(wildcard include/config/ARCH_DEFER_KASAN) \
  /tmp/opencode/kernel-audit/src/include/linux/kasan-tags.h \
  /tmp/opencode/kernel-audit/src/include/linux/rw_hint.h \
  /tmp/opencode/kernel-audit/src/include/linux/file_ref.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/fs.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/aio_abi.h \
  /tmp/opencode/kernel-audit/src/include/uapi/linux/unistd.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/unistd.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/uapi/asm/unistd.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/uapi/asm/unistd_64.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/syscall_wrapper.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/uapi/asm/elf.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/cacheinfo.h \
  /tmp/opencode/kernel-audit/src/include/linux/cacheinfo.h \
    $(wildcard include/config/ACPI_PPTT) \
    $(wildcard include/config/ARM) \
    $(wildcard include/config/ARCH_HAS_CPU_CACHE_ALIASING) \
  /tmp/opencode/kernel-audit/src/include/linux/cpuhplock.h \
  /tmp/opencode/kernel-audit/src/include/linux/kobject.h \
    $(wildcard include/config/UEVENT_HELPER) \
    $(wildcard include/config/DEBUG_KOBJECT_RELEASE) \
  /tmp/opencode/kernel-audit/src/include/linux/sysfs.h \
  /tmp/opencode/kernel-audit/src/include/linux/kernfs.h \
    $(wildcard include/config/KERNFS) \
  /tmp/opencode/kernel-audit/src/include/linux/idr.h \
  /tmp/opencode/kernel-audit/src/include/linux/kobject_ns.h \
  /tmp/opencode/kernel-audit/src/include/linux/moduleparam.h \
    $(wildcard include/config/ALPHA) \
    $(wildcard include/config/PPC64) \
  /tmp/opencode/kernel-audit/src/include/linux/rbtree_latch.h \
  /tmp/opencode/kernel-audit/src/include/linux/error-injection.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/error-injection.h \
  /tmp/opencode/kernel-audit/src/include/linux/dynamic_debug.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/module.h \
    $(wildcard include/config/MODULE_SECTIONS) \
  /tmp/opencode/kernel-audit/src/include/asm-generic/module.h \
    $(wildcard include/config/HAVE_MOD_ARCH_SPECIFIC) \
  /tmp/opencode/kernel-audit/src/include/linux/io.h \
    $(wildcard include/config/HAS_IOPORT_MAP) \
    $(wildcard include/config/PCI) \
    $(wildcard include/config/STRICT_DEVMEM) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/io.h \
    $(wildcard include/config/HAS_IOPORT) \
  /tmp/opencode/kernel-audit/src/include/linux/pgtable.h \
    $(wildcard include/config/PGTABLE_LEVELS) \
    $(wildcard include/config/HIGHPTE) \
    $(wildcard include/config/ARCH_HAS_NONLEAF_PMD_YOUNG) \
    $(wildcard include/config/ARCH_HAS_HW_PTE_YOUNG) \
    $(wildcard include/config/GUP_GET_PXX_LOW_HIGH) \
    $(wildcard include/config/ARCH_WANT_PMD_MKWRITE) \
    $(wildcard include/config/HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD) \
    $(wildcard include/config/X86_ESPFIX64) \
  /tmp/opencode/kernel-audit/src/include/asm-generic/pgtable_uffd.h \
    $(wildcard include/config/PTE_MARKER_UFFD_WP) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/asm/early_ioremap.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/early_ioremap.h \
    $(wildcard include/config/GENERIC_EARLY_IOREMAP) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/mmio.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/io.h \
    $(wildcard include/config/GENERIC_IOMAP) \
    $(wildcard include/config/TRACE_MMIO_ACCESS) \
    $(wildcard include/config/GENERIC_IOREMAP) \
  /tmp/opencode/kernel-audit/src/include/asm-generic/pci_iomap.h \
    $(wildcard include/config/NO_GENERIC_PCI_IOPORT_MAP) \
    $(wildcard include/config/GENERIC_PCI_IOMAP) \
  /tmp/opencode/kernel-audit/src/include/linux/logic_pio.h \
    $(wildcard include/config/INDIRECT_PIO) \
  /tmp/opencode/kernel-audit/src/include/linux/fwnode.h \
  /tmp/opencode/kernel-audit/src/include/linux/dma-mapping.h \
    $(wildcard include/config/DMA_API_DEBUG) \
    $(wildcard include/config/HAS_DMA) \
    $(wildcard include/config/IOMMU_DMA) \
    $(wildcard include/config/DMA_NEED_SYNC) \
    $(wildcard include/config/NEED_DMA_MAP_STATE) \
  /tmp/opencode/kernel-audit/src/include/linux/device.h \
    $(wildcard include/config/GENERIC_MSI_IRQ) \
    $(wildcard include/config/ENERGY_MODEL) \
    $(wildcard include/config/PINCTRL) \
    $(wildcard include/config/ARCH_HAS_DMA_OPS) \
    $(wildcard include/config/DMA_DECLARE_COHERENT) \
    $(wildcard include/config/DMA_CMA) \
    $(wildcard include/config/SWIOTLB) \
    $(wildcard include/config/SWIOTLB_DYNAMIC) \
    $(wildcard include/config/PM) \
    $(wildcard include/config/PM_SLEEP) \
    $(wildcard include/config/OF) \
    $(wildcard include/config/DEVTMPFS) \
  /tmp/opencode/kernel-audit/src/include/linux/dev_printk.h \
  /tmp/opencode/kernel-audit/src/include/linux/energy_model.h \
  /tmp/opencode/kernel-audit/src/include/linux/sched/cpufreq.h \
    $(wildcard include/config/CPU_FREQ) \
  /tmp/opencode/kernel-audit/src/include/linux/sched/topology.h \
    $(wildcard include/config/SCHED_CLUSTER) \
    $(wildcard include/config/SCHED_MC) \
    $(wildcard include/config/CPU_FREQ_GOV_SCHEDUTIL) \
  /tmp/opencode/kernel-audit/src/include/linux/sched/idle.h \
  /tmp/opencode/kernel-audit/src/include/linux/sched/sd_flags.h \
  /tmp/opencode/kernel-audit/src/include/linux/ioport.h \
  /tmp/opencode/kernel-audit/src/include/linux/klist.h \
  /tmp/opencode/kernel-audit/src/include/linux/pm.h \
    $(wildcard include/config/VT_CONSOLE_SLEEP) \
    $(wildcard include/config/CXL_SUSPEND) \
    $(wildcard include/config/PM_CLK) \
    $(wildcard include/config/PM_GENERIC_DOMAINS) \
  /tmp/opencode/kernel-audit/src/include/linux/device/bus.h \
    $(wildcard include/config/ACPI) \
  /tmp/opencode/kernel-audit/src/include/linux/device/class.h \
  /tmp/opencode/kernel-audit/src/include/linux/device/devres.h \
    $(wildcard include/config/HAS_IOMEM) \
  /tmp/opencode/kernel-audit/src/include/linux/device/driver.h \
  /tmp/opencode/kernel-audit/src/include/linux/device-id/acpi.h \
  /tmp/opencode/kernel-audit/src/include/linux/device-id/of.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/asm/device.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/device.h \
  /tmp/opencode/kernel-audit/src/include/linux/pm_wakeup.h \
  /tmp/opencode/kernel-audit/src/include/linux/dma-direction.h \
  /tmp/opencode/kernel-audit/src/include/linux/scatterlist.h \
    $(wildcard include/config/NEED_SG_DMA_LENGTH) \
    $(wildcard include/config/NEED_SG_DMA_FLAGS) \
    $(wildcard include/config/DEBUG_SG) \
    $(wildcard include/config/SGL_ALLOC) \
    $(wildcard include/config/ARCH_NO_SG_CHAIN) \
    $(wildcard include/config/SG_POOL) \
  /tmp/opencode/kernel-audit/src/include/linux/mm.h \
    $(wildcard include/config/HAVE_ARCH_MMAP_RND_BITS) \
    $(wildcard include/config/HAVE_ARCH_MMAP_RND_COMPAT_BITS) \
    $(wildcard include/config/PPC32) \
    $(wildcard include/config/X86_USER_SHADOW_STACK) \
    $(wildcard include/config/ARM64_GCS) \
    $(wildcard include/config/ARCH_HAS_PKEYS) \
    $(wildcard include/config/ARCH_PKEY_BITS) \
    $(wildcard include/config/PARISC) \
    $(wildcard include/config/SPARC64) \
    $(wildcard include/config/ARM64_MTE) \
    $(wildcard include/config/HAVE_ARCH_USERFAULTFD_MINOR) \
    $(wildcard include/config/MSEAL_SYSTEM_MAPPINGS) \
    $(wildcard include/config/FIND_NORMAL_PAGE) \
    $(wildcard include/config/SHMEM) \
    $(wildcard include/config/ARCH_HAS_PTE_SPECIAL) \
    $(wildcard include/config/ASYNC_KERNEL_PGTABLE_FREE) \
    $(wildcard include/config/SPLIT_PTE_PTLOCKS) \
    $(wildcard include/config/DEBUG_VM_RB) \
    $(wildcard include/config/PAGE_POISONING) \
    $(wildcard include/config/INIT_ON_ALLOC_DEFAULT_ON) \
    $(wildcard include/config/INIT_ON_FREE_DEFAULT_ON) \
    $(wildcard include/config/DEBUG_PAGEALLOC) \
    $(wildcard include/config/ARCH_WANT_OPTIMIZE_DAX_VMEMMAP) \
    $(wildcard include/config/HUGETLBFS) \
    $(wildcard include/config/MAPPING_DIRTY_HELPERS) \
    $(wildcard include/config/PAGE_POOL) \
  /tmp/opencode/kernel-audit/src/include/linux/pgalloc_tag.h \
  /tmp/opencode/kernel-audit/src/include/linux/mmap_lock.h \
  /tmp/opencode/kernel-audit/src/include/linux/range.h \
  /tmp/opencode/kernel-audit/src/include/linux/page_ext.h \
  /tmp/opencode/kernel-audit/src/include/linux/stacktrace.h \
    $(wildcard include/config/ARCH_STACKWALK) \
    $(wildcard include/config/STACKTRACE) \
    $(wildcard include/config/HAVE_RELIABLE_STACKTRACE) \
  /tmp/opencode/kernel-audit/src/include/linux/page_ref.h \
    $(wildcard include/config/DEBUG_PAGE_REF) \
  /tmp/opencode/kernel-audit/src/include/linux/memremap.h \
    $(wildcard include/config/DEVICE_PRIVATE) \
    $(wildcard include/config/PCI_P2PDMA) \
  /tmp/opencode/kernel-audit/src/include/linux/iommu-debug-pagealloc.h \
    $(wildcard include/config/IOMMU_DEBUG_PAGEALLOC) \
  /tmp/opencode/kernel-audit/src/include/linux/huge_mm.h \
    $(wildcard include/config/PGTABLE_HAS_HUGE_LEAVES) \
    $(wildcard include/config/PERSISTENT_HUGE_ZERO_FOLIO) \
  /tmp/opencode/kernel-audit/src/include/linux/vmstat.h \
    $(wildcard include/config/VM_EVENT_COUNTERS) \
    $(wildcard include/config/DEBUG_TLBFLUSH) \
    $(wildcard include/config/PER_VMA_LOCK_STATS) \
  /tmp/opencode/kernel-audit/src/include/linux/vm_event_item.h \
    $(wildcard include/config/BALLOON) \
    $(wildcard include/config/BALLOON_MIGRATION) \
    $(wildcard include/config/X86) \
    $(wildcard include/config/DEBUG_STACK_USAGE) \
  /tmp/opencode/kernel-audit/src/include/linux/delay.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/delay.h \
  /tmp/opencode/kernel-audit/src/include/linux/clk.h \
    $(wildcard include/config/COMMON_CLK) \
    $(wildcard include/config/HAVE_CLK_PREPARE) \
    $(wildcard include/config/HAVE_CLK) \
  /tmp/opencode/kernel-audit/src/include/linux/reset.h \
    $(wildcard include/config/RESET_CONTROLLER) \
  /tmp/opencode/kernel-audit/src/include/linux/of.h \
    $(wildcard include/config/OF_DYNAMIC) \
    $(wildcard include/config/SPARC) \
    $(wildcard include/config/OF_PROMTREE) \
    $(wildcard include/config/OF_KOBJ) \
    $(wildcard include/config/OF_NUMA) \
    $(wildcard include/config/OF_OVERLAY) \
  /tmp/opencode/kernel-audit/src/include/linux/property.h \
  /home/debian/apline-milk-v/packages/kernel-modules/tpu/src/compat-include/linux/streamline_annotate.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/cacheflush.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/cacheflush.h \
  /home/debian/apline-milk-v/packages/kernel-modules/tpu/src/tpu/common/cvi_tpu_interface.h \
  /tmp/opencode/kernel-audit/src/include/linux/cdev.h \
  /home/debian/apline-milk-v/packages/kernel-modules/tpu/src/tpu/common/cvi_regcpu.h \
  src/tpu/hal/cv181x/reg_tiu.h \
  src/tpu/hal/cv181x/reg_tdma.h \
  src/tpu/hal/cv181x/tpu_platform.h \
  /tmp/opencode/kernel-audit/src/include/linux/interrupt.h \
    $(wildcard include/config/IRQ_FORCED_THREADING) \
    $(wildcard include/config/GENERIC_IRQ_PROBE) \
  /tmp/opencode/kernel-audit/src/include/linux/hardirq.h \
  /tmp/opencode/kernel-audit/src/include/linux/context_tracking_state.h \
    $(wildcard include/config/CONTEXT_TRACKING_USER) \
    $(wildcard include/config/CONTEXT_TRACKING) \
    $(wildcard include/config/RCU_DYNTICKS_TORTURE) \
  /tmp/opencode/kernel-audit/src/include/linux/ftrace_irq.h \
    $(wildcard include/config/HWLAT_TRACER) \
    $(wildcard include/config/OSNOISE_TRACER) \
  /tmp/opencode/kernel-audit/src/include/linux/vtime.h \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING) \
    $(wildcard include/config/HAVE_VIRT_CPU_ACCOUNTING_IDLE) \
    $(wildcard include/config/IRQ_TIME_ACCOUNTING) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/asm/hardirq.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/hardirq.h \
  /tmp/opencode/kernel-audit/src/include/linux/irq.h \
    $(wildcard include/config/GENERIC_IRQ_EFFECTIVE_AFF_MASK) \
    $(wildcard include/config/GENERIC_IRQ_IPI) \
    $(wildcard include/config/IRQ_DOMAIN_HIERARCHY) \
    $(wildcard include/config/DEPRECATED_IRQ_CPU_ONOFFLINE) \
    $(wildcard include/config/GENERIC_IRQ_MIGRATION) \
    $(wildcard include/config/GENERIC_PENDING_IRQ) \
    $(wildcard include/config/HARDIRQS_SW_RESEND) \
    $(wildcard include/config/GENERIC_IRQ_CHIP) \
    $(wildcard include/config/GENERIC_IRQ_MULTI_HANDLER) \
  /tmp/opencode/kernel-audit/src/include/linux/irqhandler.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/irq.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/irq.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/asm/irq_regs.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/irq_regs.h \
  /tmp/opencode/kernel-audit/src/include/linux/irqdesc.h \
    $(wildcard include/config/GENERIC_IRQ_STAT_SNAPSHOT) \
    $(wildcard include/config/GENERIC_IRQ_DEBUGFS) \
    $(wildcard include/config/SPARSE_IRQ) \
    $(wildcard include/config/IRQ_DOMAIN) \
  /tmp/opencode/kernel-audit/src/include/linux/irq_work.h \
    $(wildcard include/config/IRQ_WORK) \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/irq_work.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/generated/asm/hw_irq.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/hw_irq.h \
  /tmp/opencode/kernel-audit/src/arch/riscv/include/asm/sections.h \
  /tmp/opencode/kernel-audit/src/include/asm-generic/sections.h \
    $(wildcard include/config/HAVE_FUNCTION_DESCRIPTORS) \
  src/tpu/hal/cv181x/tpu_pmu.h \

src/tpu/hal/cv181x/tpu_platform.o: $(deps_src/tpu/hal/cv181x/tpu_platform.o)

$(deps_src/tpu/hal/cv181x/tpu_platform.o):
