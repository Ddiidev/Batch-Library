::VChar 1.0
::Criado por: André Luiz
::http://batch-satti.forumeiros.com/
::TGS - TheGoldenScript (OpenSource)
Set Error=0
Set "£a=%~1"
Set "£b=%~2"
Echo %£a% |Find "%%" 2>Nul &&Set Error=1
If not defined £a Goto Help
If %Error% == 1 Goto Error
If /I "%£a%"=="/HELP" Goto Help
If /I "%£a%"=="/?" Goto Help
Set "£c=% %%£a%%:~%£b%"
set "£c=%£c: =%"
set "£c=%£c:.= %%%"
set "£c=%%%£c%"
echo.Set "%£a%=%£c%">"%tmp%\tmp.bat"
Call "%tmp%\tmp.bat"
Del/q "%tmp%\tmp.bat"
exit/b
:Help
Echo.
Echo.Entre em Batch-Satti : http://batch-satti.forumeiros.com/
Echo.Criado por           : Andr‚ Luiz.
Echo.Versão               : 1.0
Echo.Descri‡Æo:Cortar variáveis.
Echo.
Echo.Exemplo:
Echo.Call: Vchar.bat ["Vari vel"] ["0" ou "0,0"]
Echo.Call: Vchar.bat MyVar "0"
Echo.Call: Vchar.bat MyVar "0,0"
Echo.
Echo.Vari vel       -  Nome da vari vel no seu batch^(Sem Porcetagem!^).
Echo./Help ou /?    -  Exibir essa mensagem de ajuda.
If not defined £a Echo.
If not defined £a Pause
exit/b
:Error
Echo.Error: Vari vel
Echo.Ponha apenas o nome da vari vel sem as porcentagens ao redor!
exit/b