Rem^ &@If "%~1" EQU "" ( @Set Text="Error!" ) Else ( @Set Text="%~1" )
Rem^ &@For /f %%i in ('Cscript //nologo //e:vbscript "%~f0" %Text%') do Nul
Rem^ &@Exit/b
Set Wmp = CreateObject("WMPlayer.OCX.7") 
Wmp.URL = (Wscript.Arguments(0)) 
Wmp.Controls.play
while wmp.Playstate <> 1
	WSH.Sleep 100
wend