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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/libuart.X.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=a
DEBUGGABLE_SUFFIX=
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/libuart.X.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=begin.c available.c getc.c gets.c putc.c puts.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/begin.o ${OBJECTDIR}/available.o ${OBJECTDIR}/getc.o ${OBJECTDIR}/gets.o ${OBJECTDIR}/putc.o ${OBJECTDIR}/puts.o
POSSIBLE_DEPFILES=${OBJECTDIR}/begin.o.d ${OBJECTDIR}/available.o.d ${OBJECTDIR}/getc.o.d ${OBJECTDIR}/gets.o.d ${OBJECTDIR}/putc.o.d ${OBJECTDIR}/puts.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/begin.o ${OBJECTDIR}/available.o ${OBJECTDIR}/getc.o ${OBJECTDIR}/gets.o ${OBJECTDIR}/putc.o ${OBJECTDIR}/puts.o

# Source Files
SOURCEFILES=begin.c available.c getc.c gets.c putc.c puts.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/libuart.X.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/begin.o: begin.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/begin.o.d 
	@${RM} ${OBJECTDIR}/begin.o 
	@${FIXDEPS} "${OBJECTDIR}/begin.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../libsys.X" -MMD -MF "${OBJECTDIR}/begin.o.d" -o ${OBJECTDIR}/begin.o begin.c   
	
${OBJECTDIR}/available.o: available.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/available.o.d 
	@${RM} ${OBJECTDIR}/available.o 
	@${FIXDEPS} "${OBJECTDIR}/available.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../libsys.X" -MMD -MF "${OBJECTDIR}/available.o.d" -o ${OBJECTDIR}/available.o available.c   
	
${OBJECTDIR}/getc.o: getc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/getc.o.d 
	@${RM} ${OBJECTDIR}/getc.o 
	@${FIXDEPS} "${OBJECTDIR}/getc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../libsys.X" -MMD -MF "${OBJECTDIR}/getc.o.d" -o ${OBJECTDIR}/getc.o getc.c   
	
${OBJECTDIR}/gets.o: gets.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/gets.o.d 
	@${RM} ${OBJECTDIR}/gets.o 
	@${FIXDEPS} "${OBJECTDIR}/gets.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../libsys.X" -MMD -MF "${OBJECTDIR}/gets.o.d" -o ${OBJECTDIR}/gets.o gets.c   
	
${OBJECTDIR}/putc.o: putc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/putc.o.d 
	@${RM} ${OBJECTDIR}/putc.o 
	@${FIXDEPS} "${OBJECTDIR}/putc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../libsys.X" -MMD -MF "${OBJECTDIR}/putc.o.d" -o ${OBJECTDIR}/putc.o putc.c   
	
${OBJECTDIR}/puts.o: puts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/puts.o.d 
	@${RM} ${OBJECTDIR}/puts.o 
	@${FIXDEPS} "${OBJECTDIR}/puts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../libsys.X" -MMD -MF "${OBJECTDIR}/puts.o.d" -o ${OBJECTDIR}/puts.o puts.c   
	
else
${OBJECTDIR}/begin.o: begin.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/begin.o.d 
	@${RM} ${OBJECTDIR}/begin.o 
	@${FIXDEPS} "${OBJECTDIR}/begin.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../libsys.X" -MMD -MF "${OBJECTDIR}/begin.o.d" -o ${OBJECTDIR}/begin.o begin.c   
	
${OBJECTDIR}/available.o: available.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/available.o.d 
	@${RM} ${OBJECTDIR}/available.o 
	@${FIXDEPS} "${OBJECTDIR}/available.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../libsys.X" -MMD -MF "${OBJECTDIR}/available.o.d" -o ${OBJECTDIR}/available.o available.c   
	
${OBJECTDIR}/getc.o: getc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/getc.o.d 
	@${RM} ${OBJECTDIR}/getc.o 
	@${FIXDEPS} "${OBJECTDIR}/getc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../libsys.X" -MMD -MF "${OBJECTDIR}/getc.o.d" -o ${OBJECTDIR}/getc.o getc.c   
	
${OBJECTDIR}/gets.o: gets.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/gets.o.d 
	@${RM} ${OBJECTDIR}/gets.o 
	@${FIXDEPS} "${OBJECTDIR}/gets.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../libsys.X" -MMD -MF "${OBJECTDIR}/gets.o.d" -o ${OBJECTDIR}/gets.o gets.c   
	
${OBJECTDIR}/putc.o: putc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/putc.o.d 
	@${RM} ${OBJECTDIR}/putc.o 
	@${FIXDEPS} "${OBJECTDIR}/putc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../libsys.X" -MMD -MF "${OBJECTDIR}/putc.o.d" -o ${OBJECTDIR}/putc.o putc.c   
	
${OBJECTDIR}/puts.o: puts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/puts.o.d 
	@${RM} ${OBJECTDIR}/puts.o 
	@${FIXDEPS} "${OBJECTDIR}/puts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../libsys.X" -MMD -MF "${OBJECTDIR}/puts.o.d" -o ${OBJECTDIR}/puts.o puts.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: archive
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/libuart.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_AR} $(MP_EXTRA_AR_PRE) r dist/${CND_CONF}/${IMAGE_TYPE}/libuart.X.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    
else
dist/${CND_CONF}/${IMAGE_TYPE}/libuart.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_AR} $(MP_EXTRA_AR_PRE) r dist/${CND_CONF}/${IMAGE_TYPE}/libuart.X.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    
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
