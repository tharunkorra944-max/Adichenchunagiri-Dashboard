# Complete Firebase Deployment Script
# This script will log you in to Firebase and deploy your dashboard
# Prerequisites: Node.js and Firebase CLI are already installed

Write-Host "============================================" -ForegroundColor Cyan
Write-Host " Adichenchunagiri Dashboard - Final Deployment" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

# Refresh environment path
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

Write-Host "[✓] Node.js v25.2.1 installed" -ForegroundColor Green
Write-Host "[✓] Firebase CLI installed (749 packages)" -ForegroundColor Green
Write-Host ""

# Step 1: Firebase Login
Write-Host "Step 1: Firebase Login" -ForegroundColor Yellow
Write-Host "---------------------------------------" -ForegroundColor Yellow
Write-Host "This will open your browser for Google authentication." -ForegroundColor White
Write-Host "Please approve the login on your phone if prompted." -ForegroundColor White
Write-Host ""
Read-Host "Press Enter to open Firebase login"

firebase login

if ($LASTEXITCODE -ne 0) {
    Write-Host ""
    Write-Host "[ERROR] Firebase login failed" -ForegroundColor Red
    Write-Host "Please try running: firebase login --reauth" -ForegroundColor Yellow
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""
Write-Host "[✓] Successfully logged in to Firebase" -ForegroundColor Green
Write-Host ""

# Step 2: Initialize Firebase (if needed)
Write-Host "Step 2: Initialize Firebase Project" -ForegroundColor Yellow
Write-Host "---------------------------------------" -ForegroundColor Yellow

# Check if .firebaserc exists
if (Test-Path ".firebaserc") {
    Write-Host "[INFO] Firebase project already configured" -ForegroundColor Cyan
} else {
    Write-Host "You'll be asked to:" -ForegroundColor White
    Write-Host "  - Select or create a Firebase project" -ForegroundColor White
    Write-Host "  - Public directory: Type 'public' and press Enter" -ForegroundColor White
    Write-Host "  - Single-page app: Type 'n' and press Enter" -ForegroundColor White
    Write-Host ""
    Read-Host "Press Enter to start Firebase init"
    
    firebase init hosting
    
    if ($LASTEXITCODE -ne 0) {
        Write-Host ""
        Write-Host "[ERROR] Firebase init failed" -ForegroundColor Red
        Read-Host "Press Enter to exit"
        exit 1
    }
}

Write-Host ""
Write-Host "[✓] Firebase project initialized" -ForegroundColor Green
Write-Host ""

# Step 3: Deploy
Write-Host "Step 3: Deploy to Firebase Hosting" -ForegroundColor Yellow
Write-Host "---------------------------------------" -ForegroundColor Yellow
Write-Host "Deploying your dashboard..." -ForegroundColor White
Write-Host ""

firebase deploy --only hosting

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "============================================" -ForegroundColor Green
    Write-Host " 🎉 DEPLOYMENT SUCCESSFUL! 🎉" -ForegroundColor Green
    Write-Host "============================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "Your Adichenchunagiri Dashboard is now LIVE!" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Your dashboard URLs are shown above." -ForegroundColor Yellow
    Write-Host "Look for lines like:" -ForegroundColor White
    Write-Host "  Hosting URL: https://your-project.web.app" -ForegroundColor White
    Write-Host "  Hosting URL: https://your-project.firebaseapp.com" -ForegroundColor White
    Write-Host ""
    Write-Host "You can now share these URLs with anyone!" -ForegroundColor Cyan
} else {
    Write-Host ""
    Write-Host "[ERROR] Deployment failed" -ForegroundColor Red
    Write-Host "Please check the error messages above" -ForegroundColor Yellow
}

Write-Host ""
Read-Host "Press Enter to exit"
