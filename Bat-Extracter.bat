@echo off
color 5F


@echo off
cls
color 5F
title Extracter
set /p zip_file=Enter the zip name : 



cls
@echo off
if not exist "%zip_file%" (
    echo The specified file was not found.
	pause
    exit /b 1
)

:: If the file exists, continue processing here.


cls
@echo off
set /p destination=Enter the destination : 
pause

cls
powershell -command "Expand-Archive -Path '%zip_file%' -DestinationPath '%destination%'"
cls
echo Extraction finish
pause