@echo off
title GitHub Uploader - Limo Green
echo ==========================================
echo    BAT DAU DAY LANDING PAGE LEN GITHUB
echo ==========================================
echo.

:: Kiem tra xem Git da duoc cai dat chua
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [LOI] May tinh cua ban chua cai dat Git. 
    echo Vui long tai va cai dat Git tai: https://git-scm.com/
    pause
    exit
)

:: Khoi tao va commit
git init
git add .
git commit -m "Hoan thien Landing Page Limo Green - Standard SEO 2026"
git branch -M main

echo.
set /p repo="==> NHAP LINK REPOSITORY CUA BAN (Gia su: https://github.com/user/repo.git): "

:: Them remote va push
git remote remove origin >nul 2>&1
git remote add origin %repo%
echo.
echo Dang day du lieu len GitHub...
git push -u origin main --force

if %errorlevel% equ 0 (
    echo.
    echo ==========================================
    echo    CHUC MUNG! DA TAI LEN THANH CONG
    echo ==========================================
) else (
    echo.
    echo [LOI] Co loi xay ra trong qua trinh tai len. 
    echo Hay dam bao link Repository chinh xac va ban da dang nhap GitHub.
)

pause
