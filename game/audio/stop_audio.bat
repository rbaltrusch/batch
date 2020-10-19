@echo off
goto :main

:main
	Taskkill  /F /IM wscript.exe
	set __sound_stopped__=true
	echo true>__sound_stopped__
	call sleep_ms 1
	echo false>__sound_stopped__
exit /b
