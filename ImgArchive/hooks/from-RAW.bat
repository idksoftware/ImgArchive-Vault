@echo off

magick %1 %2

rem Check the exit code
if %ERRORLEVEL% EQU 0 (
echo Program executed successfully
) else (
echo Program failed with exit code %ERRORLEVEL%
)

rem Exit with the same code
exit /b %ERRORLEVEL%