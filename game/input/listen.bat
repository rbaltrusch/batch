@if (@X)==(@Y) @end /* Harmless hybrid line that begins a JScript comment

:: ******* Begin batch code *********
@echo off
:: Your batch logic goes here

:: At any point you can execute the following to access your JScript
cscript //E:JScript //nologo "%~f0" yourJscriptParametersGoHere

:: Be sure to terminate your script so that 
:: it does not fall through into the JScript code
type con > input.txt
exit /b

********* Begin JScript code **********/
var WshShell=WScript.CreateObject("WScript.Shell")
WshShell.SendKeys("{ENTER}");
WshShell.SendKeys("{F6}");
WshShell.SendKeys("{ENTER}");

/* do whatever with your WshShell object */