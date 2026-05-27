@echo off
setlocal enabledelayedexpansion

:: ===== 修改这里 =====
set PORT=8080
:: ===================

echo.
echo Kill process on port %PORT% ...

:: 查找占用端口的 PID
for /f "tokens=5" %%a in ('netstat -ano ^| findstr :%PORT%') do (
    set PID=%%a
)

if "%PID%"=="" (
    echo No process found on port %PORT%
    goto end
)

echo Found PID: %PID%

:: 强制结束进程
taskkill /PID %PID% /F

echo Port %PORT% released successfully.

:end
pause