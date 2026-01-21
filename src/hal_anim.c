#include "definitions.h"

struct EventScriptRunner {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4[4];
    u16 unk8;
    u16 unkA;
    const u8 *unkC;
    const u8 *unk10[4];
    const u8 *unk20[4];
};

struct Struct030050A4 {
    u8 unk0[0x60];
    u8 unk60;
    u8 unk61;
    u8 unk62[0xE];
    s16 unk70[8];
    u8 unk80[0x28];
    void (*unkA8)();
    u8 unkAC[8];
    struct EventScriptRunner unkB4[5];
};

extern const u8 *gAnimationScriptPC;
extern struct EventScriptRunner *gUnknown_0300509C;
extern struct Struct030050A4 *gUnknown_030050A4;

extern void (*const kHALAnimationScriptFuncTable[])(void);

void m2_run_movement_script(struct Struct030050A4 *arg0) {
    s32 i;
    gUnknown_030050A4 = arg0;
    gUnknown_0300509C = &arg0->unkB4[0];
    for (i = 0; i < 5; ++i, ++gUnknown_0300509C) {
        if (gUnknown_0300509C->unk0 == 0) {
            continue;
        }
        if (gUnknown_0300509C->unk8 == 0xFFFF) {
            continue;
        }
        if (gUnknown_0300509C->unk8 != 0) {
            --gUnknown_0300509C->unk8;
            continue;
        }

        gAnimationScriptPC = gUnknown_0300509C->unkC;
        while (1) {
            u8 funcNum = *gAnimationScriptPC;
            ++gAnimationScriptPC;
            if (!kHALAnimationScriptFuncTable[funcNum]) {
                goto badFuncPtr;
            }
            kHALAnimationScriptFuncTable[funcNum]();
            if (gUnknown_0300509C->unk8 != 0) {
                goto scriptDone;
            }
            if (gUnknown_030050A4->unk61 == 0) {
                return;
            }
        }
    badFuncPtr:
        while (1) {}
    scriptDone:
        if (gUnknown_030050A4->unk61 == 0) {
            return;
        }
        gUnknown_0300509C->unkC = gAnimationScriptPC;

        if (gUnknown_0300509C->unk8 != 0xFFFF) {
            --gUnknown_0300509C->unk8;
        }
    }
}

void HALAnimCC_00(void) {
    gUnknown_030050A4->unk61 = 0;
}

void HALAnimCC_01(void) {
    gUnknown_0300509C->unk4[gUnknown_0300509C->unk2] = *gAnimationScriptPC;
    ++gAnimationScriptPC;
    gUnknown_0300509C->unk10[gUnknown_0300509C->unk2] = gAnimationScriptPC;
    ++gUnknown_0300509C->unk2;
}

void HALAnimCC_02(void) {
    --gUnknown_0300509C->unk4[gUnknown_0300509C->unk2 - 1];
    if (gUnknown_0300509C->unk4[gUnknown_0300509C->unk2 - 1]) {
        gAnimationScriptPC = gUnknown_0300509C->unk10[gUnknown_0300509C->unk2 - 1];
    } else {
        --gUnknown_0300509C->unk2;
    }
}

void HALAnimCC_06(void) {
    gUnknown_0300509C->unk8 = *gAnimationScriptPC;
    ++gAnimationScriptPC;
}

void HALAnimCC_07(void) {
    struct EventScriptRunner *task = gUnknown_030050A4->unkB4;
    s32 i = 0;
    while (i < 5 && task->unk0 != 0) {
        ++i;
        ++task;
    }

    if (!(i < 5)) {
        while (1) {}
    }

    task->unk0 = 1;
    task->unk1 = 0;
    task->unk8 = 0;
    task->unkA = 0;
    task->unkC = (const u8 *)(gAnimationScriptPC[0]
                    | (gAnimationScriptPC[1] << 8)
                    | (gAnimationScriptPC[2] << 16)
                    | ((uintptr_t)gAnimationScriptPC[3] << 24));
    gAnimationScriptPC += 4;
}

void HALAnimCC_08(void) {
    gUnknown_030050A4->unkA8 = (void (*)())(gAnimationScriptPC[0]
                                        | (gAnimationScriptPC[1] << 8)
                                        | (gAnimationScriptPC[2] << 16)
                                        | ((uintptr_t)gAnimationScriptPC[3] << 24));
    gAnimationScriptPC += 4;
}

void HALAnimCC_09(void) {
    gUnknown_0300509C->unk8 = -1;
}

void HALAnimCC_0A(void) {
    if (gUnknown_0300509C->unkA == 0) {
        gAnimationScriptPC = (const u8 *)(gAnimationScriptPC[0]
                    | (gAnimationScriptPC[1] << 8)
                    | (gAnimationScriptPC[2] << 16)
                    | ((uintptr_t)gAnimationScriptPC[3] << 24));
    } else {
        gAnimationScriptPC += 4;
    }
}

void HALAnimCC_0B(void) {
    if (gUnknown_0300509C->unkA != 0) {
        gAnimationScriptPC = (const u8 *)(gAnimationScriptPC[0]
                                | (gAnimationScriptPC[1] << 8)
                                | (gAnimationScriptPC[2] << 16)
                                | ((uintptr_t)gAnimationScriptPC[3] << 24));
    } else {
        gAnimationScriptPC += 4;
    }
}

void HALAnimCC_0C(void) {
    gUnknown_0300509C->unk0 = 0;
    gUnknown_0300509C->unk8 = 1;
}

