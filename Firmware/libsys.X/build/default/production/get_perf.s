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
	.globl	libsys_get_perf
.LFB2 = .
	.file 1 "c:/users/bocal/desktop/rainbowclock/firmware/libsys.x/get_perf.c"
	.loc 1 4 0
	.set	nomips16
	.set	nomicromips
	.ent	libsys_get_perf
	.type	libsys_get_perf, @function
libsys_get_perf:
	.frame	$fp,16,$31		# vars= 8, regs= 2/0, args= 0, gp= 0
	.mask	0x40010000,-4
	.fmask	0x00000000,0
# End mchp_output_function_prologue
	addiu	$sp,$sp,-16
.LCFI0:
	sw	$fp,12($sp)
.LCFI1:
	sw	$16,8($sp)
.LCFI2:
	move	$fp,$sp
.LCFI3:
	.loc 1 6 0
 #APP
 # 6 "get_perf.c" 1
	
    mfc0    $16, $9

 # 0 "" 2
 #NO_APP
	sw	$16,0($fp)
	.loc 1 10 0
	lw	$2,0($fp)
	.loc 1 11 0
	move	$sp,$fp
	lw	$fp,12($sp)
	lw	$16,8($sp)
	addiu	$sp,$sp,16
	j	$31
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	libsys_get_perf
.LFE2:
	.size	libsys_get_perf, .-libsys_get_perf
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
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI2-.LCFI0
	.byte	0x90
	.uleb128 0x2
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xd
	.uleb128 0x1e
	.align	2
.LEFDE0:
	.section	.text,code
.Letext0:
	.file 2 "c:/program files (x86)/microchip/xc32/v1.34/pic32mx/include/machine/int_types.h"
	.section	.debug_info,info
	.4byte	0x170
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.5.2 MPLAB XC32 Compiler v1.34\000"
	.byte	0x1
	.ascii	"get_perf.c\000"
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
	.4byte	0x80
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
	.ascii	"libsys_get_perf\000"
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.4byte	0x103
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x6e
	.uleb128 0x5
	.ascii	"perf\000"
	.byte	0x1
	.byte	0x5
	.4byte	0x103
	.byte	0x2
	.byte	0x91
	.sleb128 0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0x22
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x174
	.4byte	0x140
	.ascii	"libsys_get_perf\000"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x1d
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x174
	.4byte	0x103
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
