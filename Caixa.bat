@echo off
::Este script exibi uma caixa com cor escolhida.
::Call include load; Serve para carregar a API.
Call include load

::box.blib � o nome da fun��o para criar uma caixa;
::A func�o box automaticamente inclui a fun��o tcolor
::se caso ela n�o tiver sido inclu�da antes.
::%box_% [n:linhas] [n:colunas] [p:coluna] [color]
Call include box.blib

::Cmode � o nome da fun��o para reajustar a janela console;
::%Cmode_% [n:linhas] [n:colunas] [s:style]
Call include Cmode.blib

%Cmode_% 25 80 1
Echo.
Echo.
Echo.
%box_% 2 2 3 c
%box_% .h
pause