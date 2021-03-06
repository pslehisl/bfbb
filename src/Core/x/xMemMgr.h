#ifndef XMEMMGR_H
#define XMEMMGR_H

#include <types.h>

typedef struct xMemPool;
typedef void (*xMemPoolInitCB)(xMemPool*, void*);

struct xMemArea_tag
{
    uint32 addr;
    uint32 size;
    uint32 flags;
};

struct xMemInfo_tag
{
    xMemArea_tag system;

    // Offset: 0xC
    xMemArea_tag stack;

    // Offset: 0x18
    xMemArea_tag DRAM;

    // Offset: 0x24
    xMemArea_tag SRAM;
};

struct xMemPool
{
    void* FreeList;
    uint16 NextOffset;
    uint16 Flags;
    void* UsedList;
    xMemPoolInitCB InitCB;
    void* Buffer;
    uint16 Size;
    uint16 NumRealloc;
    uint32 Total;
};

extern uint32 gActiveHeap;

void xMemExit();
void* xMemGrowAlloc(uint32 heapID, uint32 size);
void* xMemAlloc(uint32 heapID, uint32 size, int32 align);
void* xMemPushTemp(uint32 size);
void xMemPopTemp(void* memory);
int32 xMemPushBase();
int32 xMemPopBase(int32 depth);
int32 xMemGetBase();
void xMemPoolSetup(xMemPool* pool, void* buffer, uint32 nextOffset, uint32 flags,
                   xMemPoolInitCB initCB, uint32 size, uint32 count, uint32 numRealloc);
void* xMemPoolAlloc(xMemPool* pool);
void xMemPoolFree(xMemPool* pool, void* data);

#define xMemGrowAllocSize(size) xMemGrowAlloc(gActiveHeap, size)
#define xMemAllocSize(size) xMemAlloc(gActiveHeap, size, 0)
#define xMemAllocSizeAlign(size, align) xMemAlloc(gActiveHeap, size, align)

#endif