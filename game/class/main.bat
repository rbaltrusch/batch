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
		
		echo elements are !%mylist%.elements!
		call # mylist append 123
		call # mylist append 234
		call # mylist append 33
		echo elements are !%mylist%.elements!
		
		echo.
		call # mylist get 1
		echo element received: %element%
		
		echo.
		call # mylist get 0
		::!%mylist%.get! 0
		echo element received: %element%
		
		echo.
		call # mylist get 2
		echo element received: %element%
		
		echo.
		call # mylist set 2 345
		echo elements are !%mylist%.elements!
		
		echo.
		call # mylist pop 1
		echo elements are !%mylist%.elements!
		
		echo.
		call # mylist print
		
		echo.
		call # mylist __dict__
		
		echo.
		echo.
		echo.
		call Dict mydict construct
		call # mydict set 123 2
		call # mydict set 234 hello
		call # mydict set sthing xd
		call # mydict __dict__
		call # mydict get 123
		echo value is %value%
		call # mydict delete 234
		call # mydict __dict__
		call # mydict get 234
		echo value is %value%
		
	endlocal
goto :eof
