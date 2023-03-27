@echo off

::  █▄ ▄█ █ █▄ █ ▄▀▄ ▄▀▄
::  █ ▀ █ █ █ ▀█ ▀▄▀ █▀█

::Admin
:admin
title Admin Test
Reg.exe add HKLM /F >nul 2>&1
IF %ERRORLEVEL%==0 goto start
cls
color 0c
TITLE FRESH PC IS NOT RUNNING AS ADMIN!
echo REOPEN RUNNING FRESH PC AS ADMIN!
timeout 10
exit
::Admin End

::Menu
:start
cd %temp%
color 08
title FreshPC v1.6.5
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
title FreshPC v1.6 - Install Drivers
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
color 08
title FreshPC v1.6 - Activate Windows&cls&echo =====================================&echo &echo =====================================&echo.&echo Activating your Windows... & cscript //nologo c:\windows\system32\slmgr.vbs /ipk FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4 >nul&cscript //nologo c:\windows\system32\slmgr.vbs /ipk MRPKT-YTG23-K7D7T-X2JMM-QY7MG >nul&cscript //nologo c:\windows\system32\slmgr.vbs /ipk W82YF-2Q76Y-63HXB-FGJG9-GF7QX >nul&cscript //nologo c:\windows\system32\slmgr.vbs /ipk 33PXH-7Y6KF-2VJC9-XBBR8-HVTHH >nul&cscript //nologo c:\windows\system32\slmgr.vbs /ipk YDRBP-3D83W-TY26F-D46B2-XCKRJ >nul&cscript //nologo c:\windows\system32\slmgr.vbs /ipk C29WB-22CC8-VJ326-GHFJW-H9DH4 >nul&cscript //nologo c:\windows\system32\slmgr.vbs /ipk BN3D2-R7TKB-3YPBD-8DRP2-27GG4 >nul&cscript //nologo c:\windows\system32\slmgr.vbs /ipk 2WN2H-YGCQR-KFX6K-CD6TF-84YXQ >nul&cscript //nologo c:\windows\system32\slmgr.vbs /ipk NG4HW-VH26C-733KW-K6F98-J8CK4 >nul&cscript //nologo c:\windows\system32\slmgr.vbs /ipk XCVCF-2NXM9-723PB-MHCB7-2RYQQ >nul&cscript //nologo c:\windows\system32\slmgr.vbs /ipk GNBB8-YVD74-QJHX6-27H4K-8QHDG >nul&cscript //nologo c:\windows\system32\slmgr.vbs /ipk 32JNW-9KQ84-P47T8-D8GGY-CWCK7 >nul&cscript //nologo c:\windows\system32\slmgr.vbs /ipk JMNMF-RHW7P-DMY6X-RF3DR-X2BQT >nul&cscript //nologo c:\windows\system32\slmgr.vbs /ipk M9Q9P-WNJJT-6PXPY-DWX8H-6XWKK >nul&cscript //nologo c:\windows\system32\slmgr.vbs /ipk 7B9N3-D94CG-YTVHR-QBPX3-RJP64 >nul&cscript //nologo c:\windows\system32\slmgr.vbs /ipk BB6NG-PQ82V-VRDPW-8XVD2-V8P66 >nul&cscript //nologo c:\windows\system32\slmgr.vbs /ipk GCRJD-8NW9H-F2CDX-CCM8D-9D6T9 >nul&cscript //nologo c:\windows\system32\slmgr.vbs /ipk HMCNV-VVBFX-7HMBH-CTY9B-B4FXY >nul&cscript //nologo c:\windows\system32\slmgr.vbs /ipk 789NJ-TQK6T-6XTH8-J39CJ-J8D3P >nul&cscript //nologo c:\windows\system32\slmgr.vbs /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99 >nul&cscript //nologo c:\windows\system32\slmgr.vbs /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM >nul&cscript //nologo c:\windows\system32\slmgr.vbs /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH >nul&cscript //nologo c:\windows\system32\slmgr.vbs /ipk PVMJN-6DFY6-9CCP6-7BKTT-D3WVR >nul&cscript //nologo c:\windows\system32\slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX >nul&cscript //nologo c:\windows\system32\slmgr.vbs /ipk MH37W-N47XK-V7XM9-C7227-GCQG9 >nul

echo ------------------------------------&echo.&echo.&set i=1

:server

if %i%==1 set KMS_Sev=kms7.MSGuides.com

if %i%==2 set KMS_Sev=kms8.MSGuides.com

if %i%==3 set KMS_Sev=kms9.MSGuides.com

if %i%==4 goto notsupported

cscript //nologo c:\windows\system32\slmgr.vbs /skms %KMS_Sev% >nul

cscript //nologo c:\windows\system32\slmgr.vbs /ato | find /i "successfully" && (echo.& echo ====================================== & echo. & choice /n /c YN /m "Go back to start? [Y,N]?" & if errorlevel 2 exit) || (echo The connection to the server failed! Trying to connect to another one... & echo Please wait... & echo. & echo. & set /a i+=1 & goto server)

goto start

:notsupported

echo ======================================&echo.&echo Sorry! Your version is not supported.
timeout 3
goto start
::Activate End

::  █▄ ▄█ █ █▄ █ ▄▀▄ ▄▀▄
::  █ ▀ █ █ █ ▀█ ▀▄▀ █▀█

:debloat
cls
title FreshPC v1.6 - Debloat
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
title FreshPC v1.6 - Install Programs
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
title FreshPC v1.6 - Install A Browser
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
title FreshPC v1.6 - Install A Game Launcher
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
