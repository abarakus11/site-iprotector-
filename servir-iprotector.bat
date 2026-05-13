@echo off
chcp 65001 >nul
cd /d "%~dp0"
title IPROTECTOR — servidor local
powershell.exe -NoLogo -NoProfile -ExecutionPolicy Bypass -File "%~dp0servir-iprotector.ps1"
if errorlevel 1 pause
