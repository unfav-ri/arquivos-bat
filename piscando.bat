::Luz piscando
@echo OFF
title piscando
:flash
ping localhost -n 1 >nul
cls
if "%color%" == "0A" (set color=A0) else (set color=0A)
color %color%
goto :flash
pause > nul
