@echo off
call get_str_len "test"
call assert %str_len% EQU 4
exit /b %ERRORLEVEL%
