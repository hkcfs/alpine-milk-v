/* Vendored ION declarations. The driver keeps one stale
 * #include "ion.h" and reads buffer->vaddr / buffer->paddr off
 * dma_buf->priv, which assumes the VENDOR ION exporter layout.
 * This header reproduces vendor linux_5.10
 * drivers/staging/android/ion/ion.h's struct ion_buffer byte-for-byte
 * (CONFIG_ION_CVITEK variant, unconditional here) so the offsets match.
 * Runtime still needs an ION-compatible exporter (cviruntime path);
 * mainline has no ION — HW-unverified, see packages/BLOCKED.md + SOURCE. */
#ifndef _TPU_PKG_ION_H
#define _TPU_PKG_ION_H

#include <linux/types.h>
#include <linux/rbtree.h>
#include <linux/mutex.h>
#include <linux/scatterlist.h>

struct ion_device;
struct ion_heap;

struct ion_buffer {
	union {
		struct rb_node node;
		struct list_head list;
	};
	struct ion_device *dev;
	struct ion_heap *heap;
	unsigned long flags;
	unsigned long private_flags;
	size_t size;
	void *priv_virt;
	struct mutex lock;
	int kmap_cnt;
	void *vaddr;
	struct sg_table *sg_table;
	struct list_head attachments;
	phys_addr_t paddr;
	const char *name;
};
#endif
