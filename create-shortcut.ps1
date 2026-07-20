$proj = $PSScriptRoot
$ws = New-Object -ComObject WScript.Shell
$sc = $ws.CreateShortcut("$proj\Mineradio.lnk")
$sc.TargetPath = "$proj\node_modules\electron\dist\electron.exe"
$sc.Arguments = $proj
$sc.IconLocation = "$proj\build\icon.ico,0"
$sc.WorkingDirectory = $proj
$sc.WindowStyle = 4
$sc.Description = 'Mineradio - immersive music player'
$sc.Save()
Write-Host "Shortcut created successfully"
Write-Host "Path: $proj\Mineradio.lnk"
