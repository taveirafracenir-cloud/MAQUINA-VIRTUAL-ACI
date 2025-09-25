@echo off
color 0a
title Kernel ACI

:load_config
cls
echo Carregando configuracoes...
echo.
echo Verificando arquivo config.txt...

rem Verifica se o arquivo de configuracao existe.
if not exist "config.txt" (
    echo Arquivo nao encontrado! Criando padrao...
    echo LINGUAGEM=PT-BR > config.txt
    echo TEMA=ESCURO >> config.txt
    echo Versao do kernel=1.0 >> config.txt
    timeout /t 2 > nul
)

echo Arquivo encontrado. Lendo configuracoes...
rem Simula a leitura das configuracoes.
timeout /t 2 > nul

:main_menu
cls
echo =========================================================
echo.           SISTEMA OPERACIONAL ACI
echo.             Selecione uma opcao:
echo.
echo     [1] INICIAR KERNEL
echo     [2] VER CONFIGURACOES
echo     [3] SAIR
echo.
echo =========================================================
echo.
set /p "choice=> "

if "%choice%"=="1" goto start_kernel
if "%choice%"=="2" goto show_config
if "%choice%"=="3" goto end

echo.
echo Opcao invalida. Pressione qualquer tecla para continuar.
pause > nul
goto main_menu

:start_kernel
cls
echo =========================================================
echo.          KERNEL ACI - INICIADO
echo =========================================================
echo.
echo Kernel carregado com sucesso.
echo.
echo Pressione qualquer tecla para voltar...
pause > nul
goto main_menu

:show_config
cls
echo =========================================================
echo.           CONFIGURACOES DO SISTEMA
echo =========================================================
echo.
echo Informacoes salvas em config.txt:
echo.
type config.txt
echo.
echo Pressione qualquer tecla para voltar...
pause > nul
goto main_menu

:end
cls
echo Desligando o sistema...
timeout /t 2 > nul
exit
