@echo off
color 0f
mode con cols=80 lines=25
cls

echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo            ██╗    ██╗ ███╗   ██╗ ██████╗  ██████╗  ██╗  ██╗ ███████╗
echo            ██║    ██║ ████╗  ██║ ██╔══██╗██╔═══██╗ ██║  ██║ ██╔════╝
echo            ██║ █╗ ██║ ██╔██╗ ██║ ██████╔╝██║   ██║ ███████║ █████╗
echo            ██║███╗██║ ██║╚██╗██║ ██╔══██╗██║   ██║ ╚════██║ ██╔══╝
echo            ╚███╔███╔╝ ██║ ╚████║ ██║  ██║╚██████╔╝      ██║ ███████╗
echo            ╚══╝╚══╝  ╚═╝  ╚═══╝ ╚═╝  ╚═╝ ╚═════╝       ╚═╝ ╚══════╝
echo.
echo.
echo.
echo              Iniciando o sistema operacional...
echo.
timeout /t 5 > nul
cls

echo.
echo Verificando disco... [OK]
echo Carregando kernel... [OK]
echo Inicializando drivers... [OK]
echo.
echo Pressione qualquer tecla para iniciar o terminal...
pause > nul

goto main_menu

:main_menu
cls
color 0a
echo =========================================================
echo.              TERMINAL DE COMANDOS
echo =========================================================
echo.
echo Bem-vindo ao terminal simulado.
echo Digite 'ajuda' para ver os comandos.
echo.
set /p "comando=> "

if /i "%comando%"=="ajuda" goto ajuda
if /i "%comando%"=="sair" goto end
echo.
echo Comando invalido.
pause
goto main_menu

:ajuda
cls
echo Comandos disponiveis:
echo - ajuda (Mostra os comandos)
echo - sair (Fecha o terminal)
echo.
pause
goto main_menu

:end
cls
echo Desligando o sistema...
timeout /t 2 > nul
exit
