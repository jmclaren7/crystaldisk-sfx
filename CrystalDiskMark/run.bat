@echo off
set /p executablepath=<exe.txt
echo Starting %executablepath% ...
echo.
echo Leave this window open, closing it could cause issues with the program and will prevent cleaning of temporary files.
"%executablepath%"
echo.
echo Program closed.
echo.
echo If this window doesn't close automaticly in about 5 seconds something has gone wrong and you may need
echo   to force close it, the themporary files are located here: (%~dp0)
echo.
echo Cleaning temporary files... 
ping 1.1.1.1 >nul
rem rmdir /s /q "%~dp0"
echo Done.
ping 1.1.1.1 -n 1 >nul
exit
