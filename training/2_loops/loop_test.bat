rem this file prints numbers from 1 to 10, then pauses
@echo off
set a=1

:loop
echo %a%
set /a a=a+1
if %a% gtr 10 (goto :end) else (goto :loop)

:end
pause
exit