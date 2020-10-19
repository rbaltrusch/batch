@echo off
goto :main

:main 1:delay_ms
	::pings 192.0.2.1, an address that is defined to not exist.
	::for a set amount of milliseconds (input arg 1)
	ping 192.0.2.1 -n 1 -w %~1 >nul
exit /b
