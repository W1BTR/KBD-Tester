@echo off
title KBD
mode con: cols=25 lines=5
cls
call kbd.exe
:disp
cls
echo You Pressed: %errorlevel%
call kbd.exe
goto disp