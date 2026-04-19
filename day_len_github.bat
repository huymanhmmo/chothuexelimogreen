@echo off
title GitHub Uploader - Limo Green
echo Running GitHub Upload for huymanhmmo/chothuexelimogreen...
echo.

:: Khoi tao vung dem Git
git init
git add .
git commit -m "Hoan thien Landing Page Limo Green"
git branch -M main

:: Gan link repository truc tiep (Don gian nhat)
git remote remove origin >nul 2>&1
git remote add origin https://github.com/huymanhmmo/chothuexelimogreen.git

:: Tai len
echo Dang day ma nguon len GitHub...
git push -u origin main --force

echo.
if %errorlevel% equ 0 (
    echo ==========================================
    echo    DA TAI LEN THANH CONG!
    echo ==========================================
) else (
    echo [LOI] Vui long kiem tra xem ban da dang nhap GitHub tren may nay chua.
)

pause
