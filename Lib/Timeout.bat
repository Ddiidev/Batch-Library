@ECHO OFF
REM  QBFC Project Options Begin
REM  HasVersionInfo: Yes
REM  Companyname: [TGS]TheGoldenScript©
REM  Productname: Timeout
REM  Filedescription: Timeout
REM  Copyrights: [TGS]TheGoldenScript©
REM  Trademarks: http://creativecommons.org/licenses/by/4.0/
REM  Originalname: Timeout
REM  Comments: OpenSource
REM  Productversion:  1. 0. 0. 4
REM  Fileversion:  1. 0. 0. 4
REM  Internalname: Timeout
REM  Appicon: 
REM  AdministratorManifest: No
REM  QBFC Project Options End
ECHO ON
@echo off
For /F %%# In ('"Prompt $H &For %%_ In (_) Do Rem"') Do Set "Bk=%%#"
Set "Text=%~1"
Set "Timeout=%~2"
Set "Text1=%~3"
If /I "%Text%"=="help" Goto Help
If /I "%Text%"==".h" Goto Help
If not defined Timeout (
	Echo.Determine um valor exemplo:
	Echo.%~nx0 "Text"^(Opcional^) 20
	Echo.Consulte: %~nx0 /Help
	Pause>nul&Exit/b
)
If %TimeOut% GTR 99999999 (
	Echo.Valor m ximo 99999999.
	Pause>nul&Exit/b
)
Set "Numb[1]=0"
Set "Numb[2]=0"
Set "Numb[]=%Numb[2]%"
If not defined Text (
	Set/p"=Aguardando "<nul
) Else (
	Set/p"=%Text%"<nul
)
Set "Error=0:0"
:Loop_1
Set Numb[]=%Numb[]:~0,-1%
Set/a Numb[1]+=1
If not "%Numb[]%"=="" Goto Loop_1
If %Numb[1]% EQU 1 Set "Bk1=%Bk%"
If not %Error%==2:1 If %Numb[1]%==2 (
	Set "Bk1=%Bk%%Bk%"
	Set/p"=%Bk%"<nul
	Set "Error=2:1"
)
If not %Error%==3:1 If %Numb[1]%==3 (
	Set "Bk1=%Bk%%Bk%%Bk%"
	Set/p"=%Bk%"<nul
	Set "Error=3:1"
)
If not %Error%==4:1 If %Numb[1]%==4 (
	Set "Bk1=%Bk%%Bk%%Bk%%Bk%"
	Set/p"=%Bk%"<nul
	Set "Error=4:1"
)
If not %Error%==5:1 If %Numb[1]%==5 (
	Set "Bk1=%Bk%%Bk%%Bk%%Bk%%Bk%"
	Set/p"=%Bk%"<nul
	Set "Error=5:1"
)
If not %Error%==6:1 If %Numb[1]%==6 (
	Set "Bk1=%Bk%%Bk%%Bk%%Bk%%Bk%%Bk%"
	Set/p"=%Bk%"<nul
	Set "Error=6:1"
)
If not %Error%==7:1 If %Numb[1]%==7 (
	Set "Bk1=%Bk%%Bk%%Bk%%Bk%%Bk%%Bk%%Bk%"
	Set/p"=%Bk%"<nul
	Set "Error=7:1"
)
If not %Error%==8:1 If %Numb[1]%==8 (
	Set "Bk1=%Bk%%Bk%%Bk%%Bk%%Bk%%Bk%%Bk%%Bk%"
	Set/p"=%Bk%"<nul
	Set "Error=8:1"
)
Set/a "Numb[2]+=1"
Set/p"=%Numb[2]%%Bk1%"<nul
Ping -n 2 0.0.0 >nul
If %Numb[2]%==%Timeout% (
	If /I "%Text1%" NEQ "/NoCrLf" (
		Set/p"=%Bk% "<nul
		Set/p"=%Numb[2]% "<nul
		(Set/p=)<&1
	) Else (Echo.)
	Set "Error=0:0"
	Set "Numb[1]=0"
	Set "Numb[2]=0"
	Set "Timeout="
	Set "Numb[]="
	Set "Text="
	Exit/b
)
Set "Numb[1]="
Set "Numb[]=%Numb[2]%"
Goto Loop_1

:Help
	Echo.=============== %~n0 ===============
	Echo.Autor  : Andr‚ Luiz
	Echo.VersÆo : 1.0.0.4
	Echo.TheGoldenScript
	Echo.Sintaxe: %~n0 [Tempo] ["Texto"] [^<Parƒmetro^>]
	Echo.
	Echo.help ^| .h   - Exibir essa mensagem de ajuda.
	Echo./NoCrLf       - Sem quebra de linha.
	Echo.
	Echo.Exemplo:
	Echo.%~n0 "" 20
	Echo.%~n0 "" 20 /NoCrLf
	Echo.%~n0 "Wait! " 20
	Echo.%~n0 "Wait! " 20 /NoCrLf
Exit/b
