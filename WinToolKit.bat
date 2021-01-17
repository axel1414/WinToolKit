@echo off
title WINTOOLKIT V.1.0

rem ╔──────────────────────────────────────────────────────────╗
rem |     	         AUTHOR: @ByDog3r                      |
rem |   WINTOOLIT: Herramienta básica de hacking con windows   |
rem |          https://github.com/ByDog3r/Wintoolkit           |
rem ┖──────────────────────────────────────────────────────────┙
cls

set large= ______________________________________________________________________
set pwd=%cd%
color 6

echo.
echo %large%
echo      :::       ::: ::::::::::: ::::    ::: 
echo      :+:       :+:     :+:     :+:+:   :+:  
echo     +:+       +:+     +:+     :+:+:+  +:+    Hacking
echo    +#+  +:+  +#+     +#+     +#+ +:+ +#+              with
echo   +#+ +#+#+ +#+     +#+     +#+  +#+#+#                    @ByDog3r
echo   #+#+# #+#+#      #+#     #+#   #+#+#       
echo   ###   ###   ########### ###    ####       
echo %large%
echo.      


echo   [1] Rubber Ducky
echo   [2] Inverse Rubber Ducky
echo   [3] WifiKit     
echo.
echo   [4] Github
echo   [5] Informacion
echo   [6] Salir
echo.
set /p case=ByDog3r@wintoolkit:~$ 

if %case%==1 (start Tools\Ducky\RubberDucky\Rubber-Ducky.bat)

if %case%==2 (start "Tools\Ducky\Inverse Rubber Ducky\INVERSE-DUCKY.bat")

if %case%==3 (start Tools\WiLan\WiLan.bat)

if %case%==4 (start https://github.com/ByDog3r)

if %case%==5 (echo. echo Made by @ByDog3r)

