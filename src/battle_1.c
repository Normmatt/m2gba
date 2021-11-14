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
