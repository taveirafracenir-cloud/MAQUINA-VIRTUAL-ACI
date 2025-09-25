@echo off
color 0a
title Terminal e Editor

:main_interface
cls
echo ==============================================================================
echo.
echo    [ TERMINAL ]
echo.
echo ------------------------------------------------------------------------------
echo.
echo     Bem-vindo ao Terminal ACI. Digite seu comando abaixo.
echo.
echo.
echo.
echo ==============================================================================
echo.
echo    [ EDITOR DE CODIGO ]
echo.
echo ------------------------------------------------------------------------------
echo.
echo     Escreva seu código aqui. Para salvar e sair, pressione Ctrl+Z e Enter.
echo.
echo.
echo.
echo ==============================================================================
echo.

set /p "command=Comando: "

if /i "%command%"=="editor" goto editor_mode
if /i "%command%"=="sair" goto end
echo Comando nao reconhecido.
pause
goto main_interface

:editor_mode
cls
echo ==============================================================================
echo.
echo    [ EDITOR DE CODIGO ]
echo.
echo ------------------------------------------------------------------------------
echo.
copy con editor_code.txt
cls
echo Arquivo salvo!
echo Pressione qualquer tecla para voltar ao menu.
pause
goto main_interface

:end
cls
echo Fechando...
timeout /t 2 > nul
exit
