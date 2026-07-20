$proj = 'E:\A临时项目寄存\mineradio\Mineradio-main'

$ws = New-Object -ComObject WScript.Shell
$sc = $ws.CreateShortcut("$proj\Mineradio.lnk")
$sc.TargetPath = "$proj\node_modules\electron\dist\electron.exe"
$sc.Arguments = $proj
$sc.IconLocation = "$proj\build\icon.ico,0"
$sc.WorkingDirectory = $proj
$sc.WindowStyle = 4
$sc.Description = 'Mineradio - 沉浸式音乐播放器'
$sc.Save()

Write-Host "Created: $proj\Mineradio.lnk"
Write-Host "Target: $($sc.TargetPath)"
