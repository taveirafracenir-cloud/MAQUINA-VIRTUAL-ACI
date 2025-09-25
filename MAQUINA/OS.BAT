@echo off
title Maquina Virtual ACI - CMD
color 0a

:login
cls
echo =========================================================
echo.          BEM-VINDO A MAQUINA VIRTUAL ACI
echo.
echo.        Por favor, digite seu nome de usuario.
echo.
echo.            (Para sair, digite 'sair')
echo =========================================================
echo.
set /p "user=> "
if /i "%user%"=="sair" goto end
if /i "%user%"=="" goto login
cls

:main_menu
cls
echo =========================================================
echo.              MAQUINA VIRTUAL ACI - CMD
echo.
echo.      Bem-vindo, %user%! O que voce deseja fazer?
echo.
echo.      [COMANDOS DISPONIVEIS]
echo.
echo.      - help        (Mostra os comandos disponiveis)
echo.      - clear       (Limpa a tela)
echo.      - eco         (Exibe uma mensagem na tela)
echo.      - info        (Mostra informacoes do sistema)
echo.      - sair        (Sai da maquina virtual)
echo.
echo =========================================================
echo.
set /p "command=> "

if /i "%command%"=="help" goto help
if /i "%command%"=="clear" goto clear
if /i "%command%"=="eco" goto eco
if /i "%command%"=="info" goto info
if /i "%command%"=="sair" goto end
if /i "%command%"=="" goto main_menu
echo.
echo Comando invalido. Digite 'help' para ver a lista de comandos.
pause
goto main_menu

:help
cls
echo Comandos disponiveis:
echo - help (Mostra os comandos disponiveis)
echo - clear (Limpa a tela)
echo - eco (Exibe uma mensagem na tela)
echo - info (Mostra informacoes do sistema)
echo - sair (Sai da maquina virtual)
pause
goto main_menu

:clear
cls
goto main_menu

:eco
cls
set /p "message=Digite sua mensagem: "
echo.
echo Mensagem do sistema: %message%
pause
goto main_menu

:info
cls
echo Informacoes do Sistema:
echo.
echo Usuario: %user%
echo Sistema Operacional: %OS%
echo Modelo da Maquina: Simulado - Versao 1.0
echo Data e Hora: %date% %time%
echo.
echo. Este e um ambiente de maquina virtual simulado por um arquivo .bat.
pause
goto main_menu

:end
cls
echo Saindo da maquina virtual.
echo Ate a proxima!
pause
exit
