@echo off
setlocal enabledelayedexpansion
:loop
call listen
cls
set /p input= < input.txt
set forward=w
set forward=s
set left=a
set right=d

if !input! == !forward! (echo FORWARD)
if !input! == !backward! (echo BACKWARD)
if !input! == !left! (echo LEFT)
if !input! == !right! (echo RIGHT)
goto :loop