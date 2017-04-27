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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/libi2c.X.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=a
DEBUGGABLE_SUFFIX=
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/libi2c.X.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=_stop.c _start.c _send.c enable.c disable.c write.c read.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_stop.o ${OBJECTDIR}/_start.o ${OBJECTDIR}/_send.o ${OBJECTDIR}/enable.o ${OBJECTDIR}/disable.o ${OBJECTDIR}/write.o ${OBJECTDIR}/read.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_stop.o.d ${OBJECTDIR}/_start.o.d ${OBJECTDIR}/_send.o.d ${OBJECTDIR}/enable.o.d ${OBJECTDIR}/disable.o.d ${OBJECTDIR}/write.o.d ${OBJECTDIR}/read.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_stop.o ${OBJECTDIR}/_start.o ${OBJECTDIR}/_send.o ${OBJECTDIR}/enable.o ${OBJECTDIR}/disable.o ${OBJECTDIR}/write.o ${OBJECTDIR}/read.o

# Source Files
SOURCEFILES=_stop.c _start.c _send.c enable.c disable.c write.c read.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/libi2c.X.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX340F512H
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
${OBJECTDIR}/_stop.o: _stop.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/_stop.o.d 
	@${RM} ${OBJECTDIR}/_stop.o 
	@${FIXDEPS} "${OBJECTDIR}/_stop.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -I"../libsys.X" -MMD -MF "${OBJECTDIR}/_stop.o.d" -o ${OBJECTDIR}/_stop.o _stop.c   
	
${OBJECTDIR}/_start.o: _start.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/_start.o.d 
	@${RM} ${OBJECTDIR}/_start.o 
	@${FIXDEPS} "${OBJECTDIR}/_start.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -I"../libsys.X" -MMD -MF "${OBJECTDIR}/_start.o.d" -o ${OBJECTDIR}/_start.o _start.c   
	
${OBJECTDIR}/_send.o: _send.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/_send.o.d 
	@${RM} ${OBJECTDIR}/_send.o 
	@${FIXDEPS} "${OBJECTDIR}/_send.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -I"../libsys.X" -MMD -MF "${OBJECTDIR}/_send.o.d" -o ${OBJECTDIR}/_send.o _send.c   
	
${OBJECTDIR}/enable.o: enable.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/enable.o.d 
	@${RM} ${OBJECTDIR}/enable.o 
	@${FIXDEPS} "${OBJECTDIR}/enable.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -I"../libsys.X" -MMD -MF "${OBJECTDIR}/enable.o.d" -o ${OBJECTDIR}/enable.o enable.c   
	
${OBJECTDIR}/disable.o: disable.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/disable.o.d 
	@${RM} ${OBJECTDIR}/disable.o 
	@${FIXDEPS} "${OBJECTDIR}/disable.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -I"../libsys.X" -MMD -MF "${OBJECTDIR}/disable.o.d" -o ${OBJECTDIR}/disable.o disable.c   
	
${OBJECTDIR}/write.o: write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/write.o.d 
	@${RM} ${OBJECTDIR}/write.o 
	@${FIXDEPS} "${OBJECTDIR}/write.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -I"../libsys.X" -MMD -MF "${OBJECTDIR}/write.o.d" -o ${OBJECTDIR}/write.o write.c   
	
${OBJECTDIR}/read.o: read.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/read.o.d 
	@${RM} ${OBJECTDIR}/read.o 
	@${FIXDEPS} "${OBJECTDIR}/read.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -I"../libsys.X" -MMD -MF "${OBJECTDIR}/read.o.d" -o ${OBJECTDIR}/read.o read.c   
	
else
${OBJECTDIR}/_stop.o: _stop.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/_stop.o.d 
	@${RM} ${OBJECTDIR}/_stop.o 
	@${FIXDEPS} "${OBJECTDIR}/_stop.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -I"../libsys.X" -MMD -MF "${OBJECTDIR}/_stop.o.d" -o ${OBJECTDIR}/_stop.o _stop.c   
	
${OBJECTDIR}/_start.o: _start.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/_start.o.d 
	@${RM} ${OBJECTDIR}/_start.o 
	@${FIXDEPS} "${OBJECTDIR}/_start.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -I"../libsys.X" -MMD -MF "${OBJECTDIR}/_start.o.d" -o ${OBJECTDIR}/_start.o _start.c   
	
${OBJECTDIR}/_send.o: _send.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/_send.o.d 
	@${RM} ${OBJECTDIR}/_send.o 
	@${FIXDEPS} "${OBJECTDIR}/_send.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -I"../libsys.X" -MMD -MF "${OBJECTDIR}/_send.o.d" -o ${OBJECTDIR}/_send.o _send.c   
	
${OBJECTDIR}/enable.o: enable.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/enable.o.d 
	@${RM} ${OBJECTDIR}/enable.o 
	@${FIXDEPS} "${OBJECTDIR}/enable.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -I"../libsys.X" -MMD -MF "${OBJECTDIR}/enable.o.d" -o ${OBJECTDIR}/enable.o enable.c   
	
${OBJECTDIR}/disable.o: disable.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/disable.o.d 
	@${RM} ${OBJECTDIR}/disable.o 
	@${FIXDEPS} "${OBJECTDIR}/disable.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -I"../libsys.X" -MMD -MF "${OBJECTDIR}/disable.o.d" -o ${OBJECTDIR}/disable.o disable.c   
	
${OBJECTDIR}/write.o: write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/write.o.d 
	@${RM} ${OBJECTDIR}/write.o 
	@${FIXDEPS} "${OBJECTDIR}/write.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -I"../libsys.X" -MMD -MF "${OBJECTDIR}/write.o.d" -o ${OBJECTDIR}/write.o write.c   
	
${OBJECTDIR}/read.o: read.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/read.o.d 
	@${RM} ${OBJECTDIR}/read.o 
	@${FIXDEPS} "${OBJECTDIR}/read.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -I"../libsys.X" -MMD -MF "${OBJECTDIR}/read.o.d" -o ${OBJECTDIR}/read.o read.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: archive
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/libi2c.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_AR} $(MP_EXTRA_AR_PRE) r dist/${CND_CONF}/${IMAGE_TYPE}/libi2c.X.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    
else
dist/${CND_CONF}/${IMAGE_TYPE}/libi2c.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_AR} $(MP_EXTRA_AR_PRE) r dist/${CND_CONF}/${IMAGE_TYPE}/libi2c.X.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    
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
