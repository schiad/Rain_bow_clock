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
	.globl	libsys_delay_micros
.LFB2 = .
	.file 1 "c:/users/bocal/desktop/rainbowclock/firmware/libsys.x/delay_micros.c"
	.loc 1 4 0
	.set	nomips16
	.set	nomicromips
	.ent	libsys_delay_micros
	.type	libsys_delay_micros, @function
libsys_delay_micros:
	.frame	$fp,40,$31		# vars= 16, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL0 = .
	addiu	$sp,$sp,-40
.LCFI0:
	sw	$31,36($sp)
.LCFI1:
	sw	$fp,32($sp)
.LCFI2:
	move	$fp,$sp
.LCFI3:
	sw	$4,40($fp)
	.loc 1 7 0
	jal	libsys_get_perf
	nop

.LVL1 = .
	sw	$2,16($fp)
.LVL2 = .
	.loc 1 8 0
	jal	libsys_get_sysclk
	nop

.LVL3 = .
	move	$3,$2
	li	$2,983040			# 0xf0000
	ori	$2,$2,0x4240
	divu	$0,$3,$2
	teq	$2,$0,7
	mfhi	$3
	mflo	$2
	sw	$2,24($fp)
.LVL4 = .
	.loc 1 9 0
	sw	$0,20($fp)
.LVL5 = .
	j	.L2
	nop

.LVL6 = .
.L3:
	.loc 1 10 0
	jal	libsys_get_perf
	nop

	sw	$2,28($fp)
.LVL7 = .
	.loc 1 11 0
	lw	$3,28($fp)
	lw	$2,16($fp)
.LVL8 = .
	subu	$2,$3,$2
	sll	$2,$2,1
	lw	$3,20($fp)
.LVL9 = .
	addu	$2,$3,$2
	sw	$2,20($fp)
.LVL10 = .
	.loc 1 12 0
	lw	$2,28($fp)
.LVL11 = .
	sw	$2,16($fp)
.LVL12 = .
.L2:
	.loc 1 9 0
	lw	$3,24($fp)
	lw	$2,40($fp)
	mul	$3,$3,$2
	lw	$2,20($fp)
	sltu	$2,$2,$3
	bne	$2,$0,.L3
	nop

	.loc 1 14 0
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	libsys_delay_micros
.LFE2:
	.size	libsys_delay_micros, .-libsys_delay_micros
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
	.uleb128 0x28
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
	.section	.debug_loc,info
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 40
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x41
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -16
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3-1-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -24
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -24
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -12
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -20
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -20
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:/program files (x86)/microchip/xc32/v1.34/pic32mx/include/machine/int_types.h"
	.section	.debug_info,info
	.4byte	0x1b0
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.5.2 MPLAB XC32 Compiler v1.34\000"
	.byte	0x1
	.ascii	"delay_micros.c\000"
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
	.byte	0x2
	.byte	0x33
	.4byte	0x84
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
	.ascii	"libsys_delay_micros\000"
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST0
	.uleb128 0x5
	.ascii	"us\000"
	.byte	0x1
	.byte	0x3
	.4byte	0x107
	.4byte	.LLST1
	.uleb128 0x6
	.ascii	"freq\000"
	.byte	0x1
	.byte	0x5
	.4byte	0x107
	.4byte	.LLST2
	.uleb128 0x6
	.ascii	"old\000"
	.byte	0x1
	.byte	0x5
	.4byte	0x107
	.4byte	.LLST3
	.uleb128 0x6
	.ascii	"new\000"
	.byte	0x1
	.byte	0x5
	.4byte	0x107
	.4byte	.LLST4
	.uleb128 0x6
	.ascii	"i\000"
	.byte	0x1
	.byte	0x5
	.4byte	0x107
	.4byte	.LLST5
	.byte	0x0
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
	.byte	0x1
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0x26
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1b4
	.4byte	0x144
	.ascii	"libsys_delay_micros\000"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x1d
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1b4
	.4byte	0x107
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
	.section	.text,code
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 Compiler v1.34"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
