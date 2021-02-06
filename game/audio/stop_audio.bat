@echo off
goto :main

:main
	Taskkill  /F /IM wscript.exe
	taskkill /im cmd.exe /fi "windowtitle eq BatAudio*"
	echo true>__sound_terminated__
exit /b
