// Copyright 2018 Devlin Willis (ImmutableLambda). All Rights Reserved.

using UnrealBuildTool;

public class GSEduWeapons : ModuleRules
{
	public GSEduWeapons(ReadOnlyTargetRules Target) : base(Target)
	{
		PCHUsage = ModuleRules.PCHUsageMode.UseExplicitOrSharedPCHs;

		PublicDependencyModuleNames.AddRange(new string[]
		{
			"Core",
		});

		// G.S Dependencies
		PublicDependencyModuleNames.AddRange(new string[]
		{
			"GSEduItems",
		});

		PrivateDependencyModuleNames.AddRange(new string[]
		{
			"CoreUObject",
			"Engine",
		});
	}
}
