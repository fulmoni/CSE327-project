@echo off
setlocal
set "APP_DIR=%~dp0"
set "TARGET=%APP_DIR%index.html"

set "CHROME_EXE="
if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" (
    set "CHROME_EXE=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
) else if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" (
    set "CHROME_EXE=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
) else if exist "%LocalAppData%\Google\Chrome\Application\chrome.exe" (
    set "CHROME_EXE=%LocalAppData%\Google\Chrome\Application\chrome.exe"
)

if defined CHROME_EXE (
    start "" "%CHROME_EXE%" --allow-file-access-from-files "%TARGET%"
) else (
    start "" "%TARGET%"
)
endlocal
