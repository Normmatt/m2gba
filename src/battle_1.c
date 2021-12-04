#include "definitions.h"

// RandLong
u8 sub_80E2374(void) {
	return RandomNumber(255);
}

// Truncate16to8
s16 sub_80E2384(u8 scale, s16 num) {
    s32 ret = scale;
    ret *= num;
    ret >>= 8;
    return ret;
}

// RandLimit
s16 sub_80E2394(s16 r4) {
	return sub_80E2384(sub_80E2374(), r4);
}

// FiftyPercentVariance
s16 sub_80E23B8(s16 r5) {
    int r4 = sub_80E2374();
    int r3 = sub_80E2374();
    s16 r2 = (r4 - 128 < 0) ? -(r4 - 128) : r4 - 128;
    s16 r1 = (r3 - 128 < 0) ? -(r3 - 128) : r3 - 128;

    if (r2 > r1) {
        r4 = r3;
        r2 = r1;
    }

    if (r4 < 128) {
        r5 -= sub_80E2384(r2, r5);
    } else if (r4 > 128) {
        r5 += sub_80E2384(r2, r5);
    }
    return r5;
}

// TwentyFivePercentVariance
s16 sub_80E2434(s16 r5) {
    int r4 = sub_80E2374();
    int r3 = sub_80E2374();
    s16 r2 = (r4 - 128 < 0) ? -(r4 - 128) : r4 - 128;
    s16 r1 = (r3 - 128 < 0) ? -(r3 - 128) : r3 - 128;

    if (r2 > r1) {
        r4 = r3;
        r2 = r1;
    }

    if (r4 < 128) {
        r5 -= sub_80E2384(r2, r5) >> 1;
    } else if (r4 > 128) {
        r5 += sub_80E2384(r2, r5) >> 1;
    }
    return r5;
}

// Success255
s16 sub_80E24B8(u8 r4) {
	if (sub_80E2374() < r4) {
        return TRUE;
    } else {
        return FALSE;
    }
}

// Success500
s16 sub_80E24D8(s16 dp02) {
    if (sub_80E2394(500) < dp02) {
        return TRUE;
    } else {
        return FALSE;
    }
}

// TargetAllies
void sub_80E24FC(void) {
    s16 i;
    struct Battler *battler;

    gUnknown_0300534C = 0;

    for (battler = &gUnknown_02020C70[0], i = 0; i < 32; ++battler, ++i) {
        if (battler->consciousness != 0 && (battler->allyOrEnemy == 0 || battler->npcId != 0)) {
            gUnknown_0300534C |= gUnknown_08B1F50C[i];
        }
    }
}

// TargetAllEnemies
void sub_80E2554(void) {
    s16 i;
    struct Battler *battler;

    gUnknown_0300534C = 0;
    for (battler = &gUnknown_02020C70[0], i = 0; i < 32; ++battler, ++i) {
        if (battler->consciousness != 0 && battler->allyOrEnemy == 1) {
            gUnknown_0300534C |= gUnknown_08B1F50C[i];
        }
    }
}

// TargetRow
void sub_80E25A4(s16 dp10) {
    s16 i;
    struct Battler *battler;

    gUnknown_0300534C = 0;
    for (battler = &gUnknown_02020C70[0], i = 0; i < 32; ++battler, ++i) {
        if (battler->consciousness) {
            switch (dp10) {
            case 0:
                if (battler->allyOrEnemy == 0) {
                    gUnknown_0300534C |= gUnknown_08B1F50C[i];
                }
                break;
            case 1:
            case 2:
                if (battler->allyOrEnemy == 1 && battler->row == dp10 - 1) {
                    gUnknown_0300534C |= gUnknown_08B1F50C[i];
                }
                break;
            }
        }
    } 
}

// TargetAll
void sub_80E2624(void) {
    s16 i;
    struct Battler *battler;

    gUnknown_0300534C = 0;

    for (battler = &gUnknown_02020C70[0], i = 0; i < 32; ++battler, ++i) {
        if (battler->consciousness) {
            gUnknown_0300534C |= gUnknown_08B1F50C[i];
        }
    }
}

// RemoveNpcTargetting
void sub_80E2670(void) {
    struct Battler *battler;
    s16 i;
    for (battler = gUnknown_02020C70, i = 0; i < 32; ++battler, ++i) {
        if (battler->consciousness && battler->npcId != 0) {
            gUnknown_0300534C &= ~gUnknown_08B1F50C[i];
        }
    }
}

// RandomTargetting
u32 sub_80E26BC(u32 validTargets) {
    s16 dp0E;
    s16 dp10;
    if (validTargets == 0) {
        return 0;
    }
    dp10 = 0;
    dp0E = (sub_80E2374() & 0x1F) + 1; // 1-32 times

    while (dp0E--) {
        do {
            if (++dp10 == 32) {
                dp10 = 0;
            }
        } while ((gUnknown_08B1F50C[dp10] & validTargets) == 0);
    }

    return gUnknown_08B1F50C[dp10];
}

// TargetBattler
void sub_80E272C(s16 dp0E) {
    gUnknown_0300534C |= gUnknown_08B1F50C[dp0E];
}

// IsCharTargetted
s32 sub_80E2748(s16 dp0E) {
    return !!(gUnknown_0300534C & gUnknown_08B1F50C[dp0E]);
}

// RemoveTarget
s32 sub_80E2770(s16 dp0E) {
    gUnknown_0300534C &= ~gUnknown_08B1F50C[dp0E];
	// This was apparently added for the GBA... why does this return something?
	return 0;
}

// RemoveDeadTargetting
void sub_80E2790(void) {
    s16 i;
    struct Battler *battler;
    for (i = 0; i < 32; ++i) {
        if (sub_80E2748(i)) {
            battler = &gUnknown_02020C70[i];
            if (battler->afflictions[0] == 1) {
                sub_80E2770(i);
            }
        }
    }
}

// CountChars
s16 sub_80E27D0(s16 side) {
    s16 count = 0;
    s16 i;
    struct Battler *battler;

    for (battler = &gUnknown_02020C70[0], i = 0; i < 32; ++battler, ++i) {
        if (!battler->consciousness) continue;
        if (battler->allyOrEnemy != side) continue;
        if (battler->npcId != 0) continue;
        if (battler->afflictions[0] == 1) continue;
        if (battler->afflictions[0] == 2) continue;
        ++count;
    }
    return count;
}

// GetBattleActionType
s16 sub_80E2828(s16 actionNum) {
    return gUnknown_08B204E4[actionNum].type;
}

// GetEnemyType
s16 sub_80E2840(s16 enemyNum) {
    return gUnknown_08739D1C[enemyNum].type;
}

// Something similar to Wait?
void sub_80E2850(s16 r0) {
    gUnknown_02024860.unk56 = r0;
}

void sub_80E28BC(void) {
}

