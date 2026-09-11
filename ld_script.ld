OUTPUT_ARCH(arm)

gNumMusicPlayers = 4;

SECTIONS
{
    . = 0x02000000;
    EWRAM (NOLOAD) :
    ALIGN(4)
    {
        INCLUDE "sym_ewram.txt"
    }

    . = 0x03000000;
    IWRAM (NOLOAD) :
    ALIGN(4)
    {
        INCLUDE "sym_iwram.txt"
    }
    
	. = 0x08000000;
    .text :
	ALIGN(4)
	{
		src/crt0.o(.text);
        src/main.o(.text);
		asm/code.o(.text);
		src/hal_anim.o(.text);
		asm/code1.o(.text);
		src/battle_1.o(.text);
		asm/code2.o(.text);
		*libc.a:dtoa.o(.text);
		*libc.a:fflush.o(.text);
		*libc.a:findfp.o(.text);
		*libc.a:freer.o(.text);
		*libc.a:fvwrite.o(.text);
		*libc.a:fwalk.o(.text);
		*libc.a:locale.o(.text);
		*libc.a:makebuf.o(.text);
		*libc.a:mallocr.o(.text);
		*libc.a:mbtowc_r.o(.text);
		*libc.a:memchr.o(.text);
		*libc.a:memmove.o(.text);
		*libc.a:mlock.o(.text);
		*libc.a:mprec.o(.text);
		*libc.a:s_isinf.o(.text);
		*libc.a:s_isnan.o(.text);
		*libc.a:sbrkr.o(.text);
		*libc.a:stdio.o(.text);
		*libc.a:strcmp.o(.text);
		*libc.a:syscalls.o(.text);
		*libc.a:writer.o(.text);
		*libc.a:callocr.o(.text);
		*libc.a:closer.o(.text);
		*libc.a:errno.o(.text);
		*libc.a:fstatr.o(.text);
		*libc.a:libcfunc.o(.text);
		*libc.a:lseekr.o(.text);
		*libc.a:readr.o(.text);
		*libgcc.a:dp-bit.o(.text);
		*libgcc.a:fp-bit.o(.text);
		*libgcc.a:_lshrdi3.o(.text);
		*libgcc.a:_muldi3.o(.text);
		*libgcc.a:_negdi2.o(.text);
	} = 0

    .data :
	ALIGN(4)
    {
        data/data.o(.data);
        sound/sound.o(.data);
        data/data2.o(.data);
        *libc.a:dtoa.o(.rodata);
        *libc.a:impure.o(.rodata);
        *libc.a:locale.o(.rodata);
        *libc.a:mprec.o(.rodata);
        *libc.a:syscalls.o(.rodata);
        data/data_after_libc_rodata.o(.data);
        *libc.a:impure.o(.data);
        *libc.a:locale.o(.data);
        *libc.a:mallocr.o(.data);
    } = 0
    
    . = 0x8F00000;
    .mother1 :
    ALIGN(2)
    {
        data/m1.o(.data);
    }
    
    /* DWARF debug sections.
       Symbols in the DWARF debugging sections are relative to the beginning
       of the section so we begin them at 0.  */

    /* DWARF 1 */
    .debug          0 : { *(.debug) }
    .line           0 : { *(.line) }

    /* GNU DWARF 1 extensions */
    .debug_srcinfo  0 : { *(.debug_srcinfo) }
    .debug_sfnames  0 : { *(.debug_sfnames) }

    /* DWARF 1.1 and DWARF 2 */
    .debug_aranges  0 : { *(.debug_aranges) }
    .debug_pubnames 0 : { *(.debug_pubnames) }

    /* DWARF 2 */
    .debug_info     0 : { *(.debug_info .gnu.linkonce.wi.*) }
    .debug_abbrev   0 : { *(.debug_abbrev) }
    .debug_line     0 : { *(.debug_line) }
    .debug_frame    0 : { *(.debug_frame) }
    .debug_str      0 : { *(.debug_str) }
    .debug_loc      0 : { *(.debug_loc) }
    .debug_macinfo  0 : { *(.debug_macinfo) }

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}
