::Autor		: André Luiz
::Versão	: 1.0
If "%~2" EQU "" (
	Set "Var=_Result_"
) Else (
	Set "Var=%~2"
)
If "%~1" == "help" (Goto :Help)
If "%~1" == ".h" (Goto :Help)
>"%Tmp%\Len.tmp" Echo %~1
@For /f "delims=" %%i in ('Echo "%Tmp%\Len.tmp"') do @Set/a "%VAR%=%%~zi-2"
If "%~2" EQU "" ( Cmd /c Echo.%%%VAR%%% )
@Exit/b %VAR%
:Help
	Echo.=============== %~n0 ===============
	Echo.Fun‡Æo : Retornar o comprimento de uma string(texto).
	Echo.
	Echo.Sintaxe: %%Len_%% [String] [Var]
	Echo.
	Echo.Obs:
	Echo.	O retorno sera direcionada … vari vel escolida.
	Echo.	Se nenhuma vari vel for escolhida ira,
	Echo.	Para o '%%errorlevel%%' e tamb‚m … vari vel '%%_Result_%%'.
Exit/b