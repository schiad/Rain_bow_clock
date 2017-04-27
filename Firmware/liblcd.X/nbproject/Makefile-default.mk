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
OUTPUT_SUFFIX=a
DEBUGGABLE_SUFFIX=
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/liblcd.X.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=a
DEBUGGABLE_SUFFIX=
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/liblcd.X.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=autoscroll.c blink.c command.c display.c light.c clear.c cursor.c home.c send.c move.c pulse.c new.c delete.c puts.c putn.c putc.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/autoscroll.o ${OBJECTDIR}/blink.o ${OBJECTDIR}/command.o ${OBJECTDIR}/display.o ${OBJECTDIR}/light.o ${OBJECTDIR}/clear.o ${OBJECTDIR}/cursor.o ${OBJECTDIR}/home.o ${OBJECTDIR}/send.o ${OBJECTDIR}/move.o ${OBJECTDIR}/pulse.o ${OBJECTDIR}/new.o ${OBJECTDIR}/delete.o ${OBJECTDIR}/puts.o ${OBJECTDIR}/putn.o ${OBJECTDIR}/putc.o
POSSIBLE_DEPFILES=${OBJECTDIR}/autoscroll.o.d ${OBJECTDIR}/blink.o.d ${OBJECTDIR}/command.o.d ${OBJECTDIR}/display.o.d ${OBJECTDIR}/light.o.d ${OBJECTDIR}/clear.o.d ${OBJECTDIR}/cursor.o.d ${OBJECTDIR}/home.o.d ${OBJECTDIR}/send.o.d ${OBJECTDIR}/move.o.d ${OBJECTDIR}/pulse.o.d ${OBJECTDIR}/new.o.d ${OBJECTDIR}/delete.o.d ${OBJECTDIR}/puts.o.d ${OBJECTDIR}/putn.o.d ${OBJECTDIR}/putc.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/autoscroll.o ${OBJECTDIR}/blink.o ${OBJECTDIR}/command.o ${OBJECTDIR}/display.o ${OBJECTDIR}/light.o ${OBJECTDIR}/clear.o ${OBJECTDIR}/cursor.o ${OBJECTDIR}/home.o ${OBJECTDIR}/send.o ${OBJECTDIR}/move.o ${OBJECTDIR}/pulse.o ${OBJECTDIR}/new.o ${OBJECTDIR}/delete.o ${OBJECTDIR}/puts.o ${OBJECTDIR}/putn.o ${OBJECTDIR}/putc.o

# Source Files
SOURCEFILES=autoscroll.c blink.c command.c display.c light.c clear.c cursor.c home.c send.c move.c pulse.c new.c delete.c puts.c putn.c putc.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/liblcd.X.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/autoscroll.o: autoscroll.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/autoscroll.o.d 
	@${RM} ${OBJECTDIR}/autoscroll.o 
	@${FIXDEPS} "${OBJECTDIR}/autoscroll.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/autoscroll.o.d" -o ${OBJECTDIR}/autoscroll.o autoscroll.c   
	
${OBJECTDIR}/blink.o: blink.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/blink.o.d 
	@${RM} ${OBJECTDIR}/blink.o 
	@${FIXDEPS} "${OBJECTDIR}/blink.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/blink.o.d" -o ${OBJECTDIR}/blink.o blink.c   
	
${OBJECTDIR}/command.o: command.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/command.o.d 
	@${RM} ${OBJECTDIR}/command.o 
	@${FIXDEPS} "${OBJECTDIR}/command.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/command.o.d" -o ${OBJECTDIR}/command.o command.c   
	
${OBJECTDIR}/display.o: display.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/display.o.d 
	@${RM} ${OBJECTDIR}/display.o 
	@${FIXDEPS} "${OBJECTDIR}/display.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/display.o.d" -o ${OBJECTDIR}/display.o display.c   
	
${OBJECTDIR}/light.o: light.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/light.o.d 
	@${RM} ${OBJECTDIR}/light.o 
	@${FIXDEPS} "${OBJECTDIR}/light.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/light.o.d" -o ${OBJECTDIR}/light.o light.c   
	
