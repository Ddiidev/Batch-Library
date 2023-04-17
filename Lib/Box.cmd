::Versão: 2.1|100% Otimizada!
::Author: André Luiz
::Obs:Leva mais ou menos 0.40ms;
If "%~1" == "help" (Goto :Help)
If "%~1" == ".h" (Goto :Help)
Set "x="
If /I not "%tcolor_:~0,3%" == "call" ( Call :Ld )
Call :Col %~3
:Loop
	Set/a x+=1
	Set "a=" && Call :Plus
	%tcolor_% "00" "%Col_Sp%"
	%tcolor_% "%~4%~4" "%a%"
	Echo.
If Not "%x%" == "%~1" ( Goto :Loop ) Else ( Exit/b )

:ld
	Call include tcolor.blib
Exit/b

:Col
	Set/a "i+=1"
	Set "Col_Sp=%Col_Sp% "
If "%i%" LSS "%1" ( Goto :Col ) Else ( Set "i=0" && Exit/b )

:Plus
	Set/a "i+=1"
	Set "a=%a%x"
If "%i%" LSS "%%~2" ( Goto :Plus ) Else ( Set "i=0" && Exit/b )

:Help
	Echo.=============== %~n0 ===============
	Echo.Fun‡Æo : Exbir uma caixa na tela do console.
	Echo.
	Echo.Sintaxe: %%Box_%% [n:linha] [n:coluna] [p:coluna] [color]
	Echo.
	Echo.n:	-	numeros de [linhas/colunas]
	Echo.p:	-	posi‡Æ da [coluna]
	Echo.
Exit/b