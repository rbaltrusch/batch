@echo off
set ptr=%~1
goto :main

:main
	setlocal enabledelayedexpansion
		:getval
			set rv=!%ptr%!
			if %rv:~0,1% EQU * (
				set ptr=!rv!
				goto :getval
			)
	endlocal & set rv=%rv%
goto :eof
