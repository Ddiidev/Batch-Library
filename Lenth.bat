@echo off
::Serve
::Call include load; Serve para carregar a API.
Call include load

::len.blib � o nome da fun��o para exibir o comprimento de um texto
Call include len.blib

Set/p "var1=Digite: "
::%len_% [Texto] [<Var>]
%len_% "%var1%" x
Echo.%x%
%len_% "%var1%"|Find "3" >nul &&Echo S�o apenas tr�s caracteres ||Echo S�o mais do que tr�s caracteres.
pause