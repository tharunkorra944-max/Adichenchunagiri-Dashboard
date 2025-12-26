# Adichenchunagiri Dashboard - Firebase Deployment Script
# Run this script to deploy your dashboard to Firebase

Write-Host "============================================" -ForegroundColor Cyan
Write-Host " Adichenchunagiri Dashboard Deployment" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

# Check if Node.js is installed
Write-Host "[Checking] Node.js installation..." -ForegroundColor Yellow
if (Get-Command node -ErrorAction SilentlyContinue) {
    $nodeVersion = node --version
    Write-Host "[OK] Node.js is installed: $nodeVersion" -ForegroundColor Green
} else {
    Write-Host "[ERROR] Node.js is not installed!" -ForegroundColor Red
    Write-Host "Please install Node.js from: https://nodejs.org/" -ForegroundColor Yellow
    Write-Host ""
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""

# Check if Firebase CLI is installed
Write-Host "[Checking] Firebase CLI installation..." -ForegroundColor Yellow
if (Get-Command firebase -ErrorAction SilentlyContinue) {
    $firebaseVersion = firebase --version
    Write-Host "[OK] Firebase CLI is installed: $firebaseVersion" -ForegroundColor Green
} else {
    Write-Host "[INFO] Firebase CLI is not installed. Installing now..." -ForegroundColor Yellow
    npm install -g firebase-tools
    if ($LASTEXITCODE -eq 0) {
        Write-Host "[OK] Firebase CLI installed successfully" -ForegroundColor Green
    } else {
        Write-Host "[ERROR] Failed to install Firebase CLI" -ForegroundColor Red
        Read-Host "Press Enter to exit"
        exit 1
    }
}

Write-Host ""

# Login to Firebase
Write-Host "[INFO] Logging in to Firebase..." -ForegroundColor Yellow
firebase login
if ($LASTEXITCODE -ne 0) {
    Write-Host "[ERROR] Firebase login failed" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""
Write-Host "[OK] Firebase login successful" -ForegroundColor Green
Write-Host ""

# Deploy to Firebase
Write-Host "[INFO] Deploying to Firebase Hosting..." -ForegroundColor Yellow
firebase deploy --only hosting

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "============================================" -ForegroundColor Cyan
    Write-Host " Deployment Successful!" -ForegroundColor Green
    Write-Host "============================================" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Your dashboard is now live!" -ForegroundColor Green
    Write-Host "Check the URLs above to access your dashboard." -ForegroundColor Yellow
} else {
    Write-Host ""
    Write-Host "[ERROR] Deployment failed" -ForegroundColor Red
}

Write-Host ""
Read-Host "Press Enter to exit"
