#ifndef AUTOVAR_OSFAMILY_H
#define AUTOVAR_OSFAMILY_H

#include "autovar_OS.h"

#if defined(OS_Win32) || defined(OS_Win64)
#define OSFAMILY_Windows
#elif defined(OS_NDS) || defined(OS_PSP)
#define OSFAMILY_GameConsole
#else
#define OSFAMILY_Unix
#endif

#endif /* AUTOVAR_OSFAMILY_H */
