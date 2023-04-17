Set "Blib_Version=1.0.0.2"
If /I "%~1" EQU "load" ( Call :Load )
If "%_Load_%" NEQ "1" (
	Echo Include not of load.
	Set/p "=Use: Call Include Load"<&1
	Pause>Nul && Exit
)
Set "Result="
If /I "%~1" EQU "len.blib" ( Set Len_=Call "%CD%\Lib\Len.cmd" &&Exit/b )
If /I "%~1" EQU "Delay.blib" ( Set Delay_=Call "%CD%\Lib\Delay.cmd"^>Nul &&Exit/b )
If /I "%~1" EQU "Timeout.blib" ( Set Timeout_=Call "%CD%\Lib\Timeout.bat" &&Exit/b )
If /I "%~1" EQU "TColor.blib" ( Set TColor_=Call "%CD%\Lib\TColor.cmd" &&Exit/b )
If /I "%~1" EQU "Folder.blib" ( Set Folder_=Call "%CD%\Lib\Folder.cmd"^>Nul &&Exit/b )
If /I "%~1" EQU "SpVoice.blib" ( Set SpVoice_=Call "%CD%\Lib\SpVoice.cmd"^>Nul &&Exit/b )
If /I "%~1" EQU "GetTitle.blib" ( Set GetTitle_=Call "%CD%\Lib\GetTitle.Cmd" &&Exit/b )
If /I "%~1" EQU "Skip.blib" ( Set Skip_=Call "%CD%\Lib\Skip.Cmd" &&Exit/b )
If /I "%~1" EQU "Box.blib" ( Set Box_=Call "%CD%\Lib\Box.Cmd" &&Exit/b )
If /I "%~1" EQU "Ucase.blib" ( Set Ucase_=Call "%CD%\Lib\Ucase.Cmd" &&Exit/b )
If /I "%~1" EQU "Lcase.blib" ( Set Lcase_=Call "%CD%\Lib\Lcase.Cmd" &&Exit/b )
If /I "%~1" EQU "Gkey.blib" ( Set Gkey_=Call "%CD%\Lib\GetKey.Cmd" &&Exit/b )
If /I "%~1" EQU "Vchr.blib" ( Set Vchr_=Call "%CD%\Lib\Vchar.Cmd" &&Exit/b )
If /I "%~1" EQU "Wmp.blib" ( Set Wmp_=Call "%CD%\Lib\WMplayer.Cmd" &&Exit/b )
If /I "%~1" EQU "Cmode.blib" ( Set Cmode_=Call "%CD%\Lib\Cmode.Cmd" &&Exit/b )
Exit/b

:Load
	Set "_Load_=1"
	Set "Not_Text=not included.&>Nul Echo "
	Title FrameWork_%Blib_Version%
	For /f "Skip=1 tokens=2 delims=," %%i in ('tasklist -fi "WINDOWTITLE eq FrameWork_1.0.0.1" /FO CSV') do @Set "PID=%%~i"
	Set "Len_=Echo 'Len.blib' %Not_Text%"
	Set "Delay_=Echo 'Delay.blib' %Not_Text%"
	Set "Timeout_=Echo 'Timeout.blib' %Not_Text%"
	Set "TColor_=Echo 'TColor.blib' %Not_Text%"
	Set "Folder_=Echo 'Folder.blib' %Not_Text%"
	Set "SpVoice_=Echo 'SpVoice.blib' %Not_Text%"
	Set "GetTitle_=Echo 'GetTitle.blib' %Not_Text%"
	Set "Skip_=Echo 'Skip.blib' %Not_Text%"
	Set "Box_=Echo 'Box.blib' %Not_Text%"
	Set "Ucase_=Echo 'Ucase.blib' %Not_Text%"
	Set "Lcase_=Echo 'Lcase.blib' %Not_Text%"
	Set "Gkey_=Echo 'Gkey.blib' %Not_Text%"
	Set "Vchr_=Echo 'Vchr.blib' %Not_Text%"
	Set "Wmp_=Echo 'Wmp.blib' %Not_Text%"
	Set "Cmode_=Echo 'Cmode.blib' %Not_Text%"
Goto :Eof