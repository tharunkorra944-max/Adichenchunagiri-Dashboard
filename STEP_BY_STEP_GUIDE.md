# Step-by-Step Firebase Deployment Guide
## Adichenchunagiri Dashboard

---

## 📋 Prerequisites (Already Installed ✅)
- ✅ Node.js v25.2.1
- ✅ npm v11.6.2
- ✅ Firebase CLI (749 packages)

---

## 🚀 Deployment Steps

### Step 1: Open PowerShell
1. Press `Windows Key + X`
2. Click **"Windows PowerShell"** or **"Terminal"**
3. A blue/black window will open

---

### Step 2: Navigate to Your Project Folder
Copy and paste this command, then press Enter:

```powershell
cd "c:\Users\prava\OneDrive\Desktop\Adichenchunagiri Dashboard"
```

**What this does**: Changes to your dashboard folder

---

### Step 3: Refresh Environment Variables
Copy and paste this command, then press Enter:

```powershell
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
```

**What this does**: Makes Node.js and Firebase available in this session

---

### Step 4: Login to Firebase
Copy and paste this command, then press Enter:

```powershell
firebase login
```

**What will happen**:
1. Your web browser will open automatically
2. You'll see a Google sign-in page
3. Sign in with your Google account: `tharunkorra944@gmail.com`
4. **IMPORTANT**: Check your phone for a 2FA notification
5. Tap **"Yes"** on your phone to approve the login
6. Browser will show "Success! You're logged in"
7. Go back to PowerShell

**Expected output in PowerShell**:
```
✔ Success! Logged in as tharunkorra944@gmail.com
```

---

### Step 5: Initialize Firebase Project
Copy and paste this command, then press Enter:

```powershell
firebase init hosting
```

**You'll be asked several questions. Here's what to answer:**

#### Question 1: "Please select an option"
```
? Please select an option: (Use arrow keys)
❯ Use an existing project
  Create a new project
  Add Firebase to an existing Google Cloud Platform project
  Don't set up a default project
```
**Choose**: `Use an existing project` (if you have one) OR `Create a new project`

**Press Enter**

---

#### Question 2: "Select a default Firebase project"
You'll see a list of your Firebase projects, OR you'll be asked to create one.

**If creating new project**:
- Type a project ID like: `adichenchunagiri-dashboard`
- Press Enter

**If selecting existing project**:
- Use arrow keys to select your project
- Press Enter

---

#### Question 3: "What do you want to use as your public directory?"
```
? What do you want to use as your public directory? (public)
```
**Type**: `public`
**Press Enter**

---

#### Question 4: "Configure as a single-page app?"
```
? Configure as a single-page app (rewrite all urls to /index.html)? (y/N)
```
**Type**: `n` (lowercase n)
**Press Enter**

---

#### Question 5: "File public/index.html already exists. Overwrite?"
```
? File public/index.html already exists. Overwrite? (y/N)
```
**Type**: `n` (lowercase n)
**Press Enter**

---

**Expected output**:
```
✔ Firebase initialization complete!
```

---

### Step 6: Deploy Your Dashboard
Copy and paste this command, then press Enter:

```powershell
firebase deploy --only hosting
```

**What will happen**:
1. Firebase will upload your files
2. You'll see progress messages
3. After 30-60 seconds, you'll see your **LIVE URLs**!

**Expected output**:
```
✔ Deploy complete!

Project Console: https://console.firebase.google.com/project/your-project/overview
Hosting URL: https://your-project.web.app
```

---

## 🎉 Success! You're Done!

Your dashboard is now live at the URLs shown above!

**Copy both URLs and test them in your browser:**
- `https://your-project.web.app`
- `https://your-project.firebaseapp.com`

---

## 📝 Quick Reference: All Commands in Order

```powershell
# 1. Navigate to folder
cd "c:\Users\prava\OneDrive\Desktop\Adichenchunagiri Dashboard"

# 2. Refresh environment
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

# 3. Login (opens browser)
firebase login

# 4. Initialize project
firebase init hosting
# Answer: Use existing/Create new project
# Answer: public
# Answer: n
# Answer: n

# 5. Deploy
firebase deploy --only hosting
```

---

## 🔄 To Update Your Dashboard Later

When you make changes to your dashboard:

```powershell
# Navigate to folder
cd "c:\Users\prava\OneDrive\Desktop\Adichenchunagiri Dashboard"

# Deploy changes
firebase deploy --only hosting
```

Your changes will be live in seconds!

---

## 🆘 Common Issues & Solutions

### Issue: "firebase: The term 'firebase' is not recognized"
**Solution**: 
```powershell
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
```

### Issue: Browser doesn't open for login
**Solution**: Look for a URL in PowerShell output and manually copy it to your browser

### Issue: Can't run scripts / Execution Policy error
**Solution**: Run PowerShell as Administrator and run:
```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force
```

### Issue: Already logged in but want to use different account
**Solution**:
```powershell
firebase logout
firebase login
```

---

## 📱 Files in Your Project

```
Adichenchunagiri Dashboard/
├── public/                  ← This gets uploaded to Firebase
│   ├── index.html          ← Your dashboard
│   └── data/               ← Your CSV files
├── firebase.json           ← Configuration (already set up)
└── .firebaserc             ← Created after Step 5
```

---

## ✅ Checklist

Before you start:
- [ ] PowerShell is open
- [ ] You have your phone nearby (for 2FA)
- [ ] You know your Google account password

After deployment:
- [ ] I received two URLs
- [ ] I tested both URLs in browser
- [ ] Dashboard loads correctly
- [ ] Data is showing properly

---

**Need help? All steps are ready - just follow them one by one!** 🚀
