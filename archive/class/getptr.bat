@echo off
set ptr=%~1

::optional arg
set recursion_level=%~3
set empty=
if recursion_level EQU empty (set recursion_level=-1)

goto :main

:main
	setlocal enabledelayedexpansion
		:getval
			set rv=!%ptr%!
			set /a recursion_level=%recursion_level%-1
			if %recursion_level% GTR 0 (
				if %rv:~0,1% EQU * (
					set ptr=!rv!
					goto :getval
				)
			)
	endlocal & set %~2=%rv%
goto :eof
