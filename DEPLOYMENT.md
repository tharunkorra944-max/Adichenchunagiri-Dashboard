# Adichenchunagiri Dashboard - Firebase Deployment

This dashboard has been prepared for deployment to Firebase Hosting.

## Dashboard Features
- **Full Title**: Sri Adichunchanagiri composite English High School - Student Performance Analytics
- **Technologies**: HTML, TailwindCSS, Chart.js, PapaParse
- **Data Sources**: CSV files for student performance tracking

## File Structure
```
public/
├── index.html (main dashboard)
└── data/
    ├── Template_English_Results (2).csv
    ├── Template_LO_Mapping (4).csv
    ├── Template_LO_Mapping.csv
    ├── Template_Math_Results (2).csv
    └── Template_Registered_Data.csv
```

## Deployment Steps
1. Install Firebase CLI: `npm install -g firebase-tools`
2. Login to Firebase: `firebase login`
3. Initialize project: `firebase init`
4. Deploy: `firebase deploy`

## Hosting URL
After deployment, your dashboard will be available at: `https://[your-project-id].web.app`
