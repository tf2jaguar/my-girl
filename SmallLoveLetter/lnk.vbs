set WshShell=WScript.CreateObject("WScript.Shell")  
strDesktop=WshShell.SpecialFolders("Desktop")  
set oShellLink=WshShell.CreateShortcut(strDesktop & "\xqs.lnk")  
oShellLink.TargetPath="D:\MyDocuments\Programmer\jelly\xqs.vbs"
oShellLink.WindowStyle=1  
oShellLink.Hotkey="CTRL+SHIFT+E"  
oShellLink.IconLocation="c:\icon.ico,0"  
oShellLink.Description="my shortcut descriptiion"  
oShellLink.WorkingDirectory=strDesktop  
oShellLink.Save  