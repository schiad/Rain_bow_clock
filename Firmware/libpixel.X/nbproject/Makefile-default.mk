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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/libpixel.X.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=a
DEBUGGABLE_SUFFIX=
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/libpixel.X.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=show.c set.c clear.c new.c delete.c brightness.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/show.o ${OBJECTDIR}/set.o ${OBJECTDIR}/clear.o ${OBJECTDIR}/new.o ${OBJECTDIR}/delete.o ${OBJECTDIR}/brightness.o
POSSIBLE_DEPFILES=${OBJECTDIR}/show.o.d ${OBJECTDIR}/set.o.d ${OBJECTDIR}/clear.o.d ${OBJECTDIR}/new.o.d ${OBJECTDIR}/delete.o.d ${OBJECTDIR}/brightness.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/show.o ${OBJECTDIR}/set.o ${OBJECTDIR}/clear.o ${OBJECTDIR}/new.o ${OBJECTDIR}/delete.o ${OBJECTDIR}/brightness.o

# Source Files
SOURCEFILES=show.c set.c clear.c new.c delete.c brightness.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/libpixel.X.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/show.o: show.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/show.o.d 
	@${RM} ${OBJECTDIR}/show.o 
	@${FIXDEPS} "${OBJECTDIR}/show.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/show.o.d" -o ${OBJECTDIR}/show.o show.c   
	
${OBJECTDIR}/set.o: set.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/set.o.d 
	@${RM} ${OBJECTDIR}/set.o 
	@${FIXDEPS} "${OBJECTDIR}/set.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/set.o.d" -o ${OBJECTDIR}/set.o set.c   
	
${OBJECTDIR}/clear.o: clear.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/clear.o.d 
	@${RM} ${OBJECTDIR}/clear.o 
	@${FIXDEPS} "${OBJECTDIR}/clear.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/clear.o.d" -o ${OBJECTDIR}/clear.o clear.c   
	
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
	
${OBJECTDIR}/brightness.o: brightness.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/brightness.o.d 
	@${RM} ${OBJECTDIR}/brightness.o 
	@${FIXDEPS} "${OBJECTDIR}/brightness.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/brightness.o.d" -o ${OBJECTDIR}/brightness.o brightness.c   
	
else
${OBJECTDIR}/show.o: show.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/show.o.d 
	@${RM} ${OBJECTDIR}/show.o 
	@${FIXDEPS} "${OBJECTDIR}/show.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/show.o.d" -o ${OBJECTDIR}/show.o show.c   
	
${OBJECTDIR}/set.o: set.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/set.o.d 
	@${RM} ${OBJECTDIR}/set.o 
	@${FIXDEPS} "${OBJECTDIR}/set.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/set.o.d" -o ${OBJECTDIR}/set.o set.c   
	
${OBJECTDIR}/clear.o: clear.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/clear.o.d 
	@${RM} ${OBJECTDIR}/clear.o 
	@${FIXDEPS} "${OBJECTDIR}/clear.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/clear.o.d" -o ${OBJECTDIR}/clear.o clear.c   
	
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
	
${OBJECTDIR}/brightness.o: brightness.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/brightness.o.d 
	@${RM} ${OBJECTDIR}/brightness.o 
	@${FIXDEPS} "${OBJECTDIR}/brightness.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../libsys.X" -MMD -MF "${OBJECTDIR}/brightness.o.d" -o ${OBJECTDIR}/brightness.o brightness.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: archive
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/libpixel.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_AR} $(MP_EXTRA_AR_PRE) r dist/${CND_CONF}/${IMAGE_TYPE}/libpixel.X.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    
else
dist/${CND_CONF}/${IMAGE_TYPE}/libpixel.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_AR} $(MP_EXTRA_AR_PRE) r dist/${CND_CONF}/${IMAGE_TYPE}/libpixel.X.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    
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
