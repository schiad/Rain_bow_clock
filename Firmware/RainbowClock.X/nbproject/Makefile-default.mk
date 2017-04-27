#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/RainbowClock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/RainbowClock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=crash_clock.c toggle_lcd.c reset_clock.c pixel_hello.c say_hello.c main.c init.c conf.c menu.c clock.c bcd.c exception.c dow.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/crash_clock.o ${OBJECTDIR}/toggle_lcd.o ${OBJECTDIR}/reset_clock.o ${OBJECTDIR}/pixel_hello.o ${OBJECTDIR}/say_hello.o ${OBJECTDIR}/main.o ${OBJECTDIR}/init.o ${OBJECTDIR}/conf.o ${OBJECTDIR}/menu.o ${OBJECTDIR}/clock.o ${OBJECTDIR}/bcd.o ${OBJECTDIR}/exception.o ${OBJECTDIR}/dow.o
POSSIBLE_DEPFILES=${OBJECTDIR}/crash_clock.o.d ${OBJECTDIR}/toggle_lcd.o.d ${OBJECTDIR}/reset_clock.o.d ${OBJECTDIR}/pixel_hello.o.d ${OBJECTDIR}/say_hello.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/init.o.d ${OBJECTDIR}/conf.o.d ${OBJECTDIR}/menu.o.d ${OBJECTDIR}/clock.o.d ${OBJECTDIR}/bcd.o.d ${OBJECTDIR}/exception.o.d ${OBJECTDIR}/dow.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/crash_clock.o ${OBJECTDIR}/toggle_lcd.o ${OBJECTDIR}/reset_clock.o ${OBJECTDIR}/pixel_hello.o ${OBJECTDIR}/say_hello.o ${OBJECTDIR}/main.o ${OBJECTDIR}/init.o ${OBJECTDIR}/conf.o ${OBJECTDIR}/menu.o ${OBJECTDIR}/clock.o ${OBJECTDIR}/bcd.o ${OBJECTDIR}/exception.o ${OBJECTDIR}/dow.o

# Source Files
SOURCEFILES=crash_clock.c toggle_lcd.c reset_clock.c pixel_hello.c say_hello.c main.c init.c conf.c menu.c clock.c bcd.c exception.c dow.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/RainbowClock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX170F256D
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/crash_clock.o: crash_clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/crash_clock.o.d 
	@${RM} ${OBJECTDIR}/crash_clock.o 
	@${FIXDEPS} "${OBJECTDIR}/crash_clock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../liblcd.X" -I"../libpixel.X" -I"../libuart.X" -I"../libsys.X" -MMD -MF "${OBJECTDIR}/crash_clock.o.d" -o ${OBJECTDIR}/crash_clock.o crash_clock.c   
	
${OBJECTDIR}/toggle_lcd.o: toggle_lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/toggle_lcd.o.d 
	@${RM} ${OBJECTDIR}/toggle_lcd.o 
	@${FIXDEPS} "${OBJECTDIR}/toggle_lcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../liblcd.X" -I"../libpixel.X" -I"../libuart.X" -I"../libsys.X" -MMD -MF "${OBJECTDIR}/toggle_lcd.o.d" -o ${OBJECTDIR}/toggle_lcd.o toggle_lcd.c   
	
${OBJECTDIR}/reset_clock.o: reset_clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/reset_clock.o.d 
	@${RM} ${OBJECTDIR}/reset_clock.o 
	@${FIXDEPS} "${OBJECTDIR}/reset_clock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../liblcd.X" -I"../libpixel.X" -I"../libuart.X" -I"../libsys.X" -MMD -MF "${OBJECTDIR}/reset_clock.o.d" -o ${OBJECTDIR}/reset_clock.o reset_clock.c   
	
${OBJECTDIR}/pixel_hello.o: pixel_hello.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pixel_hello.o.d 
	@${RM} ${OBJECTDIR}/pixel_hello.o 
	@${FIXDEPS} "${OBJECTDIR}/pixel_hello.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../liblcd.X" -I"../libpixel.X" -I"../libuart.X" -I"../libsys.X" -MMD -MF "${OBJECTDIR}/pixel_hello.o.d" -o ${OBJECTDIR}/pixel_hello.o pixel_hello.c   
	
${OBJECTDIR}/say_hello.o: say_hello.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/say_hello.o.d 
	@${RM} ${OBJECTDIR}/say_hello.o 
	@${FIXDEPS} "${OBJECTDIR}/say_hello.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../liblcd.X" -I"../libpixel.X" -I"../libuart.X" -I"../libsys.X" -MMD -MF "${OBJECTDIR}/say_hello.o.d" -o ${OBJECTDIR}/say_hello.o say_hello.c   
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../liblcd.X" -I"../libpixel.X" -I"../libuart.X" -I"../libsys.X" -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c   
	
${OBJECTDIR}/init.o: init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/init.o.d 
	@${RM} ${OBJECTDIR}/init.o 
	@${FIXDEPS} "${OBJECTDIR}/init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../liblcd.X" -I"../libpixel.X" -I"../libuart.X" -I"../libsys.X" -MMD -MF "${OBJECTDIR}/init.o.d" -o ${OBJECTDIR}/init.o init.c   
	
