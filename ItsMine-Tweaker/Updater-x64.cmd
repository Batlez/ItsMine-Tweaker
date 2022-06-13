@shift /0
@echo off
if not "%1"=="am_admin" (powershell start -verb runas am_admin /b) 1>nul 2>nul
timeout /t 2 /nobreak > nul
cls
echo [96m Checking Your Architecture...[0m
timeout /t 2 /nobreak > nul
if defined ProgramFiles(x86) (goto Check) else (goto Error)
for /f "tokens=5,6 delims=,. "  %%a in ('ver') do set "build_n=%%a.%%b"

:Check
reg query HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ShellCompatibility\Applications\ios.exe /v OsActive 1>nul 2>nul | find "true"
reg query HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ShellCompatibility\Applications\save.exe /v Choco 1>nul 2>nul | find "yes"
reg query HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v CodeVer 1>nul 2>nul
reg query HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v Ver 1>nul 2>nul

if %errorlevel% equ 0 goto Install
if %errorlevel% equ 1 goto Exit

:Install
cls
echo [96m Updating ItsMine Tweaker...[0m
timeout /t 2 /nobreak > nul
cls
echo [96m Killing Task ItsMine Tweaker...[0m
timeout /t 2 /nobreak > nul
taskkill /im itsmine_tweaker_release.exe 2>nul
cls
echo [96m OK. Now Install is Begining...[0m
timeout /t 2 /nobreak > nul
set "Windows11=0.22000"
if not "%Windows11%"=="%build_n%" goto X10
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
if exist "C:\ItsMineTweaker\itsmine_tweaker_release.exe" del "C:\ItsMineTweaker\itsmine_tweaker_release.exe" 2>nul
move itsmine_tweaker_release.exe C:\ItsMineTweaker\itsmine_tweaker_release.exe 2>nul
if not exist "%UserProfile%\Desktop\ItsMine Tweaker.lnk" mklink "%UserProfile%\Desktop\ItsMine Tweaker" "C:\ItsMineTweaker\itsmine_tweaker_release.exe"
goto Finish

:X10
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
if exist "C:\ItsMineTweaker\itsmine_tweaker_release.exe" del "C:\ItsMineTweaker\itsmine_tweaker_release.exe" 2>nul
move itsmine_tweaker_release-x10.exe C:\ItsMineTweaker\itsmine_tweaker_release.exe 2>nul
if not exist "%UserProfile%\Desktop\ItsMine Tweaker.lnk" mklink "%UserProfile%\Desktop\ItsMine Tweaker" "C:\ItsMineTweaker\itsmine_tweaker_release.exe"
goto Finish

:Exit
exit

:Finish
set finish=[96mFinish ^^![0m
cls
echo  %finish%
timeout /t 2 /nobreak > nul
cls
echo [96m Starting ItsMine Tweaker...[0m
timeout /t 2 /nobreak > nul
rd /s /q %Temp%\*
start C:\ItsMineTweaker\itsmine_tweaker_release.exe
goto Exit

:Error
cls
echo [91m Sorry your Architecture is x86. Please download x86 file.[0m
timeout /t 2 /nobreak > nul
cls
echo [96m Opening Download Web...[0m
timeout /t 2 /nobreak > nul
explorer https://itsmineproject.blogspot.com/p/itsmine-tweaker-center.html
exit
