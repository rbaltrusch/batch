@echo off
setlocal enabledelayedexpansion

::imports
call consts import: left right forward backward

goto :main

:init
	set "background_entity=."
	set entity.x=1
	set entity.y=1
	set entity.image=o

	echo. > __sound_terminated__
	echo. > __sound_stopped__
exit /b

:get_input
	set input=
	call input/listen
	cls
	set /p input= < input.txt
	del input.txt
exit /b

:draw
	setlocal
		
		for /l %%y in (1 1 10) do (
			
			set screen=
			
			for /l %%x in (1 1 10) do (
				if %%x == !entity.x! (
					if %%y == !entity.y! (
						set blit_entity=!entity.image!
					)else (
						set blit_entity=!background_entity!
					)
				)else (
					set blit_entity=!background_entity!
				)
				set screen=!screen!!blit_entity!
			)
			
			echo !screen!
		)
		
	endlocal
exit /b

:mainloop
	call :draw
	call :get_input

	if "!input!" EQU "!left!" ( set /a entity.x= !entity.x! - 1)
	if "!input!" EQU "!right!" ( set /a entity.x= !entity.x! + 1)
	if "!input!" EQU "!forward!" ( set /a entity.y= !entity.y! - 1)
	if "!input!" EQU "!backward!" ( set /a entity.y= !entity.y! + 1)

	set /p sound_terminated= <__sound_terminated__

	if "%sound_terminated%" EQU "true" (
		call audio/stop_audio >__garbage__
	)

	if not "%sound_terminated%" EQU "false" (
		start /min "Sound" call audio/play audio/kick.wav
	)

	goto :mainloop
exit /b

:main
	call :init
	call :mainloop
exit /b