${OBJECTDIR}/clear.o: clear.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/clear.o.d 
	@${RM} ${OBJECTDIR}/clear.o 
	@${FIXDEPS} "${OBJECTDIR}/clear.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/clear.o.d" -o ${OBJECTDIR}/clear.o clear.c   
	
${OBJECTDIR}/cursor.o: cursor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/cursor.o.d 
	@${RM} ${OBJECTDIR}/cursor.o 
	@${FIXDEPS} "${OBJECTDIR}/cursor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/cursor.o.d" -o ${OBJECTDIR}/cursor.o cursor.c   
	
${OBJECTDIR}/home.o: home.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/home.o.d 
	@${RM} ${OBJECTDIR}/home.o 
	@${FIXDEPS} "${OBJECTDIR}/home.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/home.o.d" -o ${OBJECTDIR}/home.o home.c   
	
${OBJECTDIR}/send.o: send.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/send.o.d 
	@${RM} ${OBJECTDIR}/send.o 
	@${FIXDEPS} "${OBJECTDIR}/send.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/send.o.d" -o ${OBJECTDIR}/send.o send.c   
	
${OBJECTDIR}/move.o: move.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/move.o.d 
	@${RM} ${OBJECTDIR}/move.o 
	@${FIXDEPS} "${OBJECTDIR}/move.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/move.o.d" -o ${OBJECTDIR}/move.o move.c   
	
${OBJECTDIR}/pulse.o: pulse.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pulse.o.d 
	@${RM} ${OBJECTDIR}/pulse.o 
	@${FIXDEPS} "${OBJECTDIR}/pulse.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/pulse.o.d" -o ${OBJECTDIR}/pulse.o pulse.c   
	
${OBJECTDIR}/new.o: new.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/new.o.d 
	@${RM} ${OBJECTDIR}/new.o 
	@${FIXDEPS} "${OBJECTDIR}/new.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/new.o.d" -o ${OBJECTDIR}/new.o new.c   
	
${OBJECTDIR}/delete.o: delete.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/delete.o.d 
	@${RM} ${OBJECTDIR}/delete.o 
	@${FIXDEPS} "${OBJECTDIR}/delete.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/delete.o.d" -o ${OBJECTDIR}/delete.o delete.c   
	
${OBJECTDIR}/puts.o: puts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/puts.o.d 
	@${RM} ${OBJECTDIR}/puts.o 
	@${FIXDEPS} "${OBJECTDIR}/puts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/puts.o.d" -o ${OBJECTDIR}/puts.o puts.c   
	
${OBJECTDIR}/putn.o: putn.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/putn.o.d 
	@${RM} ${OBJECTDIR}/putn.o 
	@${FIXDEPS} "${OBJECTDIR}/putn.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/putn.o.d" -o ${OBJECTDIR}/putn.o putn.c   
	
${OBJECTDIR}/putc.o: putc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/putc.o.d 
	@${RM} ${OBJECTDIR}/putc.o 
	@${FIXDEPS} "${OBJECTDIR}/putc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/putc.o.d" -o ${OBJECTDIR}/putc.o putc.c   
	
else
${OBJECTDIR}/autoscroll.o: autoscroll.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/autoscroll.o.d 
	@${RM} ${OBJECTDIR}/autoscroll.o 
	@${FIXDEPS} "${OBJECTDIR}/autoscroll.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/autoscroll.o.d" -o ${OBJECTDIR}/autoscroll.o autoscroll.c   
	
${OBJECTDIR}/blink.o: blink.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/blink.o.d 
	@${RM} ${OBJECTDIR}/blink.o 
	@${FIXDEPS} "${OBJECTDIR}/blink.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/blink.o.d" -o ${OBJECTDIR}/blink.o blink.c   
	
${OBJECTDIR}/command.o: command.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/command.o.d 
	@${RM} ${OBJECTDIR}/command.o 
	@${FIXDEPS} "${OBJECTDIR}/command.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/command.o.d" -o ${OBJECTDIR}/command.o command.c   
	
