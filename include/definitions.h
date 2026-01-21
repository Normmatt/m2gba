#ifndef DEFINITIONS_AGB_H
#define DEFINITIONS_AGB_H

#include "gba/types.h"
#include "m4a.h"

#define NUM_ELEMS(a) (sizeof(a)/sizeof 0[a])

// define a function pointer type
typedef void (*void_pointer)(void);

typedef union __attribute__((__packed__)) {
    u8 byte0;
    u8 byte1;
    u16 word;
} byteword;

typedef struct sKeyStatus
{
  u16 heldKeysRaw;
  u16 newKeysRaw;
  u16 newAndRepeatedKeys;
  u16 keyRepeatCounter;
  u16 KeyRepeatContinueDelay;
} sKeyStatus;

typedef struct sIrqHandler
{
  u32 dword0;
  u16 word4;
  u16 word6;
} sIrqHandler;

typedef struct struct_8217D48
{
  u16 tileId;
  u8 byte2;
  u8 byte3;
  u8 byte4;
  u8 byte5;
  u8 byte6;
  u8 byte7;
  u8 byte8;
  u8 byte9;
  u8 byteA;
  u8 byteB;
} struct_8217D48;

typedef struct Battler
{
  /*  0 */ u8 unk0[0x42];
  /* 42 */ s16 id;
  /* 44 */ s16 sprite;
  /* 46 */ u8 unk46[0x13];
  /* 59 */ u8 letter;
  /* 5A */ u8 consciousness;
  /* 5B */ u8 unk5B;
  /* 5C */ u8 allyOrEnemy;
  /* 5D */ u8 npcId;
  /* 5E */ u8 row;
  /* 5F */ u8 afflictions[7];
  /* 66 */ u8 unk66[2];
  /* 68 */ s16 offense;
  /* 6A */ s16 defense;
  /* 6C */ u8 unk6C[0xC];
  /* 78 */ u8 unk78;
  /* 79 */ u8 paralysisResist;
  /* 7A */ u8 freezeResist;
  /* 7B */ u8 flashResist;
  /* 7C */ u8 fireResist;
  /* 7D */ u8 brainshockResist;
  /* 7E */ u8 hypnosisResist;
  /* 7F */ u8 unk7F;
  /* 80 */ u8 unk80[0x12];
  /* 92 */ s16 enemyId;
} Battler;

typedef struct BattleAction
{
  u8 direction; // Targetting the user's own side, or the user's enemies?
  u8 target;    // How many? (none/one/random/row/all)
  u8 type;      // (nothing/physical/piercing physical/PSI/item/other)
  u8 ppCost;
  const u8 *textPointer;
  void (*battleFunc)(void);
} BattleAction;

struct EnemyData {
  /*  0 */ u8 type;
  /*  1 */ u8 unk1[3];
  /*  4 */ u8 runFlag;
  /*  5 */ u8 unk5;
  /*  6 */ u16 hp;
  /*  8 */ u16 pp;
  /*  A */ u8 unkA[2];
  /*  C */ u32 exp;
  /* 10 */ u16 money;
  /* 12 */ u16 overworldAnim;
  /* 14 */ const u8 *encounterText;
  /* 18 */ const u8 *deathText;
  /* 1C */ u8 palette;
  /* 1D */ u8 level;
  /* 1E */ u8 bgm;
  /* 1F */ u8 offense;
  /* 20 */ u8 defense;
  /* 21 */ u8 unk21;
  /* 22 */ u8 speed;
  /* 23 */ u8 guts;
  /* 24 */ u8 luck;
  /* 25 */ u8 unk25[3];
  /* 28 */ u16 actions[4];
  /* 30 */ u16 finalAction;
  /* 32 */ u16 actionArgs[4];
  /* 3A */ u16 finalActionArg;
  /* 3C */ u8 unk3C;
  /* 3D */ u8 itemDropped;
  /* 3E */ u8 unk3E;
  /* 3F */ u8 mirrorSuccess;
};

typedef struct Struct2024860
{
  /*  0 */ u32 unk0;
  /*  4 */ u8 unk4[22];
  /* 1A */ s16 unk1A;
  /* 1C */ s16 unk1C;
  /* 1E */ u8 unk1E[4];
  /* 22 */ s16 unk22;
  /* 24 */ s16 unk24;
  /* 26 */ u8 unk26[48];
  /* 56 */ s16 unk56;
  /* ??? there may be more fields */
} Struct2024860;

