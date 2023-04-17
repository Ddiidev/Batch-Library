::Autor		: Batch-satti.forumeiros.com
If /I "%~1" == "help" (Goto :Help)
If /I "%~1" == ".h" (Goto :Help)
Call :Color_ir %~1 "%~2"
Exit/b
:Color_ir
if not exist $temp ( mkdir $temp || (Exit /b 2) )
pushd $temp || (Exit /b 1)
If Not Exist "o_o" (
	for /f "tokens=1,2,3,4 delims= " %%a in ('
		"%ComsPec% /K Prompt $h$h$h$h<&1"
	') do >o_o Set/p"=%%a %%b %%c %%d"<&1
)
Call :Tex_to %~1 "%~2"
popd
::rmdir /S /Q $temp
::Del /q "$temp\%~2"
Endlocal & Exit /b 0
:Tex_to
If Not Exist "$temp\%~2" (
	>"%~2.x" (set/P=+) <&1
)
findstr /a:%1 + "%~2.x" con
type o_o
GOTO :EOF

:Help
	Echo.=============== %~n0 ===============
	Echo.Fun‡Æo : Colorir pequenos textos.
	Echo.
	Echo.Sintaxe: %%TColor_%% [color] [texto]
	Echo.
Exit/b