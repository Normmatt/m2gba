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

// UnknownC2BD13
s16 sub_80E2860(void) {
    s16 total = 0;
    struct Battler *battler;
    s16 i;
    for (battler = &gUnknown_02020C70[8], i = 8; i < 32; ++battler, ++i) {
        if (battler->consciousness == 1) {
            total += sub_80DA6FC(battler->sprite);
        }
    }
    return total;
}

void sub_80E28A4(void) {
    gUnknown_02024860.unk1A = 1;
}

// BtlAct_Bash
void sub_80E28B0(void) {
    switch (gUnknown_02024860.unk1C) {
    case 0:
        if (sub_80E83FC(0)) {
            gUnknown_02024860.unk1A = 1;
            break;
        }
        gUnknown_02024860.unk1C = 1;
        // fallthrough
    case 1:
        if (sub_80E84E0()) {
            if (gUnknown_02024860.unk24 == -1) {
                gUnknown_02024860.unk1A = 1;
            }
            break;
        }
        gUnknown_02024860.unk1C = 2;
        // fallthrough
    case 2:
        if (sub_80E8E24() == 0) {
            sub_80E8E80();
            gUnknown_02024860.unk1C = 3;
        } else {
            gUnknown_02024860.unk0 |= 2;
            sub_80DB168(gUnknown_0806018C);
            gUnknown_02024860.unk1A = 1;
        }
        break;
    case 3:
        sub_80E8E80();
        if (gUnknown_02024860.unk22 == -1) {
            gUnknown_02024860.unk22 = 0;
            sub_80E8F1C();
            gUnknown_02024860.unk1A = 1;
        }
        break;
    default:
        gUnknown_02024860.unk1A = 1;
        break;
    }
}

// BtlAct_Shoot
void sub_80E2968(void) {
    switch (gUnknown_02024860.unk1C) {
    case 0:
        if (sub_80E83FC(1)) {
            gUnknown_02024860.unk1A = 1;
            break;
        }
        gUnknown_02024860.unk1C = 1;
        // fallthrough
    case 1:
        if (sub_80E8E24() == 0) {
            sub_80E8E80();
            gUnknown_02024860.unk1C = 2;
        } else {
            gUnknown_02024860.unk0 |= 2;
            sub_80DB168(gUnknown_0806018C);
            gUnknown_02024860.unk1A = 1;
        }
        break;
    case 2:
        sub_80E8E80();
        if (gUnknown_02024860.unk22 == -1) {
            gUnknown_02024860.unk22 = 0;
            sub_80E8F1C();
            gUnknown_02024860.unk1A = 1;
        }
        break;
    default:
        gUnknown_02024860.unk1A = 1;
        break;
    }
}

// BtlAct_Spy
void sub_80E29F4(void) {
    switch (gUnknown_02024860.unk1C) {
    case 0:
        gUnknown_02024860.unk0 |= 2;
        sub_80DB1FC(gUnknown_08060351, gUnknown_03005390->offense);
        gUnknown_02024860.unk1C = 1;
        break;
    case 1:
        gUnknown_02024860.unk0 |= 2;
        sub_80DB1FC(gUnknown_08060365, gUnknown_03005390->defense);
        gUnknown_02024860.unk1C = 2;
        break;
    case 2:
        if (gUnknown_03005390->fireResist == 0xFF) {
            gUnknown_02024860.unk0 |= 2;
            sub_80DB168(gUnknown_08060374);
            gUnknown_02024860.unk1C = 3;
            break;
        }
        // fallthrough
    case 3:
        if (gUnknown_03005390->freezeResist == 0xFF) {
            gUnknown_02024860.unk0 |= 2;
            sub_80DB168(gUnknown_08060386);
            gUnknown_02024860.unk1C = 4;
            break;
        }
        // fallthrough
    case 4:
        if (gUnknown_03005390->flashResist == 0xFF) {
            gUnknown_02024860.unk0 |= 2;
            sub_80DB168(gUnknown_08060397);
            gUnknown_02024860.unk1C = 5;
            break;
        }
        // fallthrough
    case 5:
        if (gUnknown_03005390->paralysisResist == 0xFF) {
            gUnknown_02024860.unk0 |= 2;
            sub_80DB168(gUnknown_080603A9);
            gUnknown_02024860.unk1C = 6;
            break;
        }
        // fallthrough
    case 6:
        if (gUnknown_03005390->hypnosisResist == 0xFF) {
            gUnknown_02024860.unk0 |= 2;
            sub_80DB168(gUnknown_080603BA);
            gUnknown_02024860.unk1C = 7;
            break;
        }
        // fallthrough
    case 7:
        if (gUnknown_03005390->brainshockResist == 0xFF) {
            gUnknown_02024860.unk0 |= 2;
            sub_80DB168(gUnknown_080603CC);
            gUnknown_02024860.unk1C = 8;
            break;
        }
        // fallthrough
    case 8:
        if (gUnknown_03005390->allyOrEnemy == 1 && sub_80EC4CC(2) && gUnknown_020248E0.itemDropped) {
            sub_80DB03C(gUnknown_020248E0.itemDropped);
            gUnknown_02024860.unk0 |= 2;
            sub_80DB168(gUnknown_080621FA);
            gUnknown_020248E0.itemDropped = 0;
        }
        // fallthrough
    default:
        gUnknown_02024860.unk1A = 1;
        break;
    }
}
