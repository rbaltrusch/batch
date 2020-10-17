::This script tests ObjectiveBat capabilities by instantiating
::an object of type Class and calling a few of its methods that
::operate on its attributes.

@echo off
goto :main

:main
	setlocal enabledelayedexpansion
		::instantiate player
		call Entity player construct player.image
		::call # a iterate_arg1
		
		echo.
		call List mylist construct
		
		echo elements are !%mylist%.__elements__!
		call # mylist append 123
		call # mylist append 234
		call # mylist append 33
		echo elements are !%mylist%.__elements__!
		
		echo.
		call # mylist get 1
		echo element received: %element%
		
		echo.
		call # mylist get 0
		echo element received: %element%
		
		echo.
		call # mylist get 2
		echo element received: %element%
		
		echo.
		call # mylist set 2 345
		echo elements are !%mylist%.__elements__!
		
		echo.
		call # mylist pop 1
		echo elements are !%mylist%.__elements__!
		
	endlocal
goto :eof
