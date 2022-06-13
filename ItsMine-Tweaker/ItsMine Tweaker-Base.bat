@shift /0
@echo off
goto Install

:Brave
cls
echo %check%
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
cls
echo %start%
timeout /t 2 /nobreak > nul
cls
echo  [96mDownloading Brave...
wget -q --show-progress --no-check-certificate https://referrals.brave.com/latest/BraveBrowserSetup.exe -O C:\ItsMineTweaker\Files\BraveBrowserSetup.exe
goto End

:Chrome
cls
echo %check%
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
cls
echo %start%
timeout /t 2 /nobreak > nul
cls
echo  [96mDownloading Google Chrome...
wget -q --show-progress --no-check-certificate https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7B1E59B227-B251-1271-B36B-24400176F8D4%7D%26lang%3Den%26browser%3D4%26usagestats%3D1%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers%26ap%3Dx64-stable-statsdef_1%26brand%3DCHBD%26installdataindex%3Dempty/update2/installers/ChromeSetup.exe -O C:\ItsMineTweaker\Files\ChromeSetup.exe
goto End

:Firefox
cls
echo %check%
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
cls
echo %start%
timeout /t 2 /nobreak > nul
cls
echo  [96mDownloading Mozilla Firefox...
wget -q --show-progress --no-check-certificate https://download-installer.cdn.mozilla.net/pub/firefox/releases/94.0.1/win64/en-US/Firefox%20Setup%2094.0.1.exe -O C:\ItsMineTweaker\Files\Firefox20Setup2094.0.1.exe
goto End

:Edge
cls
echo %check%
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
cls
echo %start%
timeout /t 2 /nobreak > nul
cls
echo  [96mDownloading Microsoft Edge...
wget -q --show-progress --no-check-certificate https://bit.ly/3mDVg4U -O C:\ItsMineTweaker\Files\MicrosoftEdgeSetup.exe
goto End

:OperaGX
cls
echo %check%
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
cls
echo %start%
timeout /t 2 /nobreak > nul
cls
echo  [96mDownloading OperaGX...
wget -q --show-progress --no-check-certificate https://bit.ly/31nKxDn -O C:\ItsMineTweaker\Files\OperaGXSetup.exe
goto End

:VLC
cls
echo %check%
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
cls
echo %start%
timeout /t 2 /nobreak > nul
cls
echo  [96mDownloading VLC Media Player...
wget -q --show-progress --no-check-certificate https://mirror.clarkson.edu/videolan/vlc/3.0.16/win64/vlc-3.0.16-win64.exe -O C:\ItsMineTweaker\Files\vlc-3.0.16-win64.exe
goto End

:Onedrive
cls
echo %check%
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
cls
echo %start%
timeout /t 2 /nobreak > nul
cls
echo  [96mDownloading Onedrive...
wget -q --show-progress --no-check-certificate https://oneclient.sfx.ms/Win/Prod/21.196.0921.0007/amd64/OneDriveSetup.exe -O C:\ItsMineTweaker\Files\OneDriveSetup.exe
goto End

:Store
cls
echo  [96mChecking 7z1900-extra Folder...
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
if not exist "C:\ItsMineTweaker\7z1900-extra" (
  cls
  echo  [96mNot found 7z1900-extra Folder. Downloading 7z1900-extra...
  wget -q --show-progress --no-check-certificate https://github.com/ItsMine-Project/Files/raw/main/7z1900-extra-ItsMine-Project.zip -O %UserProfile%\AppData\Local\Temp\7z1900-extra.zip"
  powershell -command "Expand-Archive -Force %Temp%\7z1900-extra.zip C:\ItsMineTweaker\7z1900-extra" 1>nul 2>nul
  del %Temp%\7z1900-extra.zip
)
cls
echo  [96mDownloading Microsoft Store Packages...
wget -q --show-progress --no-check-certificate https://github.com/ItsMine-Project/Files/raw/main/Store.7z -O %UserProfile%\AppData\Local\Temp\Store.7z
cls
echo  [96mExtracting Package...
timeout /t 2 /nobreak > nul
C:\ItsMineTweaker\7z1900-extra\7za.exe x %Temp%\Store.7z -O%Temp%\Store -pitsmine2077 1>nul 2>nul
del %Temp%\Store.7z
cls
echo  [96mInstalling Microsoft Store Packages...
powershell Add-AppxPackage %Temp%\Store\*.Appx 1>nul 2>nul
powershell Add-AppxPackage %Temp%\Store\*.AppxBundle 1>nul 2>nul
powershell Add-AppxPackage %Temp%\Store\*.Msixbundle 1>nul 2>nul
cls
echo  [96mCleaning Temporary File...
timeout /t 1 /nobreak > nul
rd /s /q %Temp%\Store
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:Zune
cls
echo  [96mChecking 7z1900-extra Folder...
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
if not exist "C:\ItsMineTweaker\7z1900-extra" (
  cls
  echo  [96mNot found 7z1900-extra Folder. Downloading 7z1900-extra...
  wget -q --show-progress --no-check-certificate https://github.com/ItsMine-Project/Files/raw/main/7z1900-extra-ItsMine-Project.zip -O %UserProfile%\AppData\Local\Temp\7z1900-extra.zip"
  powershell -command "Expand-Archive -Force %Temp%\7z1900-extra.zip C:\ItsMineTweaker\7z1900-extra" 1>nul 2>nul
  del %Temp%\7z1900-extra.zip
)
cls
echo  [96mDownloading Groove Music...
wget -q --show-progress --no-check-certificate https://github.com/ItsMine-Project/Files/raw/main/Zune.7z -O %UserProfile%\AppData\Local\Temp\Zune.7z
wget -q --show-progress --no-check-certificate https://github.com/ItsMine-Project/ItsMine-UWP-App-Patched-x64/raw/main/Microsoft.VCLibs.140.00_14.0.30035.0_x64__8wekyb3d8bbwe.Appx -O %UserProfile%\AppData\Local\Temp\VCLibs.Appx
wget -q --show-progress --no-check-certificate https://github.com/ItsMine-Project/ItsMine-UWP-App-Patched-x64/raw/main/Microsoft.UI.Xaml.2.4_2.42007.9001.0_x64__8wekyb3d8bbwe.Appx -O %UserProfile%\AppData\Local\Temp\UIXaml.Appx
cls
echo  [96mExtracting Package...
timeout /t 2 /nobreak > nul
C:\ItsMineTweaker\7z1900-extra\7za.exe x %Temp%\Zune.7z -O%Temp%\Zune -pitsmine2077 1>nul 2>nul
del %Temp%\Zune.7z
cls
echo  [96mInstalling Groove Music...
powershell Add-AppxPackage %Temp%\*.Appx 1>nul 2>nul
powershell Add-AppxPackage %Temp%\Zune\*.AppxBundle 1>nul 2>nul
del %Temp%\Zune.7z
cls
echo  [96mCleaning Temporary File...
timeout /t 1 /nobreak > nul
rd /s /q %Temp%\Store
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:YP
cls
echo  [96mChecking 7z1900-extra Folder...
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
if not exist "C:\ItsMineTweaker\7z1900-extra" (
  cls
  echo  [96mNot found 7z1900-extra Folder. Downloading 7z1900-extra...
  wget -q --show-progress --no-check-certificate https://github.com/ItsMine-Project/Files/raw/main/7z1900-extra-ItsMine-Project.zip -O %UserProfile%\AppData\Local\Temp\7z1900-extra.zip"
  powershell -command "Expand-Archive -Force %Temp%\7z1900-extra.zip C:\ItsMineTweaker\7z1900-extra" 1>nul 2>nul
  del %Temp%\7z1900-extra.zip
)
cls
echo  [96mDownloading Your Phone...
wget -q --show-progress --no-check-certificate https://github.com/ItsMine-Project/Files/raw/main/Phone.7z -O %UserProfile%\AppData\Local\Temp\Phone.7z
wget -q --show-progress --no-check-certificate https://github.com/ItsMine-Project/ItsMine-UWP-App-Patched-x64/raw/main/Microsoft.UI.Xaml.2.4_2.42007.9001.0_x64__8wekyb3d8bbwe.Appx -O %UserProfile%\AppData\Local\Temp\UIXaml.Appx
wget -q --show-progress --no-check-certificate https://github.com/ItsMine-Project/ItsMine-UWP-App-Patched-x64/raw/main/Microsoft.NET.Native.Framework.2.2_2.2.29512.0_x64__8wekyb3d8bbwe.Appx -O %UserProfile%\AppData\Local\Temp\NetFramework.Appx
wget -q --show-progress --no-check-certificate https://github.com/ItsMine-Project/ItsMine-UWP-App-Patched-x64/raw/main/Microsoft.NET.Native.Runtime.2.2_2.2.28604.0_x64__8wekyb3d8bbwe.Appx -O %UserProfile%\AppData\Local\Temp\NetRun.Appx
wget -q --show-progress --no-check-certificate https://github.com/ItsMine-Project/ItsMine-UWP-App-Patched-x64/raw/main/Microsoft.VCLibs.140.00_14.0.30035.0_x64__8wekyb3d8bbwe.Appx -O %UserProfile%\AppData\Local\Temp\VCLibs.Appx
cls
echo  [96mExtracting Package...
timeout /t 2 /nobreak > nul
C:\ItsMineTweaker\7z1900-extra\7za.exe x %Temp%\Phone.7z -O%Temp%\Phone -pitsmine2077 1>nul 2>nul
del %Temp%\Phone.7z
cls
echo  [96mInstalling Your Phone..
powershell Add-AppxPackage %Temp%\*.Appx 1>nul 2>nul
powershell Add-AppxPackage %Temp%\Phone\*.AppxBundle 1>nul 2>nul
cls
echo  [96mCleaning Temporary File...
timeout /t 1 /nobreak > nul
rd /s /q %Temp%\Phone
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:StorePatch
cls
echo  [96mChecking 7z1900-extra Folder...
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
if not exist "C:\ItsMineTweaker\7z1900-extra" (
  cls
  echo  [96mNot found 7z1900-extra Folder. Downloading 7z1900-extra...
  wget -q --show-progress --no-check-certificate https://github.com/ItsMine-Project/Files/raw/main/7z1900-extra-ItsMine-Project.zip -O %UserProfile%\AppData\Local\Temp\7z1900-extra.zip"
  powershell -command "Expand-Archive -Force %Temp%\7z1900-extra.zip C:\ItsMineTweaker\7z1900-extra" 1>nul 2>nul
  del %Temp%\7z1900-extra.zip
)
cls
echo  [96mDownloading UWP Fix Packages...
wget -q --show-progress --no-check-certificate https://github.com/ItsMine-Project/ItsMine-UWP-App-Patched-x64/archive/refs/heads/main.zip -O %UserProfile%\AppData\Local\Temp\ItsMine-UWP-App-Patched-x64.zip"
cls
echo  [96mExtracting Packages...
C:\ItsMineTweaker\7z1900-extra\7za.exe x %Temp%\ItsMine-UWP-App-Patched-x64.zip -O%UserProfile%\AppData\Local\Temp\ItsMine-UWP-App-Patched-x64 1>nul 2>nul
del %Temp%\ItsMine-UWP-App-Patched-x64.zip
cls
echo  [96mInstalling UWP Fix Packages...
powershell Add-AppxPackage %Temp%\ItsMine-UWP-App-Patched-x64\*.Appx 1>nul 2>nul
cls
echo  [96mCleaning Temporary File...
timeout /t 1 /nobreak > nul
rd /s /q %Temp%\ItsMine-UWP-App-Patched-x64
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:DriverEasy
cls
echo %check%
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
cls
echo  [96mChecking 7z1900-extra Folder...
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
if not exist "C:\ItsMineTweaker\7z1900-extra" (
  cls
  echo  [96mNot found 7z1900-extra Folder. Downloading 7z1900-extra...
  wget -q --show-progress --no-check-certificate "Invoke-WebRequest https://github.com/ItsMine-Project/Files/raw/main/7z1900-extra-ItsMine-Project.zip -O %UserProfile%\AppData\Local\Temp\7z1900-extra.zip"
  powershell -command "Expand-Archive -Force %Temp%\7z1900-extra.zip C:\ItsMineTweaker\7z1900-extra" 1>nul 2>nul
  del %Temp%\7z1900-extra.zip
)
cls
echo %start%
timeout /t 2 /nobreak > nul
cls
echo  [96mDownloading Driver Easy Portable...
wget -q --show-progress --no-check-certificate https://github.com/ItsMine-Project/Files/raw/main/DriverEasyPortable-ItsMine-Project.zip -O C:\ItsMineTweaker\Files\DriverEasyPortable-ItsMine-Project.zip"
cls
echo  [96mExtracting Zip...
timeout /t 2 /nobreak > nul
C:\ItsMineTweaker\7z1900-extra\7za.exe x C:\ItsMineTweaker\Files\DriverEasyPortable-ItsMine-Project.zip -OC:\ItsMineTweaker\Files\DriverEasyPortable-ItsMine-Project -pitsmine2077 1>nul 2>nul
move C:\ItsMineTweaker\Files\DriverEasyPortable-ItsMine-Project\DriverEasyPortable.lnk %UserProfile%/Desktop
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:DriverBooster
cls
echo %check%
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
cls
echo  [96mChecking 7z1900-extra Folder...
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
if not exist "C:\ItsMineTweaker\7z1900-extra" (
  cls
  echo  [96mNot found 7z1900-extra Folder. Downloading 7z1900-extra...
  wget -q --show-progress --no-check-certificate https://github.com/ItsMine-Project/Files/raw/main/7z1900-extra-ItsMine-Project.zip -O %UserProfile%\AppData\Local\Temp\7z1900-extra.zip"
  powershell -command "Expand-Archive -Force %Temp%\7z1900-extra.zip C:\ItsMineTweaker\7z1900-extra" 1>nul 2>nul
  del %Temp%\7z1900-extra.zip
)
cls
echo %start%
timeout /t 2 /nobreak > nul
cls
echo  [96mDownloading Driver Booster Portable...
wget -q --show-progress --no-check-certificate https://github.com/ItsMine-Project/Files/raw/main/DriverBoosterPortable-ItsMine-Project.7z -O C:\ItsMineTweaker\Files\DriverBoosterPortable-ItsMine-Project.zip"
cls
echo  [96mExtracting Zip...
timeout /t 2 /nobreak > nul
C:\ItsMineTweaker\7z1900-extra\7za.exe x C:\ItsMineTweaker\Files\DriverBoosterPortable-ItsMine-Project.zip -OC:\ItsMineTweaker\Files\DriverBoosterPortable-ItsMine-Project -pitsmine2077 1>nul 2>nul
move C:\ItsMineTweaker\Files\DriverBoosterPortable-ItsMine-Project\DriverBoosterPortable.lnk %UserProfile%/Desktop
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:Vcredist
cls
echo  [96mChecking 7z1900-extra Folder...
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
if not exist "C:\ItsMineTweaker\7z1900-extra" (
  cls
  echo  [96mNot found 7z1900-extra Folder. Downloading 7z1900-extra...
  wget -q --show-progress --no-check-certificate https://github.com/ItsMine-Project/Files/raw/main/7z1900-extra-ItsMine-Project.zip -O %UserProfile%\AppData\Local\Temp\7z1900-extra.zip"
  powershell -command "Expand-Archive -Force %Temp%\7z1900-extra.zip C:\ItsMineTweaker\7z1900-extra" 1>nul 2>nul
  del %Temp%\7z1900-extra.zip
)
cls
echo  [96mDownloading Microsoft Visual C++ Redistributable (AIO)...
wget -q --show-progress --no-check-certificate https://github.com/abbodi1406/vcredist/releases/download/v0.54.0/VisualCppRedist_AIO_x86_x64_54.zip -O %UserProfile%\AppData\Local\Temp\VisualCppRedist_AIO_x86_x64_54.zip"
cls
echo  [96mExtracting Package...
timeout /t 2 /nobreak > nul
C:\ItsMineTweaker\7z1900-extra\7za.exe x %Temp%\VisualCppRedist_AIO_x86_x64_54.zip -O%Temp% 1>nul 2>nul
cls
echo  [96mInstalling Microsoft Visual C++ Redistributable (AIO)...
timeout /t 2 /nobreak > nul
%Temp%\VisualCppRedist_AIO_x86_x64.exe /y
cls
echo  [96mCleaning Temporary File...
timeout /t 1 /nobreak > nul
del %Temp%\VisualCppRedist_AIO_x86_x64_54.exe
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:7Zip
cls
echo %check%
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
cls
echo %start%
timeout /t 2 /nobreak > nul
cls
echo  [96mDownloading 7Zip...
wget -q --show-progress --no-check-certificate https://www.7-zip.org/a/7z1900-x64.exe -O C:\ItsMineTweaker\Files\7z1900-x64.exe"
goto End

:Net35
cls
echo  [96mChecking 7z1900-extra Folder...
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
if not exist "C:\ItsMineTweaker\7z1900-extra" (
  cls
  echo  [96mNot found 7z1900-extra Folder. Downloading 7z1900-extra...
  wget -q --show-progress --no-check-certificate https://github.com/ItsMine-Project/Files/raw/main/7z1900-extra-ItsMine-Project.zip -O %UserProfile%\AppData\Local\Temp\7z1900-extra.zip"
  powershell -command "Expand-Archive -Force %Temp%\7z1900-extra.zip C:\ItsMineTweaker\7z1900-extra" 1>nul 2>nul
  del %Temp%\7z1900-extra.zip
)
cls
echo  [96mDownloading .NET Framework 3.5...
wget -q --show-progress --no-check-certificate https://github.com/abbodi1406/dotNetFx35W10/releases/download/v0.20.01/dotNetFx35_WX_9_x86_x64.zip -O %UserProfile%\AppData\Local\Temp\dotNetFx35_WX_9_x86_x64.zip"
cls
echo  [96mExtracting Package...
timeout /t 2 /nobreak > nul
C:\ItsMineTweaker\7z1900-extra\7za.exe x %Temp%\dotNetFx35_WX_9_x86_x64.zip -O%Temp% 1>nul 2>nul
del %Temp%\dotNetFx35_WX_9_x86_x64.zip
cls
echo  [96mInstalling .NET Framework 3.5...
timeout /t 2 /nobreak > nul
%Temp%\dotNetFx35_WX_9_x86_x64 /SILENT /NORESTART
cls
echo  [96mCleaning Temporary File...
timeout /t 1 /nobreak > nul
del %Temp%\dotNetFx35_WX_9_x86_x64.exe
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:Net452
cls
echo  [96mChecking 7z1900-extra Folder...
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
cls
echo  [96mDownloading .NET Framework 4.5.2...
wget -q --show-progress --no-check-certificate https://download.microsoft.com/download/E/2/1/E21644B5-2DF2-47C2-91BD-63C560427900/NDP452-KB2901907-x86-x64-AllOS-ENU.exe -O %UserProfile%\AppData\Local\Temp\NDP452-KB2901907-x86-x64-AllOS-ENU.exe"
cls
echo  [96mInstalling .NET Framework 4.5.2...
timeout /t 2 /nobreak > nul
%Temp%\NDP452-KB2901907-x86-x64-AllOS-ENU.exe /q /norestart
cls
echo  [96mCleaning Temporary File...
timeout /t 1 /nobreak > nul
del %Temp%\NDP452-KB2901907-x86-x64-AllOS-ENU.exe
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:DirectX
cls
echo %check%
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
cls
echo %start%
timeout /t 2 /nobreak > nul
cls
echo  [96mDownloading DirectX End-User Runtime...
wget -q --show-progress --no-check-certificate https://download.microsoft.com/download/1/7/1/1718CCC4-6315-4D8E-9543-8E28A4E18C4C/dxwebsetup.exe -O C:\ItsMineTweaker\Files\dxwebsetup.exe"
goto End

:Open
cls
echo  [96mOpening...
timeout /t 2 /nobreak > nul
%SystemRoot%\explorer.exe "C:\ItsMineTweaker\Files"
cls
echo  !finish!
timeout /t 1 /nobreak > nul
goto Install

:CDOC
cls
echo  [96mClearing Delivery Optimization Cache...
timeout /t 2 /nobreak > nul
powershell Delete-DeliveryOptimizationCache -Force > nul
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:Activate1
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m======================================================================
echo   Choose your Windows Editions. (Trial activate for 6 month)
echo  ======================================================================
echo.
echo   [1] Pro
echo   [2] Pro N
echo   [3] Pro Workstations
echo   [4] Pro Workstations N
echo   [5] Pro Education
echo   [6] Pro Education N
echo   [7] Enterprise
echo   [8] Enterprise N
echo.
echo   [9] Check Expire Date
echo.
echo  ======================================================================
echo   Note : Require Internet Connection for do this process.
echo        : If you like Windows Please Consider Buy Full Windows License.
echo  ======================================================================
echo.
echo   [0] Exit
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto Pro
if '%choice%'=='2' goto ProN
if '%choice%'=='3' goto ProWork
if '%choice%'=='4' goto ProWorkN
if '%choice%'=='5' goto ProEdu
if '%choice%'=='6' goto ProEduN
if '%choice%'=='7' goto ProEnt
if '%choice%'=='8' goto ProEntN
if '%choice%'=='9' goto Xpr
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto Activate1

:Pro
cls
echo  [96mActivating Windows...
timeout /t 2 /nobreak > nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX > nul
cscript //nologo c:\windows\system32\slmgr.vbs /skms kms.lotro.cc > nul
cscript //nologo c:\windows\system32\slmgr.vbs /ato > nul
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:ProN
cls
echo  [96mActivating Windows...
timeout /t 2 /nobreak > nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk MH37W-N47XK-V7XM9-C7227-GCQG9 > nul
cscript //nologo c:\windows\system32\slmgr.vbs /skms kms.lotro.cc > nul
cscript //nologo c:\windows\system32\slmgr.vbs /ato > nul
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:ProWork
cls
echo  [96mActivating Windows...
timeout /t 2 /nobreak > nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J > nul
cscript //nologo c:\windows\system32\slmgr.vbs /skms kms.lotro.cc > nul
cscript //nologo c:\windows\system32\slmgr.vbs /ato > nul
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:ProWorkN
cls
echo  [96mActivating Windows...
timeout /t 2 /nobreak > nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk 9FNHH-K3HBT-3W4TD-6383H-6XYWF > nul
cscript //nologo c:\windows\system32\slmgr.vbs /skms kms.lotro.cc > nul
cscript //nologo c:\windows\system32\slmgr.vbs /ato > nul
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:ProEdu
cls
echo  [96mActivating Windows...
timeout /t 2 /nobreak > nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2 > nul
cscript //nologo c:\windows\system32\slmgr.vbs /skms kms.lotro.cc > nul
cscript //nologo c:\windows\system32\slmgr.vbs /ato > nul
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:ProEduN
cls
echo  [96mActivating Windows...
timeout /t 2 /nobreak > nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ > nul
cscript //nologo c:\windows\system32\slmgr.vbs /skms kms.lotro.cc > nul
cscript //nologo c:\windows\system32\slmgr.vbs /ato > nul
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:ProEnt
cls
echo  [96mActivating Windows...
timeout /t 2 /nobreak > nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43 > nul
cscript //nologo c:\windows\system32\slmgr.vbs /skms kms.lotro.cc > nul
cscript //nologo c:\windows\system32\slmgr.vbs /ato > nul
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:ProEntN
cls
echo  [96mActivating Windows...
timeout /t 2 /nobreak > nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4 > nul
cscript //nologo c:\windows\system32\slmgr.vbs /skms kms.lotro.cc > nul
cscript //nologo c:\windows\system32\slmgr.vbs /ato > nul
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:Xpr
cls
slmgr/xpr
timeout /t 2 /nobreak > nul
goto Activate1

:not_supported
cls
echo  [91mSorry, Your Windows is not Support.
timeout /t 2 /nobreak > nul
goto Install

:W11
setlocal EnableExtensions EnableDelayedExpansion
set "Windows11=0.22000"
if not "%Windows11%"=="%build_n%" goto not_supported
cls
set win=[91m[4mWindows 11[0m
echo  [96m=========================================================
echo   Note : This tweak is work on %win% [96mOnly
echo  =========================================================
echo.
echo   Restore Windows 10 Context Menu
echo.
echo   [1] Enable.
echo   [2] Disable. (Restore to Windows 11 Context Menu)
echo.
echo  =========================================================
echo.
echo   Restore Classic File Explorer Ribbon
echo.
echo   [3] Enable.
echo   [4] Disable. (Restore to Windows 11 Ribbon)
echo.
echo  =========================================================
echo.
echo   [0] Exit.
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto W10CM
if '%choice%'=='2' goto W11CM
if '%choice%'=='3' goto Exp10
if '%choice%'=='4' goto Exp11
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto W11

:W10CM
cls
echo  [96mRestoring Windows 10 Context Menu...
timeout /t 2 /nobreak > nul
reg add "HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /ve /d "" /f
taskkill /f /im explorer.exe & start explorer
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:W11CM
cls
echo  [96mRestoring Windows 11 Context Menu...
timeout /t 2 /nobreak > nul
reg delete "HKCU\SOFTWARE\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f > nul
taskkill /f /im explorer.exe & start explorer
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:Exp10
cls
echo  [96mRestoring Windows 10 Context Menu...
timeout /t 2 /nobreak > nul
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{e2bf9676-5f8f-435c-97eb-11607a5bedf7}" /t REG_SZ /d "" /f > nul
taskkill /f /im explorer.exe & start explorer
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:Exp11
cls
echo  [96mRestoring Windows 11 Context Menu...
timeout /t 2 /nobreak > nul
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{e2bf9676-5f8f-435c-97eb-11607a5bedf7}" /f > nul
taskkill /f /im explorer.exe & start explorer
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:Patch1
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m============================================================
echo   File type .zip ^| File size 28.2 MB
echo  ============================================================
echo.
echo   Choose your options.
echo.
echo   [1] Install UWP Apps Patched Fix.
echo   [2] Remove  UWP Apps Patched Fix.
echo.
echo  ============================================================
echo   Note : Require Internet Connection for do this process.
echo        : This Option is for who want to Sideload App Without
echo          Microsoft Store and Fix issue while install Apps
echo  ============================================================
echo.
echo  [0] Exit
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto StorePatch
if '%choice%'=='2' goto DelPatch1
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto Patch1

:Brave1
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m=========================================================
echo   File type .exe ^| File size 1.18 MB
echo  =========================================================
echo.
echo   Do you want to Download Brave ?
echo.
echo   %yes%
echo   %no%
echo.
echo  =========================================================
echo   Note : Require Internet Connection for do this process.
echo  =========================================================
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto Brave
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto Brave1

:Chrome1
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m=========================================================
echo   File type .exe ^| File size 1.27 MB
echo  =========================================================
echo.
echo   Do you want to Download Google Chrome ?
echo.
echo   %yes%
echo   %no%
echo.
echo  =========================================================
echo   Note : Require Internet Connection for do this process.
echo  =========================================================
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto Chrome
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto Chrome1

:Firefox1
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m=========================================================
echo   File type .exe ^| File size 325 KB
echo  =========================================================
echo.
echo   Do you want to Download Mozilla Firefox ?
echo.
echo   %yes%
echo   %no%
echo.
echo  =========================================================
echo   Note : Require Internet Connection for do this process.
echo  =========================================================
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto Firefox
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto Firefox1

:Edge1
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m=========================================================
echo   File type .exe ^| File size 1.69 MB
echo  =========================================================
echo.
echo   Do you want to Download Microsoft Edge ?
echo.
echo   %yes%
echo   %no%
echo.
echo  =========================================================
echo   Note : Require Internet Connection for do this process.
echo  =========================================================
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto Edge
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto Edge1

:OperaGX1
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m=========================================================
echo   File type .exe ^| File size 3.08 MB
echo  =========================================================
echo.
echo   Do you want to Download OperaGX ?
echo.
echo   %yes%
echo   %no%
echo.
echo  =========================================================
echo   Note : Require Internet Connection for do this process.
echo  =========================================================
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto OperaGX
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto OperaGX1

:CLAN
cls
set oldname= 
set newname=
set /p oldname=[96mEnter your Current Name : 
set /p newname=[96mEnter your New Name : 
cls
echo  [96mChanging Your Name Account...
timeout /t 1 /nobreak > nul
wmic useraccount where name='%oldname%' rename '%newname%' >nul
cls
echo  [96m%finish% Sign Out or Restart to take effect.
timeout /t 2 /nobreak > nul
goto Install

:Error
echo.
echo  [93mSorry, Your OS is Not ItsMine Lite OS Project :(
timeout /t 4 /nobreak > nul
exit

:SXS
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m=========================================================
echo   Do you want to Cleanup WinSxS components ?
echo  =========================================================
echo.
echo   [1] Clean Up Now.
echo   [0] Not now.
echo.
echo  =========================================================
echo.

set choice=
set /p choice=[96mEnter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto Cleanup
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto SXS

:Cleanup
cls
echo [96mCleaning Up WinSxS Components...
timeout /t 1 /nobreak > nul
Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase
cls
echo [96mCleanup Successful.
timeout /t 2 /nobreak > nul
goto Install

:DirectX1
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m=========================================================
echo   File type .exe ^| File size 288.39 KB
echo  =========================================================
echo.
echo   Do you want to Download DirectX End-User Runtime ?
echo.
echo   %yes%
echo   %no%
echo.
echo  =========================================================
echo   Note : Require Internet Connection for do this process.
echo  =========================================================
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto DirectX
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto DirectX1

:CompactOS
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m=========================================================
echo   Choose your options.
echo  =========================================================
echo.
echo   [1] XPRESS4K   - Fast but weaklest.
echo   [2] XPRESS8K   - Fast and Better then XPRESS4K.
echo   [3] XPRESS16K  - Slow and Stronger.
echo   [4] LZX [LZMS] - Slow but Strongest.
echo.
echo  =========================================================
echo   Note : HDD Not Recommenced to use LZX Compact.
echo        : CompactOS Work only in C:\ Drive
echo  =========================================================
echo.
echo  =========================================================
echo   - This process will take 15-20 min.
echo   - HDD will take 30 min - 1 hours.
echo  =========================================================
echo.
echo  =========================================================
echo   These folder will be Compact
echo   C:\Program Files
echo   C:\Program Files (x86)
echo   C:\Users
echo   C:\Windows
echo  =========================================================
echo.
echo   [0] Exit.
echo.

set choice=
set /p choice=[96mEnter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto XPRESS4K
if '%choice%'=='2' goto XPRESS8K
if '%choice%'=='3' goto XPRESS16K
if '%choice%'=='4' goto LZX
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto CompactOS

:PASS
cls
set username= 
set password=
set /p username=[96mEnter your Current Name :  
set /p password=[93mEnter your New Password : 
cls
echo  [96mChanging Your Account Password... 
timeout /t 1 /nobreak > nul
net user '%username%' '%password%' >nul
cls
echo  !finish! 
timeout /t 2 /nobreak > nul
goto Install

:XPRESS4K
cls
echo  [96mDon 't do anyting when Compact Process is Start. 
timeout /t 2 /nobreak > nul
cls
cd c:\
compact /c /s /a /i %1 /exe:xpress4k 
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:XPRESS8K
cls
echo  [96mDon 't do anyting when Compact Process is Start. 
timeout /t 2 /nobreak > nul
cls
cd c:\
compact /c /s /a /i %1 /exe:xpress8k
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:XPRESS16K
cls
echo  [96mDon 't do anyting when Compact Process is Start. 
timeout /t 2 /nobreak > nul
cls
cd c:\
compact /c /s /a /i %1 /exe:xpress16k
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:LZX
cls
echo  [96mDon 't do anyting when Compact Process is Start. 
timeout /t 2 /nobreak > nul
cls
cd c:\
compact /c /s /a /i %1 /exe:lzx
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:AddUsers
cls
set user=
set pass=
set /p user=[96mEnter your New Account Name :  
set /p pass=[93mEnter your Password : 
cls
echo  [96mCreating Your New Account... 
timeout /t 1 /nobreak > nul
net user "%user%" "%pass%" /add >nul
cls
echo  !finish! 
timeout /t 2 /nobreak > nul
goto Install

:AddUsersAdmin
cls
set user=
set pass=
set /p user=[96mEnter your New Account Name :  
set /p pass=[93mEnter your Password : 
cls
echo  [96mCreating Your New Account... 
timeout /t 1 /nobreak > nul
net user "%user%" "%pass%" /add >nul
net localgroup Administrators "%user%" /add >nul
cls
echo  !finish! 
timeout /t 2 /nobreak > nul
goto Install

:AddUsers1
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m=========================================================
echo   Choose Account Group.
echo  =========================================================
echo.
echo   [1] Users
echo   [2] Administrator
echo.
echo  =========================================================
echo.
echo   [0] Exit
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto AddUsers
if '%choice%'=='2' goto AddUsersAdmin
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto AddUsers1

:DiskCleanUp
cls
echo  [96mOpening Disk Cleanup...
timeout /t 2 /nobreak > nul
start %WinDir%\system32\cleanmgr.exe
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:DualHub
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m===========================================================================
echo   Choose your options.
echo  ===========================================================================
echo.
echo   Action Center. Enable or Disable ? (Default is Disable in Windows 10)
echo.
echo   [1] Enable.
echo   [2] Disable.
echo.
echo  ===========================================================================
echo.
echo   Printer Spooler. Enable or Disable ? (Default is Disable)
echo.
echo   [3] Enable.
echo   [4] Disable.
echo.
echo  ===========================================================================
echo.
echo   [0] Exit.
echo.
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto ActionEnable
if '%choice%'=='2' goto ActionDisable
if '%choice%'=='3' goto PrinterEnable
if '%choice%'=='4' goto PrinterDisable
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto DualHub

:ActionEnable
cls
echo  [96mEnabling Action Center...
timeout /t 2 /nobreak > nul
reg delete "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
taskkill /f /im explorer.exe & start explorer
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:ActionDisable
cls
echo  [96mDisabling Action Center...
timeout /t 2 /nobreak > nul
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d "00000001" /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
taskkill /f /im explorer.exe & start explorer
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:PrinterEnable
cls
echo  [96mEnabling Printer Spooler Services...
timeout /t 2 /nobreak > nul
powershell Set-Service -Name Spooler -StartupType Automatic 1>nul 2>nul
powershell Start-Service -Name Spooler 1>nul 2>nul
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:PrinterDisable
cls
echo  [96mDisabling Printer Spooler Services...
timeout /t 2 /nobreak > nul
powershell Stop-Service -Name Spooler -Force 1>nul 2>nul
powershell Set-Service -Name Spooler -StartupType Disabled 1>nul 2>nul
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:Hibernate
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m=========================================================
echo   Hibernate. Enable or Disable ?
echo  =========================================================
echo.
echo   [1] Enable
echo   [2] Disable
echo.
echo  =========================================================
echo.
echo   [0] Exit
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto HibernateEnable
if '%choice%'=='2' goto HibernateDisable
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto Hibernate

:HibernateEnable
cls
echo  [96mEnabling Hibernate...
timeout /t 2 /nobreak > nul
powercfg.exe /hibernate on
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:HibernateDisable
cls
echo  [96mDisabling Hibernate...
timeout /t 2 /nobreak > nul
powercfg.exe /hibernate off
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:WinRE1
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m=========================================================
echo   Choose your options.
echo  =========================================================
echo.
echo   [1] Check WinRE Status
echo   [2] Enable WinRE
echo   [3] Disable WinRE
echo.
echo  =========================================================
echo.
echo   [0] Exit
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto WinREStatus
if '%choice%'=='2' goto WinREEnable
if '%choice%'=='3' goto WinREDisable
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto WinRE1

:WinREStatus
cls
reagentc /info
echo [96mPress any key to Exit...
pause > nul
goto WinRE1

:WinREEnable
cls
echo  [96mEnabling WinRE...
timeout /t 1 /nobreak > nul
reagentc /enable > nul
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:WinREDisable
cls
echo  [96mDisabling WinRE...
timeout /t 1 /nobreak > nul
reagentc /disable > nul
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:PageFile1
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m=========================================================
echo   Choose your options.
echo  =========================================================
echo.
echo   [1] Check PageFile Status
echo   [2] Enable PageFile
echo   [3] Disable PageFile
echo.
echo  =========================================================
echo.
echo   [0] Exit
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto PageFileStatus
if '%choice%'=='2' goto PageFileEnable
if '%choice%'=='3' goto PageFileDisable
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto WinRE1

:PageFileStatus
cls
wmic.exe pagefile list /format:list
pause
goto PageFile1

:PageFileEnable
cls
set drive=
set initialsize=
set maximumsize=
set /p drive=[96mEnter drive letter you want to insert PageFile :  
set /p initialsize=[93mEnter Initial Size [In MB] - [1 GB = 1024 MB] : 
set /p maximumsize=[93mEnter Maximum Size [In MB] - [1 GB = 1024 MB] : 
cls
echo  [96mEnabling PageFile...
timeout /t 1 /nobreak > nul
wmic pagefileset where name=”%drive%:\\pagefile.sys” set InitialSize=%initialsize%,MaximumSize=%maximumsize% > nul
if %errorlevel% equ 1 goto PageFileError
cls
echo  !finish! 
timeout /t 2 /nobreak > nul
goto Install

:PageFileError
cls
echo [91m Sorry, someting were wrong. Please Try again.
timeout /t 2 /nobreak > nul
goto Install

:PageFileDisable
cls
echo  [96mDisabling PageFile...
timeout /t 1 /nobreak > nul
wmic computersystem where name='%computername%' set AutomaticManagedPagefile=False
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:StopWinUpdate1
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m=========================================================
echo   Do you want to stop Windows Update until 3000 ?
echo  =========================================================
echo.
echo   %yes%
echo   %no%
echo.
echo  =========================================================
echo   Note : You must pause Windows Update in Settings before
echo        : you can use this options.
echo  =========================================================
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto StopWinUpdate
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto StopWinUpdate1

:StopWinUpdate
cls
echo  [96mStopping Windows Update... 
timeout /t 1 /nobreak > nul
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "PauseFeatureUpdatesStartTime" /t REG_SZ /d "2021-01-01T12:00:00Z" /f 
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "PauseQualityUpdatesStartTime" /t REG_SZ /d "2021-01-01T12:00:00Z" /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "PauseUpdatesExpiryTime" /t REG_SZ /d "3000-01-01T12:00:00Z" /f 
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "PauseFeatureUpdatesEndTime" /t REG_SZ /d "3000-01-01T12:00:00Z" /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "PauseQualityUpdatesEndTime" /t REG_SZ /d "3000-01-01T12:00:00Z" /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\Settings" /v "PausedQualityStatus" /t REG_DWORD /d "00000001" /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\Settings" /v "PausedFeatureStatus" /t REG_DWORD /d "00000001" /f
cls
echo  !finish! 
timeout /t 2 /nobreak > nul
goto Install

:Store1
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m========================================================================================
echo   File type .7z ^| File size 93.9 MB
echo  ========================================================================================
echo.
echo   Choose your options.
echo.
echo   [1] Install Microsoft Store.
echo   [2] Remove  Microsoft Store.
echo.
echo  ========================================================================================
echo   Note : Require Internet Connection for do this process.
echo        : If you have issue while install please install UWP Apps Patch Fix in option 16.
echo  ========================================================================================
echo.
echo   [0] Exit
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto Store
if '%choice%'=='2' goto DelStore1
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto Store1

:Check
mode con: cols=125 lines=35
if not "%1"=="am_admin" (powershell start -verb runas am_admin /b) 1>nul 2>nul
Set UseExpresssion=Ver
for /F "tokens=*" %%X IN ('%UseExpresssion%') do Set OSBuild=%%X
Set OSBuild=%OSBuild:*10.0.=%
Set OSBuild=%OSBuild:~0,-1%
timeout /t 2 /nobreak > nul
setlocal EnableDelayedExpansion

for /f "tokens=3" %%b in ('reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders" /V "Ver" 2^>nul') do set osver=%%b

set UseExpresssion=Reg Query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "ReleaseId" 1>nul 2>nul
for /f "tokens=*" %%k in ('%UseExpresssion%') do set ri=%%k
set ri=%ri:*REG_SZ    =%

for /f "tokens=3" %%e in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "DisplayVersion"') do set dv=%%e

reg query HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ShellCompatibility\Applications\ios.exe /v OsActive | find "true" 1>nul 2>nul
reg query HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ShellCompatibility\Applications\save.exe /v Choco | find "yes" 1>nul 2>nul
reg query HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v CodeVer 1>nul 2>nul
reg query HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v Ver 1>nul 2>nul

if %errorlevel% equ 0 goto Install
if %errorlevel% equ 1 goto Exit

:NETFrame1
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m=========================================================
echo   File type .exe ^| File size : .NET 3.5   45.2 MB
echo                                .NET 4.5.2 66.75 MB
echo  =========================================================
echo.
echo   Choose version you want to download ?
echo.
echo   [1] .NET Framework 3.5
echo   [2] .NET Framework 4.5.2
echo.
echo  =========================================================
echo   Note : Require Internet Connection for do this process.
echo  =========================================================
echo.
echo   [0] Exit
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto Net35
if '%choice%'=='1' goto Net452
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto NETFrame1

:Zune1
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m========================================================================================
echo   File type .7z ^| File size 18.8 MB
echo  ========================================================================================
echo.
echo   Choose your options.
echo.
echo   [1] Install Groove Music.
echo   [2] Remove  Groove Music.
echo.
echo  ========================================================================================
echo   Note : Require Internet Connection for do this process.
echo        : If you have issue while install please install UWP Apps Patch Fix in option 16.
echo  ========================================================================================
echo.
echo   [0] Exit
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto Zune
if '%choice%'=='2' goto DelZune1
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto Zune1

:Onedrive1
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m=========================================================
echo   File type .exe ^| File size 45.7 MB
echo  =========================================================
echo.
echo   Do you want to Download Onedrive ?
echo.
echo   %yes%
echo   %no%
echo.
echo  =========================================================
echo   Note : Require Internet Connection for do this process.
echo  =========================================================
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto Onedrive
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto Onedrive1

:Vcredist1
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m=========================================================
echo   File type .exe ^| File size 27.4 MB
echo  =========================================================
echo.
echo   Do you want to Install Microsoft Visual C++ Redistributable (AIO) ?
echo.
echo   %yes%
echo   %no%
echo.
echo  =========================================================
echo   Note : Require Internet Connection for do this process.
echo  =========================================================
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto Vcredist
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto Vcredist1

:YP1
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m========================================================================================
echo   File type .7z ^| File size 17 MB
echo  ========================================================================================
echo.
echo   Choose your options.
echo.
echo   [1] Install Your Phone.
echo   [2] Remove  Your Phone.
echo.
echo  ========================================================================================
echo   Note : Require Internet Connection for do this process.
echo        : If you have issue while install please install UWP Apps Patch Fix in option 16.
echo  ========================================================================================
echo.
echo   [0] Exit
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto YP
if '%choice%'=='2' goto DelYP1
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto YP1

:VLC1
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m=========================================================
echo   File type .exe ^| File size 40.7 MB
echo  =========================================================
echo.
echo   Do you want to Download VLC Media Player ?
echo.
echo   %yes%
echo   %no%
echo.
echo  =========================================================
echo    Note : Require Internet Connection for do this process.
echo  =========================================================
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto VLC
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto VLC1

:DriverEasy1
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m=========================================================
echo   File type .zip ^| File size 4.26 MB
echo  =========================================================
echo.
echo   Do you want to Download Driver Easy Protable ?
echo.
echo   %yes%
echo   %no%
echo.
echo  =========================================================
echo   Note : Require Internet Connection for do this process.
echo  =========================================================
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto DriverEasy
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto DriverEasy1

:DriverBooster1
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m=========================================================
echo   File type .zip ^| File size 30.68 MB
echo  =========================================================
echo.
echo   Do you want to Download Driver Booster Protable ?
echo.
echo   %yes%
echo   %no%
echo.
echo  =========================================================
echo   Note : Require Internet Connection for do this process.
echo  =========================================================
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto DriverBooster
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto DriverBooster1

:DelStore1
cls
echo  [96m=========================================================
echo   Are you sure to Remove Microsoft Store ?
echo  =========================================================
echo.
echo   [1] Sure.
echo   [0] Not sure.
echo.
echo  =========================================================
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto DelStore
if '%choice%'=='0' goto Store1
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto DelStore1

:DelStore
cls
echo  [96mRemoving Microsoft Store...
powershell Get-AppxPackage "Microsoft.WindowsStore" ^| Remove-AppxPackage -allUsers 1>nul 2>nul
powershell Get-AppxPackage "Microsoft.StorePurchaseApp" ^| Remove-AppxPackage -AllUsers 1>nul 2>nul
powershell Get-AppxPackage "Microsoft.Services.Store.Engagement" -allUsers ^| Remove-AppxPackage -AllUsers 1>nul 2>nul
powershell Get-AppxPackage "Microsoft.DesktopAppInstaller" ^| Remove-AppxPackage -allUsers 1>nul 2>nul
powershell Get-AppxPackage "Microsoft.XboxIdentityProvider" ^| Remove-AppxPackage -allUsers 1>nul 2>nul
powershell Get-AppXPackage "Microsoft.WindowsStore" -PackageTypeFilter bundle -allUsers ^| Remove-AppXPackage -allUsers 1>nul 2>nul
powershell Get-AppXPackage "Microsoft.StorePurchaseApp" -PackageTypeFilter bundle -allUsers ^| Remove-AppXPackage -allUsers 1>nul 2>nul
powershell Get-AppXPackage "Microsoft.Services.Store.Engagement" -PackageTypeFilter bundle -allUsers ^| Remove-AppXPackage -allUsers 1>nul 2>nul
powershell Get-AppXPackage "Microsoft.DesktopAppInstaller" -PackageTypeFilter bundle -allUsers ^| Remove-AppXPackage -allUsers 1>nul 2>nul
powershell Get-AppXPackage "Microsoft.XboxIdentityProvider" -PackageTypeFilter bundle -allUsers ^| Remove-AppXPackage -allUsers 1>nul 2>nul
powershell Remove-AppXProvisionedPackage -online -PackageName "Microsoft.WindowsStore" -allUsers 1>nul 2>nul
powershell Remove-AppXProvisionedPackage -online -PackageName "Microsoft.StorePurchaseApp" -allUsers 1>nul 2>nul
powershell Remove-AppXProvisionedPackage -online -PackageName "Microsoft.Services.Store.Engagement" -allUsers 1>nul 2>nul
powershell Remove-AppXProvisionedPackage -online -PackageName "Microsoft.DesktopAppInstaller" -allUsers 1>nul 2>nul
powershell Remove-AppXProvisionedPackage -online -PackageName "Microsoft.XboxIdentityProvider" -allUsers 1>nul 2>nul
goto DelPatch2

:DelZune1
cls
echo  [96m=========================================================
echo   Are you sure to Remove Groove Music ?
echo  =========================================================
echo.
echo   [1] Sure.
echo   [0] Not sure.
echo.
echo  =========================================================
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto DelZune
if '%choice%'=='0' goto Zune1
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto DelZune1

:DelZune
cls
echo  [96mRemoving Groove Music...
powershell Get-AppxPackage "Microsoft.ZuneMusic" ^| Remove-AppxPackage -allUsers 1>nul 2>nul
powershell Get-AppXPackage "Microsoft.ZuneMusic" -PackageTypeFilter bundle -allUsers ^| Remove-AppXPackage 1>nul 2>nul
powershell Remove-AppXProvisionedPackage -online -PackageName "Microsoft.ZuneMusic" -allUsers 1>nul 2>nul
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:DelYP1
cls
echo  [96m=========================================================
echo   Are you sure to Remove Your Phone ?
echo  =========================================================
echo.
echo   [1] Sure.
echo   [0] Not sure.
echo.
echo  =========================================================
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto DelYP
if '%choice%'=='0' goto Zune1
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto DelYP1

:DelYP
cls
echo  [96mRemoving Groove Music...
powershell Get-AppxPackage "Microsoft.YourPhone" ^| Remove-AppxPackage -allUsers 1>nul 2>nul
powershell Get-AppXPackage "Microsoft.YourPhone" -PackageTypeFilter bundle -allUsers ^| Remove-AppXPackage -allUsers 1>nul 2>nul
powershell Remove-AppXProvisionedPackage -online -PackageName "Microsoft.YourPhone" -allUsers 1>nul 2>nul
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install


:DelPatch2
cls
echo  [96m===========================================================================
echo   Do you want to Remove Vclibs ,UIXaml and .NetFramework-Runtime ?
echo  ===========================================================================
echo.
echo   %yes%
echo   %no%
echo.
echo  ===========================================================================
echo   Note : All UWP Apps will not work if you remove this.
echo          But you can reinstall it in option 16.If you want to use UWP Apps.
echo  ===========================================================================
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto DelPatch
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto DelPatch2

:DelPatch1
cls
echo  [96m==============================================================
echo   Are you sure to Remove UWP Apps Patched Fix ?
echo  ==============================================================
echo.
echo   [1] Sure.
echo   [0] Not sure.
echo.
echo  ==============================================================
echo   Note : All UWP Apps will not work if you remove this.
echo          But you can reinstall it.If you want to use UWP Apps.
echo  ==============================================================
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto DelPatch
if '%choice%'=='0' goto Patch1
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto DelPatch1

:DelPatch
cls
echo  [96mRemoving UWP Apps Patched Fix...
powershell Get-AppxPackage "Microsoft.NET.Native.Framework.1.6" ^| Remove-AppxPackage -allUsers 1>nul 2>nul
powershell Get-AppXPackage "Microsoft.NET.Native.Framework.1.6" -PackageTypeFilter bundle -allUsers ^| Remove-AppXPackage -allUsers 1>nul 2>nul
powershell Remove-AppXProvisionedPackage -online -PackageName "Microsoft.NET.Native.Framework.1.6" -allUsers 1>nul 2>nul
powershell Get-AppxPackage "Microsoft.NET.Native.Framework.2.2" ^| Remove-AppxPackage -allUsers 1>nul 2>nul
powershell Get-AppXPackage "Microsoft.NET.Native.Framework.2.2" -PackageTypeFilter bundle -allUsers ^| Remove-AppXPackage -allUsers 1>nul 2>nul
powershell Remove-AppXProvisionedPackage -online -PackageName "Microsoft.NET.Native.Framework.2.2" -allUsers 1>nul 2>nul
powershell Get-AppxPackage Microsoft.NET.Native.Runtime.1.6" ^| Remove-AppxPackage -allUsers 1>nul 2>nul
powershell Get-AppXPackage "Microsoft.NET.Native.Runtime.1.6" -PackageTypeFilter bundle -allUsers ^| Remove-AppXPackage -allUsers 1>nul 2>nul
powershell Remove-AppXProvisionedPackage -online -PackageName "Microsoft.NET.Native.Runtime.1.6" -allUsers 1>nul 2>nul
powershell Get-AppxPackage "Microsoft.NET.Native.Runtime.2.2" ^| Remove-AppxPackage -allUsers 1>nul 2>nul
powershell Get-AppXPackage "Microsoft.NET.Native.Runtime.2.2" -PackageTypeFilter bundle -allUsers ^| Remove-AppXPackage -allUsers 1>nul 2>nul
powershell Remove-AppXProvisionedPackage -online -PackageName "Microsoft.NET.Native.Runtime.2.2" -allUsers 1>nul 2>nul
powershell Get-AppxPackage "Microsoft.UI.Xaml.2.4" ^| Remove-AppxPackage -allUsers 1>nul 2>nul
powershell Get-AppXPackage "Microsoft.UI.Xaml.2.4" -PackageTypeFilter bundle -allUsers ^| Remove-AppXPackage -allUsers 1>nul 2>nul
powershell Remove-AppXProvisionedPackage -online -PackageName "Microsoft.UI.Xaml.2.4" -allUsers 1>nul 2>nul
powershell Get-AppxPackage "Microsoft.UI.Xaml.2.6" ^| Remove-AppxPackage -allUsers 1>nul 2>nul
powershell Get-AppXPackage "Microsoft.UI.Xaml.2.6" -PackageTypeFilter bundle -allUsers ^| Remove-AppXPackage -allUsers 1>nul 2>nul
powershell Remove-AppXProvisionedPackage -online -PackageName "Microsoft.UI.Xaml.2.6" -allUsers 1>nul 2>nul
powershell Get-AppxPackage "Microsoft.UI.Xaml.2.7" ^| Remove-AppxPackage -allUsers 1>nul 2>nul
powershell Get-AppXPackage "Microsoft.UI.Xaml.2.7" -PackageTypeFilter bundle -allUsers ^| Remove-AppXPackage -allUsers 1>nul 2>nul
powershell Remove-AppXProvisionedPackage -online -PackageName "Microsoft.UI.Xaml.2.7" -allUsers 1>nul 2>nul
powershell Get-AppxPackage "Microsoft.VCLibs.140.00_14.0.30035.0" ^| Remove-AppxPackage -allUsers 1>nul 2>nul
powershell Get-AppXPackage "Microsoft.VCLibs.140.00_14.0.30035.0" -PackageTypeFilter bundle -allUsers ^| Remove-AppXPackage -allUsers 1>nul 2>nul
powershell Remove-AppXProvisionedPackage -online -PackageName "Microsoft.VCLibs.140.00_14.0.30035.0" -allUsers 1>nul 2>nul
cls
echo  !finish!
timeout /t 2 /nobreak > nul
goto Install

:7Zip1
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m=========================================================
echo   File type .exe ^| File size 1.44 MB
echo  =========================================================
echo.
echo   Do you want to Download 7Zip ?
echo.
echo   %yes%
echo   %no%
echo.
echo  =========================================================
echo   Note : Require Internet Connection for do this process.
echo  =========================================================
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto 7Zip
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto 7Zip1

:Web
explorer https://Youtube.com/ItsMineProject
explorer https://itsmineproject.blogspot.com
goto Install

:UserReq
cls
echo  [96m============================================================
echo   User Request Program
echo  ============================================================
echo.
echo   [1] ^| CPU-Z v1.98 [91m[ .exe ^| 2.01 MB]
echo  [96m [2] ^| TechPowerUp GPU-Z v2.43 [91m[ .exe ^| 7.10 MB]
echo  [96m [3] ^| Msi AfterBurner Beta 4 [91m[ .zip ^| 51.7 MB]
echo  [96m [4] ^| Notepad++ v8.1.9 [91m[ .exe ^| 4.14 MB]
echo  [96m [5] ^| Daum PotPlayer v1.7.21556 [91m[ .exe ^| 29.0 MB]
echo  [96m [6] ^| Gom Player v2.3.70.5334 [91m[ .exe ^| 28.5 MB]
echo  [96m [7] ^| Format Factory v5.8.1 [91m[ .exe ^| 99.2 MB]
echo  [96m [8] ^| Zoom v5.8.3.1581 [91m[ .exe ^| 19.1 MB]
echo  [96m [9] ^| TeamViewer v15.22.3 [91m[ .exe ^| 33.0 MB]
echo  [96m [10]^| AIMP v5.00.2338 [91m[ .exe ^| 13.1 MB]
echo  [96m [11]^| Foxit PDF Reader v11.0.1.49938 [91m[ .exe ^| 1.44 MB]
echo  [96m [12]^| Paint.NET v4.3.2 [91m[ .zip ^| 1.68 MB]
echo  [96m [13]^| Skype v8.78.0.159 [91m[ .exe ^| 80.9 MB]
echo  [96m [14]^| Discord v1.0.9003 [91m[ .exe ^| 79.1 MB]
echo.
echo  [96m============================================================
echo.
echo   [0] ^| Exit
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='0' goto Install
if '%choice%'=='1' goto CPU-Z
if '%choice%'=='2' goto GPU-Z
if '%choice%'=='3' goto AfterBurner
if '%choice%'=='4' goto NPP
if '%choice%'=='5' goto PP
if '%choice%'=='6' goto Gom
if '%choice%'=='7' goto Format
if '%choice%'=='8' goto Zoom
if '%choice%'=='9' goto TV
if '%choice%'=='10' goto AIMP
if '%choice%'=='11' goto Fox
if '%choice%'=='12' goto Paint
if '%choice%'=='13' goto Skype
if '%choice%'=='14' goto Discord
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto UserReq

:Request
cls
explorer https://www.cognitoforms.com/ItsMineProject/ItsMineTweakerRequest
goto Install

:CPU-Z
cls
echo %check%
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
cls
echo %start%
timeout /t 2 /nobreak > nul
cls
echo  [96mDownloading CPU-Z...
wget -q --show-progress --no-check-certificate https://download.cpuid.com/cpu-z/cpu-z_1.98-en.exe -O C:\ItsMineTweaker\Files\cpu-z_1.98-en.exe"
goto End

:GPU-Z
cls
echo %check%
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
cls
echo %start%
timeout /t 2 /nobreak > nul
cls
echo  [96mDownloading TechPowerUp GPU-Z...
wget -q --show-progress --no-check-certificate https://github.com/ItsMine-Project/Files/raw/main/GPU-Z.exe -O C:\ItsMineTweaker\Files\GPU-Z.2.43.0.exe"
goto End

:AfterBurner
cls
echo %check%
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
cls
echo  [96mChecking 7z1900-extra Folder...
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
if not exist "C:\ItsMineTweaker\7z1900-extra" (
  cls
  echo  [96mNot found 7z1900-extra Folder. Downloading 7z1900-extra...
  wget -q --show-progress --no-check-certificate https://github.com/ItsMine-Project/Files/raw/main/7z1900-extra-ItsMine-Project.zip -O %UserProfile%\AppData\Local\Temp\7z1900-extra.zip"
  powershell -command "Expand-Archive -Force %Temp%\7z1900-extra.zip C:\ItsMineTweaker\7z1900-extra" 1>nul 2>nul
  del %Temp%\7z1900-extra.zip
)
cls
echo %start%
timeout /t 2 /nobreak > nul
cls
echo  [96mDownloading Msi AfterBurner...
wget -q --show-progress --no-check-certificate https://download.msi.com/uti_exe/vga/MSIAfterburnerSetup.zip?__token__=exp=1636193228~acl=/*~hmac=bda846bea884c09cd6e016cf97f5eae6eef4f04bffae5c8c039aa39600d628f4 -O C:\ItsMineTweaker\Files\MSIAfterburnerSetup.zip"
echo
echo  [96mExtracting Zip...
timeout /t 2 /nobreak > nul
C:\ItsMineTweaker\7z1900-extra\7za.exe x C:\ItsMineTweaker\Files\MSIAfterburnerSetup.zip -OC:\ItsMineTweaker\Files\ 1>nul 2>nul
del C:\ItsMineTweaker\Files\MSIAfterburnerSetup.zip
goto End

:NPP
cls
echo %check%
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
cls
echo %start%
timeout /t 2 /nobreak > nul
cls
echo  [96mDownloading Notepad++...
wget -q --show-progress --no-check-certificate https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.1.9/npp.8.1.9.Installer.x64.exe -O C:\ItsMineTweaker\Files\npp.8.1.9.Installer.x64.exe"
goto End

:PP
cls
echo %check%
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
cls
echo %start%
timeout /t 2 /nobreak > nul
cls
echo  [96mDownloading PotPlayer...
wget -q --show-progress --no-check-certificate https://t1.daumcdn.net/potplayer/PotPlayer/Version/Latest/PotPlayerSetup64.exe -O C:\ItsMineTweaker\Files\PotPlayerSetup64.exe"
goto End

:Gom
cls
echo %check%
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
cls
echo %start%
timeout /t 2 /nobreak > nul
cls
echo  [96mDownloading Gom Player...
wget -q --show-progress --no-check-certificate https://cdn.gomlab.com/gretech/player/GOMPLAYERGLOBALSETUP_CHROME.EXE -O C:\ItsMineTweaker\Files\GOMPLAYERGLOBALSETUP.EXE"
goto End

:Format
cls
echo %check%
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
cls
echo %start%
timeout /t 2 /nobreak > nul
cls
echo  [96mDownloading Format Factory...
wget -q --show-progress --no-check-certificate http://public.pcfreetime.com/FFSetup5.8.1.0.exe -O C:\ItsMineTweaker\Files\FFSetup5.8.1.0.exe"
goto End

:Zoom
cls
echo %check%
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
cls
echo %start%
timeout /t 2 /nobreak > nul
cls
echo  [96mDownloading Zoom...
wget -q --show-progress --no-check-certificate https://cdn.zoom.us/prod/5.8.3.1581/x64/ZoomInstaller.exe -O C:\ItsMineTweaker\Files\ZoomInstaller.exe"
goto End

:TV
cls
echo %check%
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
cls
echo %start%
timeout /t 2 /nobreak > nul
cls
echo  [96mDownloading TeamViewer...
wget -q --show-progress --no-check-certificate https://dl.teamviewer.com/download/version_15x/TeamViewer_Setup_x64.exe -O C:\ItsMineTweaker\Files\TeamViewer_Setup_64.exe"
goto End

:AIMP
cls
echo %check%
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
cls
echo %start%
timeout /t 2 /nobreak > nul
cls
echo  [96mDownloading ...
wget -q --show-progress --no-check-certificate https://aimp.ru/files/windows/builds/aimp_5.00.2338.exe -O C:\ItsMineTweaker\Files\aimp_5.00.2338.exe"
goto End

:Fox
cls
echo %check%
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
cls
echo %start%
timeout /t 2 /nobreak > nul
cls
echo  [96mDownloading Foxit PDF Reader..
wget -q --show-progress --no-check-certificate https://cdn01.foxitsoftware.com/pub/foxit/reader/desktop/win/11.x/11.1/en_us/FoxitPDFReader111_Setup.exe -O C:\ItsMineTweaker\Files\FoxitPDFReader111_Setup.exe"
goto End

:Paint
cls
echo %check%
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
cls
echo  [96mChecking 7z1900-extra Folder...
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
if not exist "C:\ItsMineTweaker\7z1900-extra" (
  cls
  echo  [96mNot found 7z1900-extra Folder. Downloading 7z1900-extra...
  wget -q --show-progress --no-check-certificate https://github.com/ItsMine-Project/Files/raw/main/7z1900-extra-ItsMine-Project.zip -O %Temp%\7z1900-extra.zip"
  powershell -command "Expand-Archive -Force %Temp%\7z1900-extra.zip C:\ItsMineTweaker\7z1900-extra" 1>nul 2>nul
  del %Temp%\7z1900-extra.zip
)
cls
echo %start%
timeout /t 2 /nobreak > nul
cls
echo  [96mDownloading Paint.NET..
wget -q --show-progress --no-check-certificate https://www.dotpdn.com/files/paint.net.4.3.2.install.anycpu.web.zip -O C:\ItsMineTweaker\Files\paint.net.4.3.2.install.anycpu.web.zip"
cls
echo  [96mExtracting Zip...
timeout /t 2 /nobreak > nul
C:\ItsMineTweaker\7z1900-extra\7za.exe x C:\ItsMineTweaker\Files\paint.net.4.3.2.install.anycpu.web.zip -OC:\ItsMineTweaker\Files\ 1>nul 2>nul
del C:\ItsMineTweaker\Files\paint.net.4.3.2.install.anycpu.web.zip 1>nul 2>nul
goto End

:Skype
cls
echo %check%
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
cls
echo %start%
timeout /t 2 /nobreak > nul
cls
echo  [96mDownloading Skype..
wget -q --show-progress --no-check-certificate https://download.skype.com/s4l/download/win/Skype-8.78.0.159.exe -O C:\ItsMineTweaker\Files\Skype-8.78.0.159.exe"
goto End

:Discord
cls
echo %check%
timeout /t 2 /nobreak > nul
if not exist "C:\ItsMineTweaker" md "C:\ItsMineTweaker" 2>nul
if not exist "C:\ItsMineTweaker\Files" md "C:\ItsMineTweaker\Files" 2>nul
cls
echo %start%
timeout /t 2 /nobreak > nul
cls
echo  [96mDownloading Discord..
wget -q --show-progress --no-check-certificate https://dl.discordapp.net/distro/app/stable/win/x86/1.0.9003/DiscordSetup.exe -O C:\ItsMineTweaker\Files\DiscordSetup.exe"
goto End

:Exit
exit

:Install
timeout /t 2 /nobreak > nul
cls

if defined ProgramFiles(x86) (set bit=x64) else (set bit=x86)

set "find=Microsoft "
set "replace="
for /f "tokens=2 delims=," %%i in ('wmic os get caption /format:csv') do (
set "os=%%i"
set "os=!os:%find%=%replace%!"
   )
   
set "find=&amp;"
set "replace=-"
for /f "tokens=2 delims==" %%f in ('wmic timezone get * /value ^| find /I "Description"') do (
set "tz=%%f"
set "tz=!tz:%find%=%replace%!"
   )

for /f "tokens=2 delims==" %%m in ('wmic pagefile list /format:list ^| find /I "Description"') do set page=%%m

for /f "tokens=2 delims==" %%m in ('wmic computersystem list /format:list ^| find /I "Model"') do set sysmodel=%%m

for /f "tokens=5,6 delims=,. "  %%a in ('ver') do set "build_n=%%a.%%b"

set finish=Finish ^^!
set we= ^^!
set yes=[1] Yes.
set no=[0] No.
set nofun=[91m There is no this options. Try again.
set check= Checking Output Folder...
set start= OK. Now Download is started.

echo  [37m========================================================================================================================
echo   ItsMine Tweaker [96m1^.0^.3^.1[0m [93mStable Release[0m ^| [91m%bit%[0m Based System ^| Computer Name [93m%computername%[0m ^| User [96m%UserName%[0m
echo   OS Info [92m%os%[0m ^| [41m%ri%[0m [45m%dv%[0m [96m[46m%OSBuild%[0m [105m%osver%[0m ^| Paging File Location [95m%page%[0m
echo   Time Zone [94m%tz%[0m ^| Device Model [93m%sysmodel%[0m
echo   Follow Me on [95mYoutube^.com/ItsMineProject[0m or [91mitsmineproject.blogspot.com[0m For daily update New Windows Version and More!we!
echo  ========================================================================================================================
echo.
echo  [96m-------------------------                              --------------------------
echo  Tweak ^| Cleanup ^| Others                               Daily Use Program ^| Other
echo  -------------------------                              --------------------------
echo  [1] ^| Action Center ^| Printer Spooler                  [17] ^| Microsoft Edge Chromium (Browser)
echo  [2] ^| Windows Recovery Environment (WinRE)             [18] ^| Google Chrome (Browser)
echo  [3] ^| Cleanup WinSxS Components                        [19] ^| VLC Media Player (Media Player)
echo  [4] ^| CompactOS ^| LZX Compact                          [20] ^| Mozilla Firefox (Browser)
echo  [5] ^| Stop Windows Update Until 3000                   [21] ^| OperaGX (Browser)
echo  [6] ^| Disk Cleanup (Clear Cache)                       [22] ^| Brave (Browser)
echo  [7] ^| Clear Delivery Optimization Cache                [23] ^| Driver Easy Portable v5.6.13.33482
echo  [8] ^| Hibernate (Shutdown + Sleep)                     [24] ^| Driver Booster Portable v8.6.0.522
echo  [9] ^| Paging File (Addition Memory)                    [25] ^| 7Zip v21.03 Beta (2021-07-20)
echo  [36]^| Windows 11 Tweaks                                [26] ^| User Request
echo.
echo  [93m------------------                                     ------------
echo  UWP Apps ^| Others                                      Etc ^| Other
echo  ------------------                                     ------------
echo  [10] ^| Microsoft Store                                 [27] ^| Change Local Account Name
echo  [11] ^| Microsoft .NET Framework                        [28] ^| Change Local Account Password
echo  [12] ^| Groove Music (Zune Music)                       [29] ^| Create New Local Account
echo  [13] ^| Microsoft Onedrive                              [30] ^| DirectX End-User Runtime (Game support)
echo  [14] ^| Microsoft Visual C++ Redistributable (AIO)      [31] ^| ItsMine Activate
echo  [15] ^| Your Phone                                      [32] ^| Open File Download Folder
echo. [16] ^| UWP Apps Patch Fix (UWP Apps Support)           [33] ^| Request Features or Programs
echo. [35] ^| ItsMine Tweaker Changelog                       [34] ^| Check ItsMine Tweaker Update
echo.
echo.[0m

set choice=
set /p choice=[92mEnter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto DualHub
if '%choice%'=='2' goto WinRE1
if '%choice%'=='3' goto SXS
if '%choice%'=='4' goto CompactOS
if '%choice%'=='5' goto StopWinUpdate1
if '%choice%'=='6' goto DiskCleanUp
if '%choice%'=='7' goto CDOC1
if '%choice%'=='8' goto Hibernate
if '%choice%'=='9' goto PageFile1
if '%choice%'=='10' goto Store1
if '%choice%'=='11' goto NETFrame1
if '%choice%'=='12' goto Zune1
if '%choice%'=='13' goto Onedrive1
if '%choice%'=='14' goto Vcredist1
if '%choice%'=='15' goto YP1
if '%choice%'=='16' goto Patch1
if '%choice%'=='17' goto Edge1
if '%choice%'=='18' goto Chrome1
if '%choice%'=='19' goto VLC1
if '%choice%'=='20' goto FireFox1
if '%choice%'=='21' goto OperaGX1
if '%choice%'=='22' goto Brave1
if '%choice%'=='23' goto DriverEasy1
if '%choice%'=='24' goto DriverBooster1
if '%choice%'=='25' goto 7Zip1
if '%choice%'=='26' goto UserReq
if '%choice%'=='27' goto CLAN
if '%choice%'=='28' goto PASS
if '%choice%'=='29' goto AddUsers1
if '%choice%'=='30' goto DirectX1
if '%choice%'=='31' goto Activate1
if '%choice%'=='32' goto Open
if '%choice%'=='33' goto Request
if '%choice%'=='34' goto CheckUpdate
if '%choice%'=='35' goto Changelog
if '%choice%'=='36' goto W11
if '%choice%'=='Credit' goto Web

cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto Install

:CheckUpdate
cls
explorer https://itsmineproject.blogspot.com/p/itsmine-tweaker-center.html
goto Install

:Changelog
cls
echo  [96m=========================================================
echo   ItsMine Tweaker Changelog
echo  =========================================================
echo.
echo   V1.0.3.1 - First Release
echo   - First Release of ItsMine Tweaker.
echo.
echo  Press any key to Exit...
pause > nul
goto Install

:End
cls
echo  [96m=========================================================
echo   !finish! Do you want to Open Directory Folder ?
echo  =========================================================
echo.
echo   %yes%
echo   %no%
echo.
echo  =========================================================
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto Open
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto End

:CDOC1
setlocal EnableExtensions EnableDelayedExpansion
cls
echo  [96m=========================================================
echo   Do you want to Clear Delivery Optimization Cache ?
echo  =========================================================
echo.
echo   %yes%
echo   %no%
echo.
echo  =========================================================
echo.

set choice=
set /p choice=Enter your choice : 
if not '%choice%'=='' set choice=%choice:~0,15%
if '%choice%'=='1' goto CDOC
if '%choice%'=='0' goto Install
cls
echo %nofun%
timeout /t 2 /nobreak > nul
goto CDOC1

