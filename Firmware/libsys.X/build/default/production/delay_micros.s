	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.globl	libsys_delay_micros
.LFB2 = .
	.file 1 "c:/users/bocal/desktop/rainbowclockv3/firmware/libsys.x/delay_micros.c"
	.loc 1 4 0
	.cfi_startproc
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
	addiu	$sp,$sp,-40
.LCFI0 = .
	.cfi_def_cfa_offset 40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
.LCFI1 = .
	.cfi_def_cfa_register 30
	sw	$4,40($fp)
	.loc 1 7 0
	jal	libsys_get_perf
	nop

	sw	$2,16($fp)
	.loc 1 8 0
	jal	libsys_get_sysclk
	nop

	move	$3,$2
	li	$2,1125842944			# 0x431b0000
	ori	$2,$2,0xde83
	multu	$3,$2
	mfhi	$2
	srl	$2,$2,18
	sw	$2,24($fp)
	.loc 1 9 0
	sw	$0,20($fp)
	j	.L2
	nop

.L3:
	.loc 1 10 0
	jal	libsys_get_perf
	nop

	sw	$2,28($fp)
	.loc 1 11 0
	lw	$3,28($fp)
	lw	$2,16($fp)
	subu	$2,$3,$2
	sll	$2,$2,1
	lw	$3,20($fp)
	addu	$2,$3,$2
	sw	$2,20($fp)
	.loc 1 12 0
	lw	$2,28($fp)
	sw	$2,16($fp)
.L2:
	.loc 1 9 0
	lw	$3,24($fp)
	lw	$2,40($fp)
	mult	$3,$2
	lw	$2,20($fp)
	mflo	$3
	sltu	$2,$2,$3
	bne	$2,$0,.L3
	nop

	.loc 1 14 0
	move	$sp,$fp
.LCFI2 = .
	.cfi_def_cfa_register 29
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
	.cfi_endproc
.LFE2:
	.size	libsys_delay_micros, .-libsys_delay_micros
.Letext0:
	.file 2 "c:/program files (x86)/microchip/xc32/v1.40/pic32mx/include/machine/int_types.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x1b8
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.40\000"
	.byte	0x1
	.ascii	"delay_micros.c\000"
	.ascii	"C:/Users/bocal/Desktop/RainbowClockV3/Firmware/libsys.X\000"
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
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
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
	.4byte	0x86
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
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x5
	.ascii	"us\000"
	.byte	0x1
	.byte	0x3
	.4byte	0x115
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x6
	.ascii	"freq\000"
	.byte	0x1
	.byte	0x5
	.4byte	0x115
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x6
	.ascii	"old\000"
	.byte	0x1
	.byte	0x5
	.4byte	0x115
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x6
	.ascii	"new\000"
	.byte	0x1
	.byte	0x5
	.4byte	0x115
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x6
	.ascii	"i\000"
	.byte	0x1
	.byte	0x5
	.4byte	0x115
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.byte	0
	.section	.debug_abbrev,info
.Ldebug_abbrev0:
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
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
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
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,info
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,info
.Ldebug_line0:
	.section	.debug_str,info
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v1.40"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
