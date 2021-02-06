@echo off
if "%~1" %~2 "%~3" (
	set errorlevel=0
)else (
	set errorlevel=1
)
exit /b %errorlevel%
