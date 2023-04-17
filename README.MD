# Batch-Library

Bem mais um projetinho meu antigo coisa de 2016/2017 eu participava de um fórum chamado [Bathc-Satti](https://batch-satti.forumeiros.com/)


## Uso/Exemplos

Eu não tenho muito pra falar, eu nem lembro como eu fiz isso, até porque toda mágica que era feito em batch era pura gambiarra, então não sei muito.

Mas o único que olhei antes de subir foi esse abaixo que achei legal, reproduz uma música diretamente do terminal com três linhas, achei bem legal como eu do passado fiz funcionar.

```batchscript
@echo off
call include load

call include wmp.blib

%wmp_% "%WinDir%\Media\Alarm01.wav"
pause
```