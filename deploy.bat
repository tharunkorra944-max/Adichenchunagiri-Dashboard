@echo off
echo ============================================
echo  Adichenchunagiri Dashboard Deployment
echo ============================================
echo.

REM Check if Node.js is installed
where node >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Node.js is not installed!
    echo Please install Node.js from: https://nodejs.org/
    echo.
    pause
    exit /b 1
)

echo [OK] Node.js is installed
node --version
echo.

REM Check if Firebase CLI is installed
where firebase >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo [INFO] Firebase CLI is not installed. Installing now...
    call npm install -g firebase-tools
    if %ERRORLEVEL% NEQ 0 (
        echo [ERROR] Failed to install Firebase CLI
        pause
        exit /b 1
    )
    echo [OK] Firebase CLI installed successfully
) else (
    echo [OK] Firebase CLI is already installed
)

firebase --version
echo.

REM Login to Firebase
echo [INFO] Logging in to Firebase...
call firebase login
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Firebase login failed
    pause
    exit /b 1
)

echo.
echo [OK] Firebase login successful
echo.

REM Deploy to Firebase
echo [INFO] Deploying to Firebase Hosting...
call firebase deploy --only hosting
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Deployment failed
    pause
    exit /b 1
)

echo.
echo ============================================
echo  Deployment Successful!
echo ============================================
echo.
echo Your dashboard is now live!
echo Check the URLs above to access your dashboard.
echo.
pause
