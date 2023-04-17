@echo off
::Este script exibi uma caixa com cor escolhida.
::Call include load; Serve para carregar a API.
Call include load

::box.blib é o nome da função para criar uma caixa;
::A funcão box automaticamente inclui a função tcolor
::se caso ela não tiver sido incluída antes.
::%box_% [n:linhas] [n:colunas] [p:coluna] [color]
Call include box.blib

::Cmode é o nome da função para reajustar a janela console;
::%Cmode_% [n:linhas] [n:colunas] [s:style]
Call include Cmode.blib

%Cmode_% 25 80 1
Echo.
Echo.
Echo.
%box_% 2 2 3 c
%box_% .h
pause