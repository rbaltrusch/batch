::Source: https://stackoverflow.com/questions/23313709/play-invisible-music-with-batch-file (Author: SachaDee)

@echo off
set "sound_file=%~1"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%sound_file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs

if "%~2" EQU "loop" ( set looping=true)else ( set looping=false)

setlocal enabledelayedexpansion
	:loop
			set /p __sound_stopped__= <__sound_stopped__
			if "!__sound_stopped__!" EQU "true" (
				echo terminating
				goto :eof 
			)
			start "" /wait /min sound.vbs
			if "!looping!" EQU "true" ( goto :loop )
	goto :eof
endlocal
