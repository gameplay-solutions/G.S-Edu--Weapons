// Copyright 2018 Devlin Willis (ImmutableLambda). All Rights Reserved.

#include "GSEduWeapons.h"
#include "CoreMinimal.h"
#include "Modules/ModuleManager.h"

DEFINE_LOG_CATEGORY(LogGSEduWeapons)


class FGSEduWeapons : public FDefaultModuleImpl
{
	/** IModuleInterface implementation */
	virtual void StartupModule() override;

	virtual void ShutdownModule() override;
};

IMPLEMENT_MODULE(FGSEduWeapons, GSEduWeapons)

void FGSEduWeapons::StartupModule()
{
}

void FGSEduWeapons::ShutdownModule()
{
}