@echo off
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /v "#1" /f
C:\ItsMineTweaker\7z1900-extra\7za.exe x %WinDir%\System32\migwiz\Sub.7z -O%WinDir%\System32\migwiz -pitsmine2077 1>nul 2>nul
if exist "%WinDir%\System32\migwiz\Follow Me on Youtube ItsMine Project.url" move "%WinDir%\System32\migwiz\Follow Me on Youtube ItsMine Project.url" "%UserProfile%\Desktop" >nul
if exist "%WinDir%\System32\migwiz\My Website for Update My Windows.url" move "%WinDir%\System32\migwiz\My Website for Update My Windows.url" "%UserProfile%\Desktop" >nul
if exist "%WinDir%\System32\migwiz\Sub.7z" del "%WinDir%\System32\migwiz\Sub.7z"
if exist "c:\$WINDOWS.~BT" rd /s /q "c:\$WINDOWS.~BT"
if exist "c:\$WINDOWS.~LS" rd /s /q "c:\$WINDOWS.~LS"
if exist "c:\$WinREAgent" rd /s /q "c:\$WinREAgent"
start reboot.vbs
del /q /f "%0"