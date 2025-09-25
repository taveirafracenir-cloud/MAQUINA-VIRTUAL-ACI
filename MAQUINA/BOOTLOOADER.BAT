@echo off
color 0a

echo.
echo =========================================================
echo.              Iniciando a Maquina Virtual...
echo =========================================================
echo.

:boot_sequence
echo Verificando memoria... OK
timeout /t 1 > nul
echo Carregando kernel... OK
timeout /t 1 > nul
echo Iniciando drivers... OK
timeout /t 1 > nul
echo Buscando disco de boot... OK
timeout /t 1 > nul
echo.

:boot_complete
cls
echo =========================================================
echo.              Sistema ACI - Versao 1.0
echo =========================================================
echo.
echo Iniciacao concluida com sucesso.
echo.
echo Digite "start" para continuar ou "reiniciar" para a tela de boot.
echo.
set /p "command=> "

if /i "%command%"=="start" goto main_menu
if /i "%command%"=="reiniciar" goto boot_sequence
if /i "%command%"=="clear" goto boot_complete
echo.
echo Comando invalido.
pause
goto boot_complete

:main_menu
cls
echo =========================================================
echo.              TERMINAL PRINCIPAL
echo =========================================================
echo.
echo Bem-vindo ao Sistema ACI.
echo Digite "exit" para sair.
echo.
set /p "user_command=> "
if /i "%user_command%"=="exit" goto end
echo Comando recebido: %user_command%
pause
goto main_menu

:end
cls
echo Desligando o sistema...
timeout /t 2 > nul
exit
