@echo off
::Este script exibi uma caixa com cor escolhida.
::Call include load; Serve para carregar a API.
call include load

::wmp.blib � o nome da fun��o para reprodu��o de �udios
::do tipo, .mp3, .wav, .m4a etc..
::%wmp_% [DIR_MUSIC]
call include wmp.blib

%wmp_% "%WinDir%\Media\Alarm01.wav"
pause