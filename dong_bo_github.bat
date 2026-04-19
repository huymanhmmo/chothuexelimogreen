@echo off
title GitHub Sync - VinFast Limo Green
echo ==========================================
echo    DANG DONG BO DU LIEU LEN GITHUB
echo ==========================================
echo.

:: 1. Add va Commit cac thay doi moi
git add .
git commit -m "Cap nhat doanh thu san bay va thuong hieu VinFast Limo Green"

:: 2. Thiet lap Remote (neu chua co)
git remote add origin https://github.com/huymanhmmo/chothuexelimogreen.git >nul 2>&1
git branch -M main

:: 3. Day len GitHub
echo Dang tai du lieu len...
git push -u origin main --force

echo.
if %errorlevel% equ 0 (
    echo ==========================================
    echo    DA DONG BO THANH CONG!
    echo ==========================================
    echo Website cua ban da duoc cap nhat ban moi nhat.
) else (
    echo [LOI] Khong the day du lieu. 
    echo Neu ban gap loi 'GH007 (Email privacy)', hay vao link sau:
    echo https://github.com/settings/emails
    echo Va bo tich o: 'Block command line pushes that expose my email'
    echo Sau do chay lai tep nay.
)

echo.
pause
