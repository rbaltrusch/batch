Set Sound = CreateObject("WMPlayer.OCX.7")
Sound.URL = ""
Sound.Controls.play
do while Sound.currentmedia.duration = 0
wscript.sleep 100
loop
wscript.sleep (int(Sound.currentmedia.duration)+1)*1000
Set objFile = objFSO.CreateTextFile("__sound_terminated__",True) 
objFile.Write "terminated" 
objFile.Close 
