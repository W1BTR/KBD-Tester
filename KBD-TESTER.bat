@echo off
title KBD
mode con: cols=25 lines=5
echo Tester by W1BTR.
echo Press any key...
timeout /t 1 >nul
cls
call kbd.exe
:disp
cls
echo You pressed a key at
echo %time%. Woohoo!
echo kbd.exe reply: [96m%errorlevel%[0m
call kbd.exe
goto disp