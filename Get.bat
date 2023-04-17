@echo off
Call include.cmd load		&rem Importa para o batch os diretório das bibliotecas

Call include.cmd len.blib	&rem Retorna o número de caracteres
Call include.cmd Vchr.blib	&rem Corta uma variável
Call include.cmd Gkey.blib	&rem Pega um único caractere



:text
	cls
	::Abaixo ele está jogando na variável '%Lent%' o comprimento da vaiável '%texto%'
	echo Digite uma data qualquer abaixo\/
	%len_% "%texto%" Lent
	Set texto_cust=%texto%
	if %Lent% == 8 (
		Set/p "=Digite: %texto_cust:~0,2%/%texto_cust:~2,2%/%texto_cust:~4,4%" <nul
	) else (
		if defined texto_cust (
			if %Lent% GEQ 4 (
				Set/p "=Digite: %texto_cust:~0,2%/%texto_cust:~2,2%/%texto_cust:~4,4%" <nul
			) else if %Lent% == 3 (
				Set/p "=Digite: %texto_cust:~0,2%/%texto_cust:~2,2%" <nul
			) else if %Lent% == 2 (
				Set/p "=Digite: %texto_cust:~0,2%/" <nul
			) else if %Lent% == 1 (
				Set/p "=Digite: %texto_cust%" <nul
			)
		) else (
			Set/p "=Digite: " <nul
		)
	)
	::Abaixo ele está jogando para a variável '%key%' a tecla que o usuário digitou.
	%Gkey_% key
	::Esse "for" serve para limitar para exibir apenas números.
	for %%i in (0 1 2 3 4 5 6 7 8 9) do if '%key%' == '%%i' Set "texto=%texto%%%i"
	
	::Quando o usuário digitar [Enter], vai retornar para '%key', isso: ''.
	::Então se '%key%' for igual a nada, então ele entende que é enter e finaliza.
	if '%key%' == '' (
		if %Lent% == 8 ( Set "texto=%texto:~0,-1%" )
		if "%texto%" NEQ "" (
			set "texto=%texto_cust:~0,2%/%texto_cust:~2,2%/%texto_cust:~4,4%"
		)
		goto :fim
	)
	::Este 'if' é para fazer a exclusão de um caractere.
	if '%key%' == '' (
		if defined texto (
			Set "texto=%texto:~0,-1%"
		)
	) else if %Lent% == 8 ( Set "texto=%texto:~0,-1%" )
Goto :text

:fim
echo.
echo.fim:%texto%
pause