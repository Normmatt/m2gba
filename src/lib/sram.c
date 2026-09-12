#include "gba/gba.h"

const char kLibraryIdentifier[] = "SRAM_V113";

// TODO: the table of four pointers to the SRAM function

// SRAM can only be accessed with an 8-bit bus, so use `volatile` as a blunt
// instrument to encourage the compiler to emit 8-bit instructions, regardless
// of optimization settings.
typedef volatile u8 SRAM_BYTE;

void ReadSram_Core(const SRAM_BYTE *sram, u8 *buffer, size_t size) {
	while (--size != SIZE_MAX) {
		*buffer++ = *sram++;
	}
}

void ReadSram(const SRAM_BYTE *src, u8 *dest, size_t size) {
	u16 readSramCode[64];
	const u16 *src_;
	u16 *dest_;
	u16 size_;
	void (*readSramRamVersion)(const SRAM_BYTE *, u8*, size_t);

	REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;
	src_ = (u16*)ReadSram_Core;
    src_ = (u16*)((uintptr_t)src_ & ~1);
	dest_ = readSramCode;
	size_ = ((uintptr_t)ReadSram - (uintptr_t)ReadSram_Core) / 2;
	while (size_) {
		*dest_++ = *src_++;
		--size_;
	}

	readSramRamVersion = (void(*)(const SRAM_BYTE *, u8*, size_t))((uintptr_t)readSramCode + 1);
	readSramRamVersion(src, dest, size);
}

void WriteSram(const u8 *src, SRAM_BYTE *dest, size_t size) {
	REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;
	while (--size != SIZE_MAX) {
		*dest++ = *src++;
	}
}

uintptr_t VerifySram_Core(const u8 *arg0, const SRAM_BYTE *arg1, size_t size) {
	while (--size != -1) {
		if (*arg1++ != *arg0++) {
			return (uintptr_t)(arg1 - 1);
		}
	}
	return 0;
}

uintptr_t VerifySram(const u8 *arg0, const SRAM_BYTE *arg1, size_t size) {
	u16 verifySramCode[0x60];
	const u16 *src_;
	u16 *dest_;
	u16 size_;
	uintptr_t (*verifySramRamVersion)(const u8 *, const SRAM_BYTE *, size_t);

	REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;
	src_ = (u16 *)VerifySram_Core;
	src_ = (u16 *)((uintptr_t)src_ & ~1);
	dest_ = verifySramCode;
	size_ = ((uintptr_t)VerifySram - (uintptr_t)VerifySram_Core) / 2;
	while (size_) {
		*dest_++ = *src_++;
		--size_;
	}

	verifySramRamVersion = (uintptr_t (*)(const u8 *, const SRAM_BYTE *, size_t))((uintptr_t)verifySramCode + 1);
	return verifySramRamVersion(arg0, arg1, size);
}

uintptr_t WriteSramEx(const u8 *src, SRAM_BYTE *dest, size_t size) {
	u8 i;
	uintptr_t result;

	for (i = 0; i < 3; ++i) {
		WriteSram(src, dest, size);
		result = VerifySram(src, dest, size);
		if (result == 0) {
			break;
		}
	}
	return result;
}
