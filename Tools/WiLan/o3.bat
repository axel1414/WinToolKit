@echo off

REM =====================================
REM Autor: @ByDog3r
REM Wi-Lan es un script de codigo abierto para recuperar contraseñas de wifi de manera rapida.
REM Version: 1.0
REM Github: https://github.com/ByDog3r/WiLan
REM
REM =====================================

cls

set autor= @ByDog3r
set snombre= Wi-Lan
set sversion= 1.0
set github= https://github.com/ByDog3r/WiLan
set di= ______________________________________________________________________
set ubicacion= %cd%

:opcion3
cls
color 6
echo. 
echo  [#] Esperando permisos de administrador..
ping localhost -n 2 >nul
:------------------------------------- 
REM --> Check for permissions 
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system" 
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system" 
) 

REM --> If error flag set, we do not have admin. 
if '%errorlevel%' NEQ '0' (
    goto UACPrompt 
) else (goto gotAdmin) 

:UACPrompt 
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs" 
    set params=%* 
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs" 

    "%temp%\getadmin.vbs" 
    del "%temp%\getadmin.vbs" 
    exit /B 

:gotAdmin 
    pushd "%CD%" 
    CD /D "%~dp0" 
:--------------------------------------  
cls
color a
echo.
echo  [#] Hecho.
ping localhost -n 2 >nul
cls
color 6
netsh wlan show wlanreport
echo  Presione una tecla para continuar...
pause>nul
start C:\ProgramData\Microsoft\Windows\WlanReport\wlan-report-latest.html
