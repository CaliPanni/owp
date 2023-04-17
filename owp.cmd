echo off
goto e
:s
cls
title OWP 2.0 DIRECT SETUP 
cls
set /p g=Write WinRAR installation directory here (Please use Backslash [\]):
:m
cls
echo %g%, Is correct? (y,n)
set /p h=
if %h% == y goto l
if %h% == n goto s
goto m
:l
curl -L --silent  --output "%g%\rarreg.key" "https://raw.githubusercontent.com/CaliPanni/owp/main/rarreg.key"
msg %username% WinRAR successfully activated! 
exit
:e
@rem ----[ This code block detects if the script is being running with admin PRIVILEGES If it isn't it pauses and then quits]-------
echo OFF
cls
NET SESSION >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
    goto s
) ELSE (
   echo ######## ########  ########   #######  ########  
   echo ##       ##     ## ##     ## ##     ## ##     ## 
   echo ##       ##     ## ##     ## ##     ## ##     ## 
   echo ######   ########  ########  ##     ## ########  
   echo ##       ##   ##   ##   ##   ##     ## ##   ##   
   echo ##       ##    ##  ##    ##  ##     ## ##    ##  
   echo ######## ##     ## ##     ##  #######  ##     ## 
   echo.
   echo.
   echo ####### ERROR: ADMINISTRATOR PRIVILEGES REQUIRED #########
   echo This script must be run as administrator to work properly!  
   echo If you're seeing this after clicking on a start menu icon, then right click on the shortcut and select "Run As Administrator".
   echo ##########################################################
   echo.
   PAUSE
   EXIT /B 1
)
@echo ON