If /I "%~1" == "help" (Goto :Help)
If /I "%~1" == ".h" (Goto :Help)
@If "%~1" EQU "" ( @Set "Var=_Result_" ) Else ( @Set "Var=%~1" )
@If "%PID%" NEQ "" (
	@For /f "skip=1 tokens=9 Delims=," %%i in ('Tasklist /V -fi "PID eq %PID%" /FO CSV') do @Set "%Var%=%%~i"
) Else (
	@Echo Error!
	@Set/p "=Possible include not of load."<Nul
	@Pause>Nul && @Exit
)

:Help
	Echo.=============== %~n0 ===============
	Echo.Funá∆o : Pegar o texto do t°tulo da janela console.
	Echo.
	Echo.Sintaxe: %%GetTitle_%% [Var]
	Echo.
	Echo.Obs:
	Echo.O retorno vai voltar para a vari†vel especificada, caso
	Echo.Nenhuma vari†vel for especificada ent∆o retornar† para var
	Echo.'%%_result_%%'.
Exit/b