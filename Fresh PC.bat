@echo off

::  █▄ ▄█ █ █▄ █ ▄▀▄ ▄▀▄
::  █ ▀ █ █ █ ▀█ ▀▄▀ █▀█

::Admin
:admin
title Admin Test
Reg.exe add HKLM /F >nul 2>&1
IF %ERRORLEVEL%==0 goto start
cls
color 4c
echo TITLE NOT RUNNING AS ADMIN
echo REOPEN RUNNING AS ADMIN
timeout 10
exit
::Admin End

::Menu
:start
cd %temp%
color 08
title FreshPC v1.5.5
cls
::  █▄ ▄█ █ █▄ █ ▄▀▄ ▄▀▄
::  █ ▀ █ █ █ ▀█ ▀▄▀ █▀█
ECHO ...............................................
ECHO PRESS SOMETHING...
ECHO ...............................................
ECHO.
ECHO 1 - Debloat
ECHO 2 - Install Programs
ECHO 3 - Activate Windows
ECHO 4 - Drivers
ECHO 5 - Bypass Wifi Turned Off
ECHO 6 - EXIT
ECHO.
SET /P M=Type a number then press ENTER:
IF %M%==1 GOTO debloat
IF %M%==2 GOTO install
IF %M%==3 GOTO activate
IF %M%==4 GOTO driver
IF %M%==5 GOTO wifi
IF %M%==6 GOTO exit
goto start
::Menu End

::  █▄ ▄█ █ █▄ █ ▄▀▄ ▄▀▄
::  █ ▀ █ █ █ ▀█ ▀▄▀ █▀█

:driver
cls
title FreshPC v1.5 - Install Drivers
ECHO.
ECHO ...............................................
ECHO PRESS SOMETHING.
ECHO ...............................................
ECHO.
ECHO 1 - Intel Wifi
ECHO 2 - Nivida Graphics
ECHO 3 - AMD Graphics
ECHO 4 - Back
ECHO.
SET /P M=Type a number then press ENTER:
IF %M%==1 GOTO intelwifi
IF %M%==2 GOTO nivi
IF %M%==3 GOTO amd
IF %M%==4 GOTO start

:amd
cls
echo Downloading...
echo.
echo.
curl https://drivers.amd.com/drivers/whql-amd-software-adrenalin-edition-22.11.2-win10-win11-dec8.exe -o amd.exe
start amd.exe
echo Press "Enter" When Done Installing.
pause >nul
taskkill /im amd.exe /f
del amd.exe /f
goto install

:nivi
cls
echo Downloading...
echo.
echo.
curl https://us.download.nvidia.com/GFE/GFEClient/3.27.0.112/GeForce_Experience_v3.27.0.112.exe -o nivi.exe
start nivi.exe
echo Press "Enter" When Done Installing.
pause >nul
taskkill /im nivi.exe /f
del nivi.exe /f
goto install

:intelwifi
cls
echo Downloading...
echo.
echo.

start intelwifi.exe
echo Press "Enter" When Done Installing.
pause >nul
taskkill /im intelwifi.exe /f
del intelwifi.exe /f
goto drivers

::Activate
:activate
cls
title FreshPC v1.5 - Activate Windows
color 08
cscript slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
cscript slmgr.vbs /skms kms.lotro.cc
cscript slmgr.vbs /ato
title FreshPC v1.5 - Activate Windows&cls&echo ************************************&echo Supported products:&echo - Windows Home&echo - Windows Professional&echo - Windows Enterprise, Enterprise LTSB&echo - Windows Education&echo.&echo.&echo ************************************ &echo Windows activation...
cscript //nologo c:\windows\system32\slmgr.vbs /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99 >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk PVMJN-6DFY6-9CCP6-7BKTT-D3WVR >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk MH37W-N47XK-V7XM9-C7227-GCQG9 >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2 >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43 >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4 >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk WNMTR-4C88C-JK8YV-HQ7T2-76DF9 >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk 2F77B-TNFGY-69QQF-B8YKP-D69TJ >nul
echo ************************************ &echo.&echo.&set i=1
:server
if %i%==1 set KMS_Sev=kms.shuax.com
if %i%==2 set KMS_Sev=NextLevel.uk.to
if %i%==3 set KMS_Sev=GuangPeng.uk.to
if %i%==4 set KMS_Sev=AlwaysSmile.uk.to
if %i%==5 set KMS_Sev=kms.chinancce.com 
if %i%==6 exit
cscript //nologo c:\windows\system32\slmgr.vbs /skms %KMS_Sev% >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ato | find /i "successfully" && (echo.& echo ************************************ & goto start) || (echo Please Wait... & echo Please wait... & echo. & echo. & set /a i+=1 & goto server)
cls
goto start
::Activate End

::  █▄ ▄█ █ █▄ █ ▄▀▄ ▄▀▄
::  █ ▀ █ █ █ ▀█ ▀▄▀ █▀█

:debloat
cls
title FreshPC v1.5 - Debloat
sfc /scannow
dism /online /cleanup-image /checkhealth\
for /f "tokens=3*" %%i in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkCards" /f "ServiceName" /s^|findstr /i /l "ServiceName"') do (
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v "TCPNoDelay" /d "1" /t REG_DWORD /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v "TcpAckFrequency" /d "1" /t REG_DWORD /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v "TcpDelAckTicks" /d "0" /t REG_DWORD /f
)
netsh winsock reset catalog
netsh int ip reset c:resetlog.txt
netsh int ip reset C:\tcplog.txt

