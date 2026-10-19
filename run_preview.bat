@echo off
title Asma Batool Portfolio - Local Preview
echo ========================================================
echo Starting local web server for Asma Batool Portfolio...
echo Opening in your default web browser at http://localhost:8080
echo ========================================================
powershell -ExecutionPolicy Bypass -File "%~dp0preview.ps1"
pause
