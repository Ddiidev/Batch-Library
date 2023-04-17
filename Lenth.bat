@echo off
::Serve
::Call include load; Serve para carregar a API.
Call include load

::len.blib é o nome da função para exibir o comprimento de um texto
Call include len.blib

Set/p "var1=Digite: "
::%len_% [Texto] [<Var>]
%len_% "%var1%" x
Echo.%x%
%len_% "%var1%"|Find "3" >nul &&Echo SÆo apenas trˆs caracteres ||Echo SÆo mais do que trˆs caracteres.
pause