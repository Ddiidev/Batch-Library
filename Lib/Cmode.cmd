@echo off
If "%~1" == "help" (Goto :Help)
If "%~1" == ".h" (Goto :Help)
Set "x=%~1"
Set "y=%~2"
Goto :Style_%~3
Exit/b

:Style_1
	for /l %%i in (1, 4, %x%) do (
		mode 16,%%i
	)
	for /l %%i in (16, 4, %y%) do (
		mode %%i,%x%
	)
exit/b

:Style_2
	::Em construção...
exit/b

:Help
	Echo.=============== %~n0 ===============
	Echo.Fun‡Æo : Ajuste de window com efeito.
	Echo.
	Echo.Sintaxe: %%Cmode_%% y x [Style]
	Echo.
	Echo.Por enquanto só existe um style.
	Echo.[STYLE]
	Echo.	1
	Echo.
Exit/b