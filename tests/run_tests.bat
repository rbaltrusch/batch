@echo off
goto :main

This is a script running all test scripts in the directory

:main
	call get_guid guid
	set testreport=%guid%_test.report

	setlocal enabledelayedexpansion
		for /f %%d in ('dir /b') do (
			call contains %%d test && ( call contains %%d .bat && ( call contains %%d %~0  || (
				set errorlevel=0
				call %%d
				if "!ERRORLEVEL!" EQU "0" (
					set status=passed
				)else (
					set status=failed
				)
				echo %%d: !status! >> %testreport%
			) ) )
		)
	endlocal

	start notepad++ %testreport%

exit /b
