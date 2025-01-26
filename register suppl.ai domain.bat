@echo off
setlocal enabledelayedexpansion

REM Hosts文件路径
set "hosts_file=%SystemRoot%\System32\drivers\etc\hosts"

REM 要添加的行
set "lines_to_add=127.0.0.1 suppl.ai
127.0.0.1 api.suppl.ai
127.0.0.1 admin.suppl.ai
127.0.0.1 pgadmin.suppl.ai"

REM 检查并添加行
echo Checking and adding entries to the hosts file...

for %%L in (!lines_to_add!) do (
    findstr /c:"%%L" "%hosts_file%" >nul
    if errorlevel 1 (
        echo Adding: %%L
        echo %%L >> "%hosts_file%"
    ) else (
        echo Already exists: %%L
    )
)

echo Done.
pause
