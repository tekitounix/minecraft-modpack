@echo off
chcp 65001 > nul
title Minecraft 1.20.1 Modpack Installer

echo ========================================
echo   Minecraft 1.20.1 Modpack Installer
echo ========================================
echo.

REM PowerShell 実行ポリシーをバイパスして実行
powershell -ExecutionPolicy Bypass -File "%~dp0install.ps1"

pause
