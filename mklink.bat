@echo off
set PROJ=E:\A临时项目寄存\mineradio\Mineradio-main
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command ^
"$ws = New-Object -ComObject WScript.Shell; $sc = $ws.CreateShortcut('%PROJ%\Mineradio.lnk'); $sc.TargetPath = '%PROJ%\node_modules\electron\dist\electron.exe'; $sc.Arguments = '%PROJ%'; $sc.IconLocation = '%PROJ%\build\icon.ico,0'; $sc.WorkingDirectory = '%PROJ%'; $sc.WindowStyle = 4; $sc.Save(); Write-Host 'OK'"
