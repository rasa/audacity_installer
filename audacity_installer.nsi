# Copyright (c) 2005-2015 Ross Smith II (http://smithii.com). MIT Licensed.

!define AUDACITY_VER "2.0.6"
!define AUDACITY_EXE "audacity-win-${AUDACITY_VER}.exe"
!define AUDACITY_URL "http://downloads.sourceforge.net/project/audacity/audacity/${AUDACITY_VER}/${AUDACITY_EXE}"

# http://downloads.sourceforge.net/project/audacity/audacity/2.0.6/audacity-win-2.0.6.exe

!define LADSPA_VER "0.4.15"
!define LADSPA_EXE "LADSPA_plugins-win-${LADSPA_VER}.exe"
!define LADSPA_URL "http://downloads.sourceforge.net/project/audacity/audacity-beta/1.3.2/${LADSPA_EXE}"

# http://downloads.sourceforge.net/project/audacity/audacity-beta/1.3.2/LADSPA_plugins-win-0.4.15.exe

!define LAME_VER "3.99.3"
!define LAME_EXE "Lame_v${LAME_VER}_for_Windows.exe"
!define LAME_URL "http://lame.buanzo.org/${LAME_EXE}"

# Source: http://lame.buanzo.org/#lamewindl
# Referer: http://lame.buanzo.org/
# http://lame.buanzo.org/Lame_v3.99.3_for_Windows.exe

!define FFMPEG_VER "2.2.2"
!define FFMPEG_EXE "ffmpeg-win-${FFMPEG_VER}.exe"
!define FFMPEG_URL "http://lame3.buanzo.com.ar/${FFMPEG_EXE}"

# Source: http://lame.buanzo.org/#lamewindl
# Referer: http://lame.buanzo.org/
# http://lame3.buanzo.com.ar/ffmpeg-win-2.2.2.exe

!define PRODUCT_NAME "audacity_installer"
!define PRODUCT_DIR "Audacity"
#!define PRODUCT_VERSION "1.0"
!define PRODUCT_DESC "Audacity Freeware Installer ${PRODUCT_VERSION}"
!define PRODUCT_TRADEMARKS "Audacity™  is a trademark of Dominic Mazzoni (http://audacity.sourceforge.net/copyright)"

!addincludedir "../nsislib"
!addincludedir "nsislib"

!include "config.nsh"
!include "DumpLog.nsh"

#!undef PRODUCT_EXE
#!undef PRODUCT_FILE
#!define NO_DESKTOP_ICONS
#!define ADD_INSTDIR_TO_PATH

#!define COPYDIR "$EXEDIR"
#!define NOEXTRACTPATH
#!define UNZIP_DIR "$INSTDIR"

InstType "Audacity ${AUDACITY_VER} and all plug-ins"
InstType "Audacity ${AUDACITY_VER} only"
InstType "LADSPA plug-ins ${LADSPA_VER}"
InstType "LAME plug-in ${LAME_VER}"
InstType "FFMPEG plug-in ${LAME_VER}"
InstType "None"

!include "common.nsh"

Section "Audacity ${AUDACITY_VER}"
	SectionIn 1 2

	!insertmacro Download "${AUDACITY_URL}" "" ""
	StrCpy $1 "$INSTDIR\${AUDACITY_EXE}"
	ExecWait $1 $0
SectionEnd

Section "LADSPA Plugins ${LADSPA_VER}"
	SectionIn 1 3

	!insertmacro Download "${LADSPA_URL}" "" ""
	StrCpy $1 "$INSTDIR\${LADSPA_EXE}"
	ExecWait $1 $0
SectionEnd

Section "LAME Plugin ${LAME_VER}"
	SectionIn 1 4

	!insertmacro Download "${LAME_URL}" "" "http://lame.buanzo.org/"
	StrCpy $1 "$INSTDIR\${LAME_EXE}"
	ExecWait $1 $0
SectionEnd

Section "FFMPEG Plugin ${FFMPEG_VER}"
	SectionIn 1 5

	!insertmacro Download "${FFMPEG_URL}" "" "http://lame.buanzo.org/"
	StrCpy $1 "$INSTDIR\${FFMPEG_EXE}"
	ExecWait $1 $0
SectionEnd

# !insertmacro DumpLogMacro "2 3"	"DumpLog" "url"
