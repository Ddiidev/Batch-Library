Rem^ &@If "%~1" EQU "" ( @Set Text="Error!" ) Else ( @Set Text="%~1" )
Rem^ &@For /f %%i in ('Cscript //nologo //e:vbscript "%~f0" %Text%') do Nul
Rem^ &@Exit/b
Set Speech = CreateObject("SAPI.SpVoice")
Speech.Speak Wscript.Arguments(0)