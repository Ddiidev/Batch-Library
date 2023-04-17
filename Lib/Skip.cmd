::Autor		: André Luiz
::Versão	: 1.0
If /I "%~1" == "help" (Goto :Help)
If /I "%~1" == ".h" (Goto :Help)
If "%~2" EQU "" (
	Set "Var=Result"
) Else (
	Set "Var=%~2"
)
@For /L %%i in (1, 1, %~1) do @Echo.
@Exit/b

:Help
	Echo.=============== %~n0 ===============
	Echo.Fun‡Æo : Quebra um n§ especificado de linhas.
	Echo.
	Echo.Sintaxe: %%Skip_%% [n]
	Echo.
Exit/b