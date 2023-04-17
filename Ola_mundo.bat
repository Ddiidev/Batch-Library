@echo off
::Este script vai pedir que o computador fale 'Ola mundo'.
::Call include load; Serve para carregar a API.
Call include load

::SpVoice.blib é o nome da função que faz com que o computador fale um texto.
::O único problema é dependendo do pacote de idioma do sistema, ela pode falar
::Tudo em inglês.
Call include SpVoice.blib

%SpVoice_% "Ola mundo!"
%SpVoice_% "Hello Word!"
pause