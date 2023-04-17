::Autor		: André Luiz
::Versão	: 1.0
If /I "%~1" == "help" (Goto :Help)
If /I "%~1" == ".h" (Goto :Help)
If "%~1" EQU "" (
	Set "Var=Result"
) Else (
	Set "Var=%~1"
)

@If /I not "%Vchr_:~0,3%" == "call" ( Call :Ld0 )
@Set "%var%="
@For /F "delims=" %%# In ('Xcopy /W "%~f0" "%~f0" 2^>Nul') Do If not Defined %var% Set "%var%=%%#"
@%Vchr_% %var% "-1"
exit/b

:Help
	Echo.=============== %~n0 ===============
	Echo.Fun‡Æo : Pede que o usu rio digite uma £nica tecla. 
	Echo.
	Echo.Sintaxe: %%GetKey_%%
	Echo.
Exit/b

:Ld0
	::Ele necessita da biblioteca Vchr.blib.
	Call include.cmd Vchr.blib
exit/b