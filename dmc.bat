@echo off
setlocal

REM Define the destination path for the PowerShell profile
set "destinationFile=%USERPROFILE%\OneDrive\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"

REM Find the Downloads directory dynamically
for %%D in ("%USERPROFILE%\Downloads") do (
    set "sourceFile=%%D\ps.txt"
)

REM Check if the source file exists
if exist "%sourceFile%" (
    REM Copy the contents of the source file to the destination file
    type "%sourceFile%" > "%destinationFile%"
    echo Contents copied successfully from "%sourceFile%" to "%destinationFile%"
) else (
    echo Source file does not exist: "%sourceFile%"
)

pause