${OBJECTDIR}/display.o: display.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/display.o.d 
	@${RM} ${OBJECTDIR}/display.o 
	@${FIXDEPS} "${OBJECTDIR}/display.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/display.o.d" -o ${OBJECTDIR}/display.o display.c   
	
${OBJECTDIR}/light.o: light.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/light.o.d 
	@${RM} ${OBJECTDIR}/light.o 
	@${FIXDEPS} "${OBJECTDIR}/light.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/light.o.d" -o ${OBJECTDIR}/light.o light.c   
	
${OBJECTDIR}/clear.o: clear.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/clear.o.d 
	@${RM} ${OBJECTDIR}/clear.o 
	@${FIXDEPS} "${OBJECTDIR}/clear.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/clear.o.d" -o ${OBJECTDIR}/clear.o clear.c   
	
${OBJECTDIR}/cursor.o: cursor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/cursor.o.d 
	@${RM} ${OBJECTDIR}/cursor.o 
	@${FIXDEPS} "${OBJECTDIR}/cursor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/cursor.o.d" -o ${OBJECTDIR}/cursor.o cursor.c   
	
${OBJECTDIR}/home.o: home.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/home.o.d 
	@${RM} ${OBJECTDIR}/home.o 
	@${FIXDEPS} "${OBJECTDIR}/home.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/home.o.d" -o ${OBJECTDIR}/home.o home.c   
	
${OBJECTDIR}/send.o: send.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/send.o.d 
	@${RM} ${OBJECTDIR}/send.o 
	@${FIXDEPS} "${OBJECTDIR}/send.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/send.o.d" -o ${OBJECTDIR}/send.o send.c   
	
${OBJECTDIR}/move.o: move.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/move.o.d 
	@${RM} ${OBJECTDIR}/move.o 
	@${FIXDEPS} "${OBJECTDIR}/move.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/move.o.d" -o ${OBJECTDIR}/move.o move.c   
	
${OBJECTDIR}/pulse.o: pulse.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pulse.o.d 
	@${RM} ${OBJECTDIR}/pulse.o 
	@${FIXDEPS} "${OBJECTDIR}/pulse.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/pulse.o.d" -o ${OBJECTDIR}/pulse.o pulse.c   
	
${OBJECTDIR}/new.o: new.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/new.o.d 
	@${RM} ${OBJECTDIR}/new.o 
	@${FIXDEPS} "${OBJECTDIR}/new.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/new.o.d" -o ${OBJECTDIR}/new.o new.c   
	
${OBJECTDIR}/delete.o: delete.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/delete.o.d 
	@${RM} ${OBJECTDIR}/delete.o 
	@${FIXDEPS} "${OBJECTDIR}/delete.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/delete.o.d" -o ${OBJECTDIR}/delete.o delete.c   
	
${OBJECTDIR}/puts.o: puts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/puts.o.d 
	@${RM} ${OBJECTDIR}/puts.o 
	@${FIXDEPS} "${OBJECTDIR}/puts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/puts.o.d" -o ${OBJECTDIR}/puts.o puts.c   
	
${OBJECTDIR}/putn.o: putn.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/putn.o.d 
	@${RM} ${OBJECTDIR}/putn.o 
	@${FIXDEPS} "${OBJECTDIR}/putn.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/putn.o.d" -o ${OBJECTDIR}/putn.o putn.c   
	
${OBJECTDIR}/putc.o: putc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/putc.o.d 
	@${RM} ${OBJECTDIR}/putc.o 
	@${FIXDEPS} "${OBJECTDIR}/putc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/putc.o.d" -o ${OBJECTDIR}/putc.o putc.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: archive
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/liblcd.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_AR} $(MP_EXTRA_AR_PRE) r dist/${CND_CONF}/${IMAGE_TYPE}/liblcd.X.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    
else
dist/${CND_CONF}/${IMAGE_TYPE}/liblcd.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_AR} $(MP_EXTRA_AR_PRE) r dist/${CND_CONF}/${IMAGE_TYPE}/liblcd.X.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

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