${OBJECTDIR}/conf.o: conf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/conf.o.d 
	@${RM} ${OBJECTDIR}/conf.o 
	@${FIXDEPS} "${OBJECTDIR}/conf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../liblcd.X" -I"../libpixel.X" -I"../libuart.X" -I"../libsys.X" -MMD -MF "${OBJECTDIR}/conf.o.d" -o ${OBJECTDIR}/conf.o conf.c   
	
${OBJECTDIR}/menu.o: menu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/menu.o.d 
	@${RM} ${OBJECTDIR}/menu.o 
	@${FIXDEPS} "${OBJECTDIR}/menu.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../liblcd.X" -I"../libpixel.X" -I"../libuart.X" -I"../libsys.X" -MMD -MF "${OBJECTDIR}/menu.o.d" -o ${OBJECTDIR}/menu.o menu.c   
	
${OBJECTDIR}/clock.o: clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/clock.o.d 
	@${RM} ${OBJECTDIR}/clock.o 
	@${FIXDEPS} "${OBJECTDIR}/clock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../liblcd.X" -I"../libpixel.X" -I"../libuart.X" -I"../libsys.X" -MMD -MF "${OBJECTDIR}/clock.o.d" -o ${OBJECTDIR}/clock.o clock.c   
	
${OBJECTDIR}/bcd.o: bcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bcd.o.d 
	@${RM} ${OBJECTDIR}/bcd.o 
	@${FIXDEPS} "${OBJECTDIR}/bcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../liblcd.X" -I"../libpixel.X" -I"../libuart.X" -I"../libsys.X" -MMD -MF "${OBJECTDIR}/bcd.o.d" -o ${OBJECTDIR}/bcd.o bcd.c   
	
${OBJECTDIR}/exception.o: exception.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/exception.o.d 
	@${RM} ${OBJECTDIR}/exception.o 
	@${FIXDEPS} "${OBJECTDIR}/exception.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../liblcd.X" -I"../libpixel.X" -I"../libuart.X" -I"../libsys.X" -MMD -MF "${OBJECTDIR}/exception.o.d" -o ${OBJECTDIR}/exception.o exception.c   
	
${OBJECTDIR}/dow.o: dow.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/dow.o.d 
	@${RM} ${OBJECTDIR}/dow.o 
	@${FIXDEPS} "${OBJECTDIR}/dow.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../liblcd.X" -I"../libpixel.X" -I"../libuart.X" -I"../libsys.X" -MMD -MF "${OBJECTDIR}/dow.o.d" -o ${OBJECTDIR}/dow.o dow.c   
	
else
${OBJECTDIR}/crash_clock.o: crash_clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/crash_clock.o.d 
	@${RM} ${OBJECTDIR}/crash_clock.o 
	@${FIXDEPS} "${OBJECTDIR}/crash_clock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../liblcd.X" -I"../libpixel.X" -I"../libuart.X" -I"../libsys.X" -MMD -MF "${OBJECTDIR}/crash_clock.o.d" -o ${OBJECTDIR}/crash_clock.o crash_clock.c   
	
${OBJECTDIR}/toggle_lcd.o: toggle_lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/toggle_lcd.o.d 
	@${RM} ${OBJECTDIR}/toggle_lcd.o 
	@${FIXDEPS} "${OBJECTDIR}/toggle_lcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../liblcd.X" -I"../libpixel.X" -I"../libuart.X" -I"../libsys.X" -MMD -MF "${OBJECTDIR}/toggle_lcd.o.d" -o ${OBJECTDIR}/toggle_lcd.o toggle_lcd.c   
	
${OBJECTDIR}/reset_clock.o: reset_clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/reset_clock.o.d 
	@${RM} ${OBJECTDIR}/reset_clock.o 
	@${FIXDEPS} "${OBJECTDIR}/reset_clock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../liblcd.X" -I"../libpixel.X" -I"../libuart.X" -I"../libsys.X" -MMD -MF "${OBJECTDIR}/reset_clock.o.d" -o ${OBJECTDIR}/reset_clock.o reset_clock.c   
	
${OBJECTDIR}/pixel_hello.o: pixel_hello.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pixel_hello.o.d 
	@${RM} ${OBJECTDIR}/pixel_hello.o 
	@${FIXDEPS} "${OBJECTDIR}/pixel_hello.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../liblcd.X" -I"../libpixel.X" -I"../libuart.X" -I"../libsys.X" -MMD -MF "${OBJECTDIR}/pixel_hello.o.d" -o ${OBJECTDIR}/pixel_hello.o pixel_hello.c   
	
${OBJECTDIR}/say_hello.o: say_hello.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/say_hello.o.d 
	@${RM} ${OBJECTDIR}/say_hello.o 
	@${FIXDEPS} "${OBJECTDIR}/say_hello.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../liblcd.X" -I"../libpixel.X" -I"../libuart.X" -I"../libsys.X" -MMD -MF "${OBJECTDIR}/say_hello.o.d" -o ${OBJECTDIR}/say_hello.o say_hello.c   
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../liblcd.X" -I"../libpixel.X" -I"../libuart.X" -I"../libsys.X" -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c   
	
