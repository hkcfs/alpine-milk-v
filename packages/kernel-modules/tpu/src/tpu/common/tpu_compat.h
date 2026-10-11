/* Compatibility shims for building the 5.10-era vendor TPU driver on 7.2.
 * Forced via -include from the package Makefile; no vendor file is edited
 * except where noted in SOURCE. Verified against 7.2.10. */
#include <linux/timer.h>	/* del_timer_sync fallback decls */
#include <linux/vmalloc.h>	/* vfree() */
#include <linux/version.h>
#include <linux/module.h>	/* MODULE_IMPORT_NS() */

/* 7.2 removed the old timer API (rename series): from_timer/del_timer_sync/
 * del_timer are gone. Our build.sh always tracks latest stable (>= 7.2
 * today), so gate forward-only. */
#if LINUX_VERSION_CODE >= KERNEL_VERSION(7, 2, 0)
#define from_timer(var, timer, member) timer_container_of(var, timer, member)
#define del_timer_sync(t) timer_delete_sync(t)
#define del_timer(t) timer_delete(t)
#endif
