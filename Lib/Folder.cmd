Rem^ &@If "%~1" EQU "" ( @Set Text="Select Folder" ) Else ( @Set Text="%~1" )
Rem^ &@If "%~2" EQU "" ( @Set "Var=Result" ) Else ( @Set "Var=%~2" )
Rem^ &@For /f "delims=" %%r in ('Cscript //nologo //e:vbscript "%~f0" %Text%') do @Set "%VAR%=%%~r"
Rem^ &@If %ErrorLevel% EQU 0 ( @Set "_Func_=1" ) Else ( @Set "_Func_=0" )
Rem^ &@Exit/b %_Func_%
set WshShell=WScript.CreateObject("WScript.Shell") 'VBS 
set shell=WScript.CreateObject("Shell.Application") 'VBS 
sInput=WshShell.ExpandEnvironmentStrings(Wscript.Arguments(0)) 'VBS 
set folder=shell.BrowseForFolder(0,replace(sInput,chr(34),""),0) 'VBS
if typename(folder)="Nothing" Then  'VBS 
wscript.echo "1" 'VBS
WScript.Quit(1) 'VBS 
end if 'VBS 
set folderItems=folder.Items() 'VBS 
set folderItem=folderItems.Item() 'VBS 
pathname=folderItem.Path 'VBS 
wscript.echo chr(34) & pathname & chr(34) 'VBS