netsh int tcp set supplemental Internet congestionprovider=ctcp
netsh int tcp set heuristics disabled
netsh int tcp set global initialRto=2000
netsh interface tcp set global MaxSynRetransmissions=2
netsh int tcp set global autotuninglevel=normal
netsh interface tcp set global rss=enabled
netsh int tcp set global rsc=disabled
netsh int tcp set global chimney=disabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=disabled
netsh int tcp set global ecncapability=enabled
netsh int tcp set global timestamps=disabled
netsh int tcp set global nonsackrttresiliency=disabled
cls
echo Downloading
powershell -Command "& {iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))}"
curl -L -o HoneCtrl.bat "https://github.com/auraside/HoneCtrl/releases/latest/download/HoneCtrl.Bat" >nul 2>&1
start HoneCtrl.Bat
cls
echo We would reccamind also running tron, you can download tron from here: https://bmrf.org/repos/tron
echo.
echo Press "Enter" When Done With Debloater, HoneCtrl (Tron is reccaminded).
pause >nul
goto start
::Debloat End

::  █▄ ▄█ █ █▄ █ ▄▀▄ ▄▀▄
::  █ ▀ █ █ █ ▀█ ▀▄▀ █▀█

::Install
:install
cls
title FreshPC v1.5 - Install Programs
ECHO.
ECHO ...............................................
ECHO PRESS SOMETHING.
ECHO ...............................................
ECHO.
ECHO 1 - Browsers
ECHO 2 - Games
ECHO 3 - Essentals
ECHO 4 - Ninite
ECHO 5 - Back
ECHO.
SET /P M=Type a number then press ENTER:
IF %M%==1 GOTO browser
IF %M%==2 GOTO games
IF %M%==3 GOTO ess
IF %M%==4 GOTO ninite
IF %M%==5 GOTO start
goto install

:ess
cls
echo Downloading...
echo.
echo.
curl https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-620.exe -o winrar-620.exe
start winrar-620.exe
echo Press "Enter" When Done Installing.
pause >nul
taskkill /im winrar-620.exe /f
del winrar-620.exe /f
goto install

:ninite
cls
start https://ninite.com
goto install

::  █▄ ▄█ █ █▄ █ ▄▀▄ ▄▀▄
::  █ ▀ █ █ █ ▀█ ▀▄▀ █▀█

:browser
cls
title FreshPC v1.5 - Install A Browser
ECHO.
ECHO ...............................................
ECHO PRESS 1, 2, or 3.
ECHO ...............................................
ECHO.
ECHO 1 - Brave
ECHO 2 - Chrome
ECHO 3 - FireFox
ECHO 4 - Back
ECHO.
SET /P M=Type a number then press ENTER:
IF %M%==1 GOTO brave
IF %M%==2 GOTO chrome
IF %M%==3 GOTO firefox
IF %M%==4 GOTO install
goto browser
:brave
cls
echo Downloading...
echo.
echo.
curl https://referrals.brave.com/latest/BraveBrowserSetup.exe -o brave.exe
start brave.exe
echo Press "Enter" When Done Installing.
pause >nul
taskkill /im brave.exe /f
del brave.exe /f
goto install
:chrome
cls
echo Downloading...
echo.
echo.
curl https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7BC78537B5-632A-70CB-3226-1C2BA8778418%7D%26lang%3Den%26browser%3D4%26usagestats%3D1%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers%26ap%3Dx64-stable-statsdef_1%26installdataindex%3Dempty/update2/installers/ChromeSetup.exe -o chrome.exe
start chrome.exe
echo Press "Enter" When Done Installing.
pause >nul
taskkill /im chrome.exe /f
del chrome.exe /f
goto install
:firefox
cls
echo Downloading...
echo.
echo.
curl https://download.mozilla.org/?product=firefox-stub&os=win&lang=en-US -o firefox.exe
start firefox.exe
cls
echo Press "Enter" When Done Installing.
pause >nul
taskkill /im firefox.exe /f
del firefox.exe /f
goto install

::  █▄ ▄█ █ █▄ █ ▄▀▄ ▄▀▄
::  █ ▀ █ █ █ ▀█ ▀▄▀ █▀█

:games
cls
title FreshPC v1.5 - Install A Game Launcher
ECHO.
ECHO ...............................................
ECHO PRESS 1, 2, or 3.
ECHO ...............................................
ECHO.
ECHO 1 - Steam
ECHO 2 - Epic
ECHO 3 - Back
ECHO.
SET /P M=Type a number then press ENTER:
IF %M%==1 GOTO steam
IF %M%==2 GOTO epic
IF %M%==3 GOTO install
goto browser
:Steam
cls
echo Downloading...
echo.
echo.
curl https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe -o steam.exe
start steam.exe
echo Press "Enter" When Done Installing.
pause >nul
taskkill /im steam.exe /f
del steam.exe /f
goto games
:Epic
cls
echo Downloading...
echo.
echo.
curl https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi -o epic.msi
start epic.msi
echo Press "Enter" When Done Installing.
pause >nul
taskkill /im epic.msi /f
del epic.msi /f
goto games
::Install End

::  █▄ ▄█ █ █▄ █ ▄▀▄ ▄▀▄
::  █ ▀ █ █ █ ▀█ ▀▄▀ █▀█

:wifi
ipconfig /release
ipconfig /renew
ipconfig /release6
ipconfig /renew6
netsh interface set interface "Local Area Connection" disable
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002BE10318}\0007 /v NetworkAddress /d 002622D90EFC /f
netsh interface set interface "Local Area Connection" enable
cls
ping -n 1 google.com
if not errorlevel 1 set error=Wifi Fixed!
if errorlevel 1 set error= WIFI NO WORKIE NOOOOO!!
cls
echo Result: %error%

echo DONE!
timeout 3 >nul
goto start

::  █▄ ▄█ █ █▄ █ ▄▀▄ ▄▀▄
::  █ ▀ █ █ █ ▀█ ▀▄▀ █▀█

:exit
cls
echo Bye!
exit