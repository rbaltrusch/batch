@echo off
setlocal enabledelayedexpansion
	call read_image player.image

	echo.
	call # pixel_data get 0
	call # element __dict__

	echo.
	call # pixel_data get 1
	call # element __dict__

	echo.
	call # pixel_data get 2
	call # element __dict__

	echo.
	call # pixel_data get 3
	call # element __dict__
endlocal
