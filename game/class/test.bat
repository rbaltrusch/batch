::This script tests ObjectiveBat capabilities by instantiating
::an object of type Class and calling a few of its methods that
::operate on its attributes.

@echo off
goto :main

:main
	setlocal enabledelayedexpansion
		::instantiate object a of type Class with args 1 and 2
		call Class a construct 1 2
		call # a method
		
		::call method iterate_arg1 for object a
		echo.
		echo arg1 was !%a%.arg1!
		call Class a iterate_arg1
		echo arg1 is now !%a%.arg1!
		
		::call method increase_arg2 for object a with arg 20
		echo.
		echo %a% !%a%.arg2!
		echo arg2 was !%a%.arg2!
		call Class a increase_arg2 20
		echo arg2 is now !%a%.arg2!
		
		::call method move for object a with args 1 and 1
		echo.
		echo pos was !%a%.pos!
		call Class a move 1 1
		echo pos is now !%a%.pos!
	endlocal
goto :eof
