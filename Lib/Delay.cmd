Rem^ &@For /f %%r in ('Cscript //nologo //e:vbscript "%~f0" %~1') do @Set "Result=%%r"
Rem^ &@If %ErrorLevel% EQU 0 ( @Set "_Func_=1" ) Else ( @Set "_Func_=0" )
Rem^ &@Exit/b %_Func_%
Wscript.Sleep wscript.arguments(0)