void HALAnimCC_0E(void) {
    u8 varNum = *gAnimationScriptPC;
    ++gAnimationScriptPC;
    gUnknown_030050A4->unk70[varNum] = gAnimationScriptPC[0]
                                    | (gAnimationScriptPC[1] << 8);
    gAnimationScriptPC += 2;
}

void HALAnimCC_0F(void) {
    gUnknown_030050A4->unkA8 = (void (*)())0;
}

void HALAnimCC_10(void) {
    uintptr_t temp;
    const u8 *addr;
    s32 option = gUnknown_0300509C->unkA;
    s32 tableLength = *gAnimationScriptPC;
    ++gAnimationScriptPC;
    if (option >= tableLength) {
        gAnimationScriptPC += tableLength * sizeof(uintptr_t);
    } else {
        temp = option * sizeof(uintptr_t);
        temp += (uintptr_t)gAnimationScriptPC;
        addr = (const u8 *)temp;
        gAnimationScriptPC = (const u8 *)(addr[0]
                                    | (addr[1] << 8)
                                    | (addr[2] << 16)
                                    | ((uintptr_t)addr[3] << 24));
    }
}

void HALAnimCC_11(void) {
    u8 tableSize;
    uintptr_t temp;
    const u8 *p;
    const u8 *target;

    tableSize = *gAnimationScriptPC;
    ++gAnimationScriptPC;
    temp = gUnknown_0300509C->unkA * sizeof(uintptr_t);
    temp += (uintptr_t)gAnimationScriptPC;
    p = (const u8 *)temp;
    target = (const u8 *)(p[0] | (p[1] << 8) | (p[2] << 16) | ((uintptr_t)p[3] << 24));

    gUnknown_0300509C->unk20[gUnknown_0300509C->unk1] = gAnimationScriptPC + tableSize * sizeof(uintptr_t);
    ++gUnknown_0300509C->unk1;
    gAnimationScriptPC = target;
}
void HALAnimCC_13(void) {
    struct EventScriptRunner *task = &gUnknown_030050A4->unkB4[0];
    s32 i;
    for (i = 0; i < 5; ++i, ++task) {
        if (task->unk0 != 0 && task != gUnknown_0300509C) {
            task->unk0 = 0;
            break;
        }
    }
}

void HALAnimCC_14(void) {
    u8 varNum;
    u8 op;
    s16 operand;

    varNum = *gAnimationScriptPC;
    ++gAnimationScriptPC;

    op = *gAnimationScriptPC;
    ++gAnimationScriptPC;

    operand = (s16)(gAnimationScriptPC[0] | (gAnimationScriptPC[1] << 8));
    gAnimationScriptPC += 2;

    switch (op) {
    case 0:
        gUnknown_030050A4->unk70[varNum] &= operand;
        break;
    case 1:
        gUnknown_030050A4->unk70[varNum] |= operand;
        break;
    case 2:
        gUnknown_030050A4->unk70[varNum] += operand;
        break;
    case 3:
        gUnknown_030050A4->unk70[varNum] ^= operand;
        break;
    }
}

void HALAnimCC_15(void) {
    u16 *ptr;
    u16 val;

    ptr = (u16 *)(gAnimationScriptPC[0]
            | (gAnimationScriptPC[1] << 8)
            | (gAnimationScriptPC[2] << 16)
            | ((uintptr_t)gAnimationScriptPC[3] << 24));
    gAnimationScriptPC += 4;

    val = gAnimationScriptPC[0] | (gAnimationScriptPC[1] << 8);
    gAnimationScriptPC += 2;

    *ptr = val;
}

void HALAnimCC_16(void) {
    if (gUnknown_0300509C->unkA != 0) {
        gAnimationScriptPC += 4;
    } else {
        const u8 *addr = (const u8 *)(gAnimationScriptPC[0]
                            | (gAnimationScriptPC[1] << 8)
                            | (gAnimationScriptPC[2] << 16)
                            | ((uintptr_t)gAnimationScriptPC[3] << 24));
        gAnimationScriptPC = addr;
        --gUnknown_0300509C->unk2;
    }
}

void HALAnimCC_17(void) {
    if (gUnknown_0300509C->unkA != 0) {
        gAnimationScriptPC += 4;
    } else {
        const u8 *addr = (const u8 *)(gAnimationScriptPC[0]
                            | (gAnimationScriptPC[1] << 8)
                            | (gAnimationScriptPC[2] << 16)
                            | ((uintptr_t)gAnimationScriptPC[3] << 24));
        gAnimationScriptPC = addr + 4;
        --gUnknown_0300509C->unk2;
    }
}

void HALAnimCC_19(void) {
    const u8 *addr = (const u8 *)(gAnimationScriptPC[0]
                        | (gAnimationScriptPC[1] << 8)
                        | (gAnimationScriptPC[2] << 16)
                        | ((uintptr_t)gAnimationScriptPC[3] << 24));
    gAnimationScriptPC = addr;
}

void HALAnimCC_1A(void) {
    const u8 *addr = (const u8 *)(gAnimationScriptPC[0]
                        | (gAnimationScriptPC[1] << 8)
                        | (gAnimationScriptPC[2] << 16)
                        | ((uintptr_t)gAnimationScriptPC[3] << 24));
    gUnknown_0300509C->unk20[gUnknown_0300509C->unk1] = gAnimationScriptPC + 4;
    ++gUnknown_0300509C->unk1;
    gAnimationScriptPC = addr;
}

void HALAnimCC_1B(void) {
    --gUnknown_0300509C->unk1;
    gAnimationScriptPC = gUnknown_0300509C->unk20[gUnknown_0300509C->unk1];
}
