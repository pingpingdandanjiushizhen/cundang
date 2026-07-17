@echo off
REM 自动同步脚本 —— 由 Windows 任务计划程序每分钟调用

set HOME=C:\Users\Goebbel
set GIT_SSH_COMMAND=ssh -o StrictHostKeyChecking=accept-new

cd /d D:\study\cundang

REM 检查是否有变更
git add -A
git diff --cached --quiet
if %errorlevel% equ 0 goto :eof

REM 有变更，提交并推送
git commit -m "auto-sync %date% %time%"
git push origin main