typedef struct Struct20248E0
{
  /*   0 */ u8 unk0[0x8F8];
  /* 8F8 */ s16 itemDropped;
  /* ???  there may be more fields */
} Struct20248E0;

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


//Functions
//main.c
//void AgbMain();
void ResetTheRam(void);
// void sub_80002F4();
// void sub_800032C();
void EnableM4A(void);
void sub_800E5B4(void);
void sub_80137A4(void);
void m2_init_character_info_defaults(void);
// GetBattleSpriteWidth
extern u32 RandomNumber(u32 range);
extern s16 sub_80DA6FC(s16 enemyId);
extern void sub_80DB03C(u8);
// DisplayInBattleText
extern void sub_80DB168(const u8 *);
// DisplayTextWait / DisplayInBattleTextWithNumber
extern void sub_80DB1FC(const u8 *, s32);
extern s16 sub_80E83FC(u16);
extern s16 sub_80E84E0(void);
extern s16 sub_80E8E24(void);
extern void sub_80E8E80(void);
extern void sub_80E8F1C(void);
// FindInventorySpace2
extern s32 sub_80EC4CC(s16);

//EWRAM
/*extern void *gUnknown_02000000;
extern struct struct_off_2001480 gUnknown_02000400;
extern u32 gUnknown_0200043C;
extern u16 gUnknown_02000440[1024];
extern u8 gUnknown_02000C40[2048];*/
// BattlersTable
extern EWRAM_DATA struct Battler gUnknown_02020C70[32];
extern EWRAM_DATA struct Struct2024860 gUnknown_02024860;
extern EWRAM_DATA struct Struct20248E0 gUnknown_020248E0;

//IWRAM
/*extern u32 gBG0HOFS;
extern u32 gBG0VOFS;
extern u32 gBG1HOFS;
extern u32 gBG1VOFS;
extern u32 gBG2HOFS;
extern u32 gBG2VOFS;
extern u32 gBG3HOFS;
extern u32 gBG3VOFS;*/
extern void (*MainCallback)(void);
extern u32 gUnknown_03002A34;
extern u32 gAllocationCount;
extern const u8 *gAnimationScriptPC;
extern struct EventScriptRunner *gUnknown_0300509C;
extern struct Struct030050A4 *gUnknown_030050A4;
// BattlerTargetFlags
extern u32 gUnknown_0300534C;
// CurrentAttacker
extern struct Battler *gUnknown_0300538C;
// CurrentTarget
extern struct Battler *gUnknown_03005390;

//Data
/*extern const u16 gUnknown_080EB808[];
extern u16 gUnknown_080ECF78[8];
extern u16 gUnknown_080ECF88[8];
extern u16 gUnknown_080ECF98[7];
extern u16 gUnknown_080ECFA6[7];*/
// TextBattle_Dodged
extern const u8 gUnknown_0806018C[];
// TextBattle_Spy_Offense
extern const u8 gUnknown_08060351[];
// TextBattle_Spy_Defense
extern const u8 gUnknown_08060365[];
// TextBattle_Spy_VulnerableToFire
extern const u8 gUnknown_08060374[];
// TextBattle_Spy_VulnerableToIce
extern const u8 gUnknown_08060386[];
// TextBattle_Spy_VulnerableToFlash
extern const u8 gUnknown_08060397[];
// TextBattle_Spy_VulnerableToParalysis
extern const u8 gUnknown_080603A9[];
// TextBattle_Spy_VulnerableToHypnosis
extern const u8 gUnknown_080603BA[];
// TextBattle_Spy_VulnerableToBrainshock
extern const u8 gUnknown_080603CC[];
// TextBattle_Spy_FoundItem
extern const u8 gUnknown_080621FA[];
extern void (*const kHALAnimationScriptFuncTable[])(void);
// EnemyConfigurationTable
extern const struct EnemyData gUnknown_08739D1C[231];
// PowersOfTwo32Bit
extern const u32 gUnknown_08B1F50C[32];
// BattleActionTable
extern const struct BattleAction gUnknown_08B204E4[318];

#endif  // GUARD_AGB_SRAM_H
