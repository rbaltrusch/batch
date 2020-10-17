::This is a test class.
::A class definition needs to at least have the top block, :construct and :main.
::Important is that the constructor does not use local scope using setlocal,
::as attributes must reside in global varspace to make them useable in other
::batfiles

::TODO: make attributes only store pointers (e.g. *123) to a specific value
::and make the returned object itself a pointer pointing to the actual object
::residing in memory (that object must use a unique variable name).
::This way the value can be saved in global varspace. As long as we use a 
::unique variable name for the pointer and store that pointer in a place where
::it does not get overwritten, we do not risk losing data when instantiating
::another object with the same name.

::top block
@echo off
set __class__=%0
goto :main

:construct
	::constructor method needs to be called to instantiate object. 
	::Attributes reside in global varspace 

	call get_new_ptr ptr
	set %ptr%.type=%__class__%
	set %ptr%.arg1=%~3
	set %ptr%.arg2=%~4
	set %ptr%.dict=arg type
	set %ptr%.x=0
	set %ptr%.y=0
	set %ptr%.pos=0 0
	set %~1=%ptr%
goto :eof

:iterate_arg1
	setlocal enabledelayedexpansion
		set /a rv=!%self%.arg1! + 1
	endlocal & set %self%.arg1=%rv%
goto :eof

:increase_arg2
	setlocal enabledelayedexpansion
		set rv=!%self%.arg2!
		for /l %%a in (1 1 %3) do set /a rv=!rv! + 1
	endlocal & set %self%.arg2=%rv%
goto :eof

:move
	setlocal enabledelayedexpansion
		set /a rv_x=!%self%.x! + %3
		set /a rv_y=!%self%.y! + %4
		set rv_pos=%rv_x% %rv_y%
	endlocal & set %self%.x=%rv_x% & set %self%.y=%rv_y% & set %self%.pos=%rv_pos%
goto :eof

:method
	echo Method is being called by %1
	::for /f "tokens=*" %%a in ( "!%1.dict!" ) do echo %%a
goto :eof

:main
	echo MAIN: %*
	call getptr %~1 self 1
	call :%~2 %*
exit /b
