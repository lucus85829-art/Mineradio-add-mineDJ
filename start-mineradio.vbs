Set WshShell = CreateObject("WScript.Shell")
WshShell.CurrentDirectory = "E:\A临时项目寄存\mineradio\Mineradio-main"
Set WshEnv = WshShell.Environment("PROCESS")
WshEnv.Item("ELECTRON_MIRROR") = "https://npmmirror.com/mirrors/electron/"
WshShell.Run "npx electron .", 0, False
