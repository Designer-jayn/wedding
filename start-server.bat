@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo 웨딩 초대장 로컬 서버 시작...
echo.
python --version
if errorlevel 1 (
    echo 오류: Python이 설치되지 않았거나 PATH에 등록되지 않았습니다.
    echo Python을 설치하거나 PATH에 추가해주세요.
    pause
    exit /b
)
echo.
echo 서버를 시작합니다... (Ctrl+C로 종료)
echo 브라우저에서 이 주소로 접속하세요: http://localhost:8000
echo.
python -m http.server 8000
pause
