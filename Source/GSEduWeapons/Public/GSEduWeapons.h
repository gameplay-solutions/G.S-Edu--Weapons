#pragma once

#include "Logging/LogMacros.h"

DECLARE_LOG_CATEGORY_EXTERN(LogGSEduWeapons, Log, All)
/**	Convenience wrapper to UE_LOG, specifying the module's category by default. */
#define MOD_LOG(Verbosity, Format, ...) UE_LOG(LogGSEduWeapons, Verbosity, Format, __VA_ARGS__)