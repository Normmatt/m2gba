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
  u8 unknown[0x42];
  s16 id;            // 0x42
  u8 unk44[0x15];
  u8 letter;         // 0x59
  u8 consciousness;  // 0x5A
  u8 unk5B;
  u8 allyOrEnemy;    // 0x5C
  u8 npcId;          // 0x5D
  u8 row;            // 0x5E
  u8 afflictions[7]; // 0x5F
  u8 unk68[0x2C];
  s16 enemyId;       // 0x92
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
  /*  0 */ u8 unk0[86];
  /* 56 */ s16 unk56;
  /* ??? there may be more fields */
} Struct2024860;

//Functions
//main.c
/*void AgbMain();
void sub_80002F4();
void sub_800032C();*/
extern u32 RandomNumber(u32 range);

//EWRAM
/*extern void *gUnknown_02000000;
extern struct struct_off_2001480 gUnknown_02000400;
extern u32 gUnknown_0200043C;
extern u16 gUnknown_02000440[1024];
extern u8 gUnknown_02000C40[2048];*/
// BattlersTable
extern EWRAM_DATA struct Battler gUnknown_02020C70[32];
extern EWRAM_DATA struct Struct2024860 gUnknown_02024860;

//IWRAM
/*extern u32 gBG0HOFS;
extern u32 gBG0VOFS;
extern u32 gBG1HOFS;
extern u32 gBG1VOFS;
extern u32 gBG2HOFS;
extern u32 gBG2VOFS;
extern u32 gBG3HOFS;
extern u32 gBG3VOFS;*/
// BattlerTargetFlags
extern u32 gUnknown_0300534C;

//Data
/*extern const u16 gUnknown_080EB808[];
extern u16 gUnknown_080ECF78[8];
extern u16 gUnknown_080ECF88[8];
extern u16 gUnknown_080ECF98[7];
extern u16 gUnknown_080ECFA6[7];*/
// EnemyConfigurationTable
extern const struct EnemyData gUnknown_08739D1C[231];
// PowersOfTwo32Bit
extern const u32 gUnknown_08B1F50C[32];
// BattleActionTable
extern const struct BattleAction gUnknown_08B204E4[318];

#endif  // GUARD_AGB_SRAM_H
