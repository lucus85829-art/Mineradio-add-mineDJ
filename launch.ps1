$env:ELECTRON_MIRROR = 'https://npmmirror.com/mirrors/electron/'
Set-Location $PSScriptRoot
& "$PSScriptRoot\node_modules\electron\dist\electron.exe" $PSScriptRoot
