@echo off
title GitHub Uploader - Limo Green
echo ==========================================
echo    KHOI TAO DU LIEU GIT
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

:: Khoi tao va commit (chi chay 1 lan)
git init
git add .
git commit -m "Hoan thien Landing Page Limo Green"
git branch -M main

:input_link
cls
echo ==========================================
echo    NHAP LINK REPOSITORY CUA BAN
echo ==========================================
echo.
echo Vui long vao GitHub, tao mot Repository moi, 
echo sau do copy link (dang https://github.com/user/repo.git) 
echo va dan vao day.
echo.
set "repo="
set /p repo="https://github.com/huymanhmmo/chothuexelimogreen.git"

if not defined repo (
    echo.
    echo [CANH BAO] Ban chua nhap link! Nhan phim bat ky de thu lai.
    pause
    goto input_link
)

:: Them remote va push
echo.
echo Dang kiem tra ket noi...
git remote remove origin >nul 2>&1
git remote add origin "%repo%"

echo.
echo Dang day du lieu len GitHub...
git push -u origin main --force

if %errorlevel% equ 0 (
    cls
    echo ==========================================
    echo    CHUC MUNG! DA TAI LEN THANH CONG
    echo ==========================================
    echo.
    echo Website cua ban se hoat dong sau vai phut.
) else (
    echo.
    echo [LOI] Co loi xay ra. Hay dam bao:
    echo 1. Link Repository chinh xac.
    echo 2. Ban da dang nhap GitHub trong trinh duyet/may tinh.
    echo 3. Repository tren GitHub dang de o che do Public.
)

pause
