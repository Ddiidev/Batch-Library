@echo off
::Este script exibi o seu texto em caixa alta e depois em caixa baixa.
::Call include load; Serve para carregar a API.
Call include load

::ucase.blib é o nome da função para mudar a string para caixa alta.
Call include ucase.blib

::lcase.blib é o nome da função para mudar a string para caixa alta.
Call include lcase.blib
Set/p "Text=Digite um texto qualquer:"

::%ucase_% ["Seu_texto"] [variável]
%ucase_% "%Text%" Text
Echo.%Text%


::%lcase_% ["Seu_texto"] [variável]
%lcase_% "%Text%" Text
Echo.%Text%
pause