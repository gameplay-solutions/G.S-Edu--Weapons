@echo off

rem		If you don't have wget and 7zip, this obviously won't work. Just install those,
rem 	make sure they're on the system path. You need them anyway. Why don't you have em?

rem 	If you'd like, you can navigate to the repos and copy them yourself
rem 	and then just regenerate your project files. That's all this script does.

rem 	Setup the path to your UnrealBuildTool.exe, .uproject, and .sln

rem 		"{EngineDir}\Engine\Binaries\DotNET\UnrealBuildTool.exe"
set UBTPath=""

rem 		"{BaseDir}\{ProjectName}\{UProjectName}.uproject"
set PROJPath=""

rem		Very basic sanity checking here. Note that you could have this script in "/Plugins/DepGetter/" and that'd work
if not exist "../../Plugins" goto InvalidDir
if not exist %UBTPath% goto InvalidPaths
if not exist %PROJPath% goto InvalidPaths

rem 	Clone the dependencies from github, into the plugins folder.

pushd "../"

rem		Dependency List, newline for each item
for %%i in (
	Items
) do (
wget https://github.com/gameplay-solutions/G.S-Edu--%%i/archive/master.zip || goto WGetError
7z x master.zip || goto 7ZipError
del master.zip
)

rem 	Now, call UBT so when this script is run you won't need to do so manually.
call %UBTPath% -ProjectFiles -project=%PROJPath% -game
pause
exit /B %ERRORLEVEL%

:InvalidDir
echo ERROR: This script should be located alongside GSEduWeapons.uplugin, and the entire plugin should be within a valid Plugins folder.
goto out

:InvalidPaths
echo ERROR: Ensure you've altered this script such that UBTPath and PROJPath are both set to valid locations.
goto out

rem maybe see what this is and do something else?
:7ZipError
echo ERROR: Aborting run! Fix the error(s) above!
goto out

:WGetError
echo ERROR: Aborting run! Fix the error(s) above! 
goto out

:out
pause
popd
exit /B 1
