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
  s16 id;           // 0x42
  u8 unk44[0x15];
  u8 letter;        // 0x59
  u8 consciousness; // 0x5A
  u8 unk5B;
  u8 allyOrEnemy;   // 0x5C
  u8 npcId;         // 0x5D
  u8 row;           // 0x5E
  u8 unk5F[0x33];
  s16 enemyId;      // 0x92
} Battler;

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
// PowersOfTwo32Bit
extern const u32 gUnknown_08B1F50C[32];

#endif  // GUARD_AGB_SRAM_H