${OBJECTDIR}/init.o: init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/init.o.d 
	@${RM} ${OBJECTDIR}/init.o 
	@${FIXDEPS} "${OBJECTDIR}/init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../liblcd.X" -I"../libpixel.X" -I"../libuart.X" -I"../libsys.X" -MMD -MF "${OBJECTDIR}/init.o.d" -o ${OBJECTDIR}/init.o init.c   
	
${OBJECTDIR}/conf.o: conf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/conf.o.d 
	@${RM} ${OBJECTDIR}/conf.o 
	@${FIXDEPS} "${OBJECTDIR}/conf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../liblcd.X" -I"../libpixel.X" -I"../libuart.X" -I"../libsys.X" -MMD -MF "${OBJECTDIR}/conf.o.d" -o ${OBJECTDIR}/conf.o conf.c   
	
${OBJECTDIR}/menu.o: menu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/menu.o.d 
	@${RM} ${OBJECTDIR}/menu.o 
	@${FIXDEPS} "${OBJECTDIR}/menu.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../liblcd.X" -I"../libpixel.X" -I"../libuart.X" -I"../libsys.X" -MMD -MF "${OBJECTDIR}/menu.o.d" -o ${OBJECTDIR}/menu.o menu.c   
	
${OBJECTDIR}/clock.o: clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/clock.o.d 
	@${RM} ${OBJECTDIR}/clock.o 
	@${FIXDEPS} "${OBJECTDIR}/clock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../liblcd.X" -I"../libpixel.X" -I"../libuart.X" -I"../libsys.X" -MMD -MF "${OBJECTDIR}/clock.o.d" -o ${OBJECTDIR}/clock.o clock.c   
	
${OBJECTDIR}/bcd.o: bcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bcd.o.d 
	@${RM} ${OBJECTDIR}/bcd.o 
	@${FIXDEPS} "${OBJECTDIR}/bcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../liblcd.X" -I"../libpixel.X" -I"../libuart.X" -I"../libsys.X" -MMD -MF "${OBJECTDIR}/bcd.o.d" -o ${OBJECTDIR}/bcd.o bcd.c   
	
${OBJECTDIR}/exception.o: exception.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/exception.o.d 
	@${RM} ${OBJECTDIR}/exception.o 
	@${FIXDEPS} "${OBJECTDIR}/exception.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../liblcd.X" -I"../libpixel.X" -I"../libuart.X" -I"../libsys.X" -MMD -MF "${OBJECTDIR}/exception.o.d" -o ${OBJECTDIR}/exception.o exception.c   
	
${OBJECTDIR}/dow.o: dow.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/dow.o.d 
	@${RM} ${OBJECTDIR}/dow.o 
	@${FIXDEPS} "${OBJECTDIR}/dow.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../liblcd.X" -I"../libpixel.X" -I"../libuart.X" -I"../libsys.X" -MMD -MF "${OBJECTDIR}/dow.o.d" -o ${OBJECTDIR}/dow.o dow.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/RainbowClock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../liblcd.X/dist/default/debug/liblcd.X.a ../libsys.X/dist/default/debug/libsys.X.a ../libpixel.X/dist/default/debug/libpixel.X.a ../libuart.X/dist/default/debug/libuart.X.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION) -Os -mno-float -o dist/${CND_CONF}/${IMAGE_TYPE}/RainbowClock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\liblcd.X\dist\default\debug\liblcd.X.a ..\libsys.X\dist\default\debug\libsys.X.a ..\libpixel.X\dist\default\debug\libpixel.X.a ..\libuart.X\dist\default\debug\libuart.X.a       -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=4096,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/RainbowClock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../liblcd.X/dist/default/production/liblcd.X.a ../libsys.X/dist/default/production/libsys.X.a ../libpixel.X/dist/default/production/libpixel.X.a ../libuart.X/dist/default/production/libuart.X.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -Os -mno-float -o dist/${CND_CONF}/${IMAGE_TYPE}/RainbowClock.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\liblcd.X\dist\default\production\liblcd.X.a ..\libsys.X\dist\default\production\libsys.X.a ..\libpixel.X\dist\default\production\libpixel.X.a ..\libuart.X\dist\default\production\libuart.X.a      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=4096,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/RainbowClock.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:
	cd /D ../liblcd.X && ${MAKE}  -f Makefile CONF=default
	cd /D ../libsys.X && ${MAKE}  -f Makefile CONF=default
	cd /D ../libpixel.X && ${MAKE}  -f Makefile CONF=default
	cd /D ../libuart.X && ${MAKE}  -f Makefile CONF=default


# Subprojects
.clean-subprojects:
	cd /D ../liblcd.X && rm -rf "build/default" "dist/default"
	cd /D ../libsys.X && rm -rf "build/default" "dist/default"
	cd /D ../libpixel.X && rm -rf "build/default" "dist/default"
	cd /D ../libuart.X && rm -rf "build/default" "dist/default"

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
