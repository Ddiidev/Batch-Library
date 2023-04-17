Rem^ &@If "%~1" EQU "" ( @Set Text="Error!" ) Else ( @Set Text="%~1" )
Rem^ &@For /f "delims=" %%i in ('Cscript //nologo //e:vbscript "%~f0" %Text%') do @Set "%~2=%%i"
Rem^ &@Exit/b
Set x = Wscript.Arguments
For i = 0 to x.count-1
	a = a + x(i)
Next
Wscript.Echo Lcase(a)