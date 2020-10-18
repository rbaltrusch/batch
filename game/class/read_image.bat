@echo on
goto :main %*

:main
	::call List pixel_data construct
	call List pixel_data construct
	setlocal enabledelayedexpansion
		set x=-1
		for /f %%a in ( %~1 ) do (
			call get_str_len %%a
			set /a end=!str_len!-1
			set /a x=!x! + 1
			for /l %%y in (0 1 !end!) do (
				set str=%%a
				set substr=!str:~%%y,1!
				call Pixel new_pixel construct !x! %%y !substr!
				call # pixel_data append !new_pixel!
			)
		)
		
		::save local state to file
		call save pixel.data !%pixel_data%.elements!
		call save pixel_data.data %pixel_data%
		
	endlocal
	
	::load local state from file back to global varspace
	call load pixel_data.data delete
	call load pixel.data delete
	
exit /b
