# Adichenchunagiri Dashboard

Sri Adichunchanagiri composite English High School - Student Performance Analytics Dashboard

## 🚀 Quick Start - Firebase Deployment

### Option 1: Automated Deployment (Recommended)

**Using PowerShell:**
```powershell
.\deploy.ps1
```

**Using Command Prompt:**
```cmd
deploy.bat
```

The scripts will:
- ✅ Check for Node.js and Firebase CLI
- ✅ Install Firebase CLI if needed
- ✅ Handle Firebase login
- ✅ Deploy your dashboard automatically

### Option 2: Manual Deployment

See [`deployment_guide.md`](deployment_guide.md) for detailed step-by-step instructions.

---

## 📁 Project Structure

```
Adichenchunagiri Dashboard/
├── public/                    # Firebase hosting folder
│   ├── index.html            # Main dashboard (100KB, 1803 lines)
│   └── data/                 # CSV data files
│       ├── Template_English_Results (2).csv
│       ├── Template_LO_Mapping (4).csv
│       ├── Template_Math_Results (2).csv
│       └── Template_Registered_Data.csv
├── firebase.json             # Firebase configuration
├── .firebaseignore          # Ignored files
├── deploy.bat               # Windows batch deployment script
├── deploy.ps1               # PowerShell deployment script
└── DEPLOYMENT.md            # Detailed deployment guide
```

---

## 🛠️ Technology Stack

- **Frontend**: HTML5, TailwindCSS
- **Charts**: Chart.js
- **Data Processing**: PapaParse (CSV parsing)
- **Hosting**: Firebase Hosting

---

## 📊 Dashboard Features

- Student performance analytics
- Interactive charts and visualizations
- Grade-wise performance tracking
- Subject-wise analysis (Math & English)
- Learning outcome mapping
- Registered student data management

---

## 🌐 After Deployment

Your dashboard will be available at:
- `https://[your-project-id].web.app`
- `https://[your-project-id].firebaseapp.com`

---

## 🔄 Updating Your Dashboard

1. Make changes to files in the `public/` folder
2. Run the deployment script again:
   ```powershell
   .\deploy.ps1
   ```

---

## 📝 Prerequisites

- **Node.js**: [Download here](https://nodejs.org/)
- **Firebase Account**: [Sign up](https://firebase.google.com/)
- **Google Account**: For Firebase authentication

---

## 🆘 Support

If you encounter any issues:
1. Check `DEPLOYMENT.md` for troubleshooting tips
2. Ensure Node.js is properly installed
3. Verify you're logged into Firebase with the correct Google account

---

## 📄 License

Educational dashboard for Sri Adichunchanagiri composite English High School

---

Built with ❤️ for better education analytics
