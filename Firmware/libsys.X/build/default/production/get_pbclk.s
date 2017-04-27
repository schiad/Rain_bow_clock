	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.debug_abbrev,info
.Ldebug_abbrev0:
	.section	.debug_info,info
.Ldebug_info0:
	.section	.debug_line,info
.Ldebug_line0:
	.section	.text,code
.Ltext0:
	.align	2
	.globl	libsys_get_pbclk
.LFB2 = .
	.file 1 "c:/users/bocal/desktop/rainbowclock/firmware/libsys.x/get_pbclk.c"
	.loc 1 6 0
	.set	nomips16
	.set	nomicromips
	.ent	libsys_get_pbclk
	.type	libsys_get_pbclk, @function
libsys_get_pbclk:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI0:
	sw	$31,20($sp)
.LCFI1:
	sw	$fp,16($sp)
.LCFI2:
	move	$fp,$sp
.LCFI3:
	.loc 1 7 0
	jal	libsys_get_sysclk
	nop

	move	$4,$2
	lui	$2,%hi(DEVCFG1)
	lw	$2,%lo(DEVCFG1)($2)
	srl	$2,$2,12
	andi	$3,$2,0x3
	lui	$2,%hi(_pllodiv)
	sll	$3,$3,2
	addiu	$2,$2,%lo(_pllodiv)
	addu	$2,$3,$2
	lw	$2,0($2)
	divu	$0,$4,$2
	teq	$2,$0,7
	mfhi	$3
	mflo	$2
	.loc 1 8 0
	move	$sp,$fp
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	libsys_get_pbclk
.LFE2:
	.size	libsys_get_pbclk, .-libsys_get_pbclk
	.section	.debug_frame,info
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.byte	0x1f
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI0-.LFB2
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI2-.LCFI0
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9f
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xd
	.uleb128 0x1e
	.align	2
.LEFDE0:
	.section	.text,code
.Letext0:
	.file 2 "c:/program files (x86)/microchip/xc32/v1.34/pic32mx/include/proc/p32mx170f256d.h"
	.file 3 "c:/program files (x86)/microchip/xc32/v1.34/pic32mx/include/machine/int_types.h"
	.section	.debug_info,info
	.4byte	0x1b5
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.5.2 MPLAB XC32 Compiler v1.34\000"
	.byte	0x1
	.ascii	"get_pbclk.c\000"
	.ascii	"C:/Users/bocal/Desktop/RainbowClock/Firmware/libsys.X\000"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"unsigned int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"long unsigned int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"long int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"char\000"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii	"short unsigned int\000"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii	"short int\000"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"signed char\000"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii	"unsigned char\000"
	.uleb128 0x3
	.ascii	"__uint32_t\000"
	.byte	0x3
	.byte	0x33
	.4byte	0x81
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii	"long long int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii	"long long unsigned int\000"
	.uleb128 0x4
	.byte	0x1
	.ascii	"libsys_get_pbclk\000"
	.byte	0x1
	.byte	0x5
	.byte	0x1
	.4byte	0x104
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x6e
	.uleb128 0x5
	.ascii	"DEVCFG1\000"
	.byte	0x2
	.2byte	0x1389
	.4byte	0x177
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.4byte	0x81
	.uleb128 0x7
	.4byte	0xb2
	.4byte	0x18c
	.uleb128 0x8
	.4byte	0x91
	.byte	0x7
	.byte	0x0
	.uleb128 0x9
	.4byte	.LASF0
	.byte	0x1
	.byte	0x3
	.4byte	0x17c
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.ascii	"DEVCFG1\000"
	.byte	0x2
	.2byte	0x1389
	.4byte	0x177
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF0
	.byte	0x1
	.byte	0x3
	.4byte	0x17c
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.section	.debug_abbrev,info
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0x23
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1b9
	.4byte	0x141
	.ascii	"libsys_get_pbclk\000"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x1d
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1b9
	.4byte	0x104
	.ascii	"__uint32_t\000"
	.4byte	0x0
	.section	.debug_aranges,info
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,info
.LASF0:
	.ascii	"_pllodiv\000"
	.section	.text,code
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 Compiler v1.34"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
