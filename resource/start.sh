@echo off
setlocal enabledelayedexpansion

set "port=2222"

for /f "tokens=5" %%i in ('netstat -aon ^| findstr :%port%') do (
    echo Terminating process ID: %%i
    taskkill /PID %%i /F
)

for /f "skip=1 tokens=2" %%i in ('tasklist /FI "imagename eq VirtualBox.exe"') do (
    echo Terminating process ID: %%i
    taskkill /PID %%i /F
)


for /f "skip=1 tokens=2" %%i in ('tasklist /FI "IMAGENAME eq VirtualBox.exe" ^| findstr "VBox"') do (
    echo Terminating process ID: %%i
    taskkill /PID %%i /F
)

for /f "skip=1 tokens=2" %%i in ('tasklist /FI "IMAGENAME eq VBoxSVC.exe" ^| findstr "VBoxSVC"') do (
    echo Terminating process ID: %%i
    taskkill /PID %%i /F
)

#taskkill /PID %%i /F






pause