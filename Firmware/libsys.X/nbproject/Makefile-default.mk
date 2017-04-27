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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/libsys.X.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=a
DEBUGGABLE_SUFFIX=
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/libsys.X.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=get_pbclk.c get_perf.c get_sysclk.c delay.c delay_micros.c delay_millis.c strlen.c memcpy.c memset.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/get_pbclk.o ${OBJECTDIR}/get_perf.o ${OBJECTDIR}/get_sysclk.o ${OBJECTDIR}/delay.o ${OBJECTDIR}/delay_micros.o ${OBJECTDIR}/delay_millis.o ${OBJECTDIR}/strlen.o ${OBJECTDIR}/memcpy.o ${OBJECTDIR}/memset.o
POSSIBLE_DEPFILES=${OBJECTDIR}/get_pbclk.o.d ${OBJECTDIR}/get_perf.o.d ${OBJECTDIR}/get_sysclk.o.d ${OBJECTDIR}/delay.o.d ${OBJECTDIR}/delay_micros.o.d ${OBJECTDIR}/delay_millis.o.d ${OBJECTDIR}/strlen.o.d ${OBJECTDIR}/memcpy.o.d ${OBJECTDIR}/memset.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/get_pbclk.o ${OBJECTDIR}/get_perf.o ${OBJECTDIR}/get_sysclk.o ${OBJECTDIR}/delay.o ${OBJECTDIR}/delay_micros.o ${OBJECTDIR}/delay_millis.o ${OBJECTDIR}/strlen.o ${OBJECTDIR}/memcpy.o ${OBJECTDIR}/memset.o

# Source Files
SOURCEFILES=get_pbclk.c get_perf.c get_sysclk.c delay.c delay_micros.c delay_millis.c strlen.c memcpy.c memset.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/libsys.X.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/get_pbclk.o: get_pbclk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/get_pbclk.o.d 
	@${RM} ${OBJECTDIR}/get_pbclk.o 
	@${FIXDEPS} "${OBJECTDIR}/get_pbclk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/get_pbclk.o.d" -o ${OBJECTDIR}/get_pbclk.o get_pbclk.c   -save-temps=obj
	
${OBJECTDIR}/get_perf.o: get_perf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/get_perf.o.d 
	@${RM} ${OBJECTDIR}/get_perf.o 
	@${FIXDEPS} "${OBJECTDIR}/get_perf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/get_perf.o.d" -o ${OBJECTDIR}/get_perf.o get_perf.c   -save-temps=obj
	
${OBJECTDIR}/get_sysclk.o: get_sysclk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/get_sysclk.o.d 
	@${RM} ${OBJECTDIR}/get_sysclk.o 
	@${FIXDEPS} "${OBJECTDIR}/get_sysclk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/get_sysclk.o.d" -o ${OBJECTDIR}/get_sysclk.o get_sysclk.c   -save-temps=obj
	
${OBJECTDIR}/delay.o: delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/delay.o.d 
	@${RM} ${OBJECTDIR}/delay.o 
	@${FIXDEPS} "${OBJECTDIR}/delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/delay.o.d" -o ${OBJECTDIR}/delay.o delay.c   -save-temps=obj
	
${OBJECTDIR}/delay_micros.o: delay_micros.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/delay_micros.o.d 
	@${RM} ${OBJECTDIR}/delay_micros.o 
	@${FIXDEPS} "${OBJECTDIR}/delay_micros.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/delay_micros.o.d" -o ${OBJECTDIR}/delay_micros.o delay_micros.c   -save-temps=obj
	
${OBJECTDIR}/delay_millis.o: delay_millis.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/delay_millis.o.d 
	@${RM} ${OBJECTDIR}/delay_millis.o 
	@${FIXDEPS} "${OBJECTDIR}/delay_millis.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/delay_millis.o.d" -o ${OBJECTDIR}/delay_millis.o delay_millis.c   -save-temps=obj
	
${OBJECTDIR}/strlen.o: strlen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/strlen.o.d 
	@${RM} ${OBJECTDIR}/strlen.o 
	@${FIXDEPS} "${OBJECTDIR}/strlen.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/strlen.o.d" -o ${OBJECTDIR}/strlen.o strlen.c   -save-temps=obj
	
${OBJECTDIR}/memcpy.o: memcpy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/memcpy.o.d 
	@${RM} ${OBJECTDIR}/memcpy.o 
	@${FIXDEPS} "${OBJECTDIR}/memcpy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/memcpy.o.d" -o ${OBJECTDIR}/memcpy.o memcpy.c   -save-temps=obj
	
${OBJECTDIR}/memset.o: memset.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/memset.o.d 
	@${RM} ${OBJECTDIR}/memset.o 
	@${FIXDEPS} "${OBJECTDIR}/memset.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/memset.o.d" -o ${OBJECTDIR}/memset.o memset.c   -save-temps=obj
	
else
${OBJECTDIR}/get_pbclk.o: get_pbclk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/get_pbclk.o.d 
	@${RM} ${OBJECTDIR}/get_pbclk.o 
	@${FIXDEPS} "${OBJECTDIR}/get_pbclk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/get_pbclk.o.d" -o ${OBJECTDIR}/get_pbclk.o get_pbclk.c   -save-temps=obj
	
${OBJECTDIR}/get_perf.o: get_perf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/get_perf.o.d 
	@${RM} ${OBJECTDIR}/get_perf.o 
	@${FIXDEPS} "${OBJECTDIR}/get_perf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/get_perf.o.d" -o ${OBJECTDIR}/get_perf.o get_perf.c   -save-temps=obj
	
${OBJECTDIR}/get_sysclk.o: get_sysclk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/get_sysclk.o.d 
	@${RM} ${OBJECTDIR}/get_sysclk.o 
	@${FIXDEPS} "${OBJECTDIR}/get_sysclk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/get_sysclk.o.d" -o ${OBJECTDIR}/get_sysclk.o get_sysclk.c   -save-temps=obj
	
${OBJECTDIR}/delay.o: delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/delay.o.d 
	@${RM} ${OBJECTDIR}/delay.o 
	@${FIXDEPS} "${OBJECTDIR}/delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/delay.o.d" -o ${OBJECTDIR}/delay.o delay.c   -save-temps=obj
	
${OBJECTDIR}/delay_micros.o: delay_micros.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/delay_micros.o.d 
	@${RM} ${OBJECTDIR}/delay_micros.o 
	@${FIXDEPS} "${OBJECTDIR}/delay_micros.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/delay_micros.o.d" -o ${OBJECTDIR}/delay_micros.o delay_micros.c   -save-temps=obj
	
${OBJECTDIR}/delay_millis.o: delay_millis.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/delay_millis.o.d 
	@${RM} ${OBJECTDIR}/delay_millis.o 
	@${FIXDEPS} "${OBJECTDIR}/delay_millis.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/delay_millis.o.d" -o ${OBJECTDIR}/delay_millis.o delay_millis.c   -save-temps=obj
	
${OBJECTDIR}/strlen.o: strlen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/strlen.o.d 
	@${RM} ${OBJECTDIR}/strlen.o 
	@${FIXDEPS} "${OBJECTDIR}/strlen.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/strlen.o.d" -o ${OBJECTDIR}/strlen.o strlen.c   -save-temps=obj
	
${OBJECTDIR}/memcpy.o: memcpy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/memcpy.o.d 
	@${RM} ${OBJECTDIR}/memcpy.o 
	@${FIXDEPS} "${OBJECTDIR}/memcpy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/memcpy.o.d" -o ${OBJECTDIR}/memcpy.o memcpy.c   -save-temps=obj
	
${OBJECTDIR}/memset.o: memset.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/memset.o.d 
	@${RM} ${OBJECTDIR}/memset.o 
	@${FIXDEPS} "${OBJECTDIR}/memset.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/memset.o.d" -o ${OBJECTDIR}/memset.o memset.c   -save-temps=obj
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: archive
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/libsys.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_AR} $(MP_EXTRA_AR_PRE) r dist/${CND_CONF}/${IMAGE_TYPE}/libsys.X.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    
else
dist/${CND_CONF}/${IMAGE_TYPE}/libsys.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_AR} $(MP_EXTRA_AR_PRE) r dist/${CND_CONF}/${IMAGE_TYPE}/libsys.X.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    
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
