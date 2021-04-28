@echo off
:menu
cls
Echo ------------------------------------------------------------------------------
echo %DATE% ^| %TIME%
Echo ------------------------------------------------------------------------------
color 01
echo Hola! Como estas? Soy tu asistente virtual de trabajo de Windows. Que puedo hacer por ti?
color A
echo Opcion 1) Crear tu estructura de trabajo ya diseniada para comenzar a trabajar
echo Opcion 2) Visualizar la estructura.
echo Opcion 3) Borrar la estructura.
echo Opcion 4) Hacer un backup en la siguiente carpeta "M2_SMO_Backup_20/04/2021"
echo Opcion 5) Salir
echo.
set/p quehacer= Seleccione una opcion: 
echo.
if %quehacer%==1 goto 1
if %quehacer%==2 goto 2
if %quehacer%==3 goto 3
if %quehacer%==4 goto 4
if %quehacer%==S goto 5
echo ERROR: Opcion no valida
pause
goto menu
:1
cls
echo De acuerdo, creado con exito!
cd%homepath%\Desktop & md "M2 - Sistemes Operatius" & cd "M2 - Sistemes Operatius" & md "UF1 - Introduccio als SMO" & md "UF2 - Sistemes Operatius Propietaris" & md "UF3 - Sistemes Operatius Lliures" & cd "UF2 - Sistemes Operatius Propietaris" & md "Instal_lacio Windows 10" & md "Tasques configuracio Windows 10" & md "Tasques administracio Windows 10"
PAUSE
echo %menu%
goto menu
:2
cls
cd %homepath%\Desktop\"M2 - Sistemes Operatius" & tree
pause
echo %menu%
goto menu
:3
cls
cd %homepath%\Desktop & rmdir /S  "M2 - Sistemes Operatius"
pause
echo %menu%
goto menu
:4
cls
cd %homepath%/Desktop
Robocopy /E %homepath%/Desktop/"M2 - Sistemes Operatius" %homepath%/Desktop/M2_SMO_Backup_%date:~6,4%%date:~3,2%%date:~0,2%
pause
echo %menu%
goto menu
pause
:5
cls
echo Hasta la proxima!
pause
exit
