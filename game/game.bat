@echo off
setlocal enabledelayedexpansion
goto :main

:init
	set background_entity=.
	set entity.x=1
	set entity.y=1
	set entity.image=o
	set ctr=0
goto :eof

:draw
	setlocal
		
		for /l %%y in (1 1 1) do (
			
			set screen=
			
			for /l %%x in (1 1 80) do (
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
goto :eof

:mainloop
	call :draw
	if !direction! == pos (
		if !entity.x! GEQ 80 (
			set direction=neg
		)
	)else (
		if !entity.x! LEQ 1 (
			set direction=pos
		)
	)
	
	if !direction! == pos (
		set /a entity.x= !entity.x! + 1
	)else (
		set /a entity.x= !entity.x! - 1
	)
	
	set /a ctr= !ctr! + 1
	goto :mainloop
goto :eof

:main
	call :init
	call :mainloop
goto :eof
