@echo off
setlocal enabledelayedexpansion

REM Capture the entire query
set query=%*
if "%query%"==" " (
  echo Usage: search query
  pause
  exit /b
)

:menu
cls
echo.
echo SEARCHING FOR: %query%
echo.
echo 1 - PDF Direct Links
echo 2 - YouTube Videos
echo 3 - Images
echo 4 - Books
echo 5 - Articles/Web
echo 6 - Default Search
echo 7 - Exit
echo.
choice /c 1234567 /n /m "Enter option: "
set opt=%errorlevel%
if %opt%==7 exit /b

REM Locate the PS1 file
set psscript=%~dp0search.ps1

REM Call PowerShell
powershell -ExecutionPolicy Bypass -File "%psscript%" -Query "%query%" -Option %opt%

goto menu
