@echo off
goto :main

	Checks if a string contains a substring. sets errorlevel with the results:
		0 if string contains substring
		1 if string doesnt contain substring

:main 1: string 2: substring
	echo %~2
	set contains=
	setlocal enabledelayedexpansion
		set orig=%~1
		set substituted=!orig:%~2=!
		if "%substituted%" EQU "%~1" (
			set contains=1
		)else (
			set contains=0
		)
	endlocal & set errorlevel=%contains%
exit /b %errorlevel%
