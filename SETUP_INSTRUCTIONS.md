# GitHub Pages Setup Instructions

## Quick Setup (Recommended)

1. **Download all the files** from this folder
2. **Open your terminal** and navigate to where you saved the files
3. **Run the setup script**:
   ```bash
   bash setup.sh
   ```
4. **Follow the on-screen instructions**

---

## Manual Setup (If script doesn't work)

### Step 1: Initialize and Push to GitHub

Open your terminal and run these commands one by one:

```bash
# Navigate to your project folder
cd /path/to/localmodelchecker

# Initialize git repository
git init

# Configure git (use your actual email!)
git config user.name "etziya"
git config user.email "your-email@example.com"

# Add all files
git add .

# Commit the files
git commit -m "Initial commit: Ollama Local Model Checker"

# Add your GitHub repository as remote
git remote add origin https://github.com/etziya/localmodelchecker.git

# Rename branch to main
git branch -M main

# Push to GitHub
git push -u origin main
```

### Step 2: Enable GitHub Pages

1. Go to your repository: https://github.com/etziya/localmodelchecker
2. Click on **Settings** (top right)
3. Scroll down to **Pages** in the left sidebar
4. Under **Source**, select:
   - **Branch:** `main`
   - **Folder:** `/ (root)`
5. Click **Save**

### Step 3: Wait and Visit

- Wait 1-2 minutes for GitHub to build your site
- Visit: https://etziya.github.io/localmodelchecker
- 🎉 Your site is live!

---

## Troubleshooting

### "Authentication failed" error
- Make sure you're logged into GitHub on your terminal
- You might need to use a personal access token instead of password
- Generate token at: https://github.com/settings/tokens

### "Repository not found"
- Make sure the repository exists at: https://github.com/etziya/localmodelchecker
- Check that you have push access to the repository

### Site not loading after 5+ minutes
- Check the Actions tab in your GitHub repo for build errors
- Make sure the file is named `index.html` (not `ollama-checker.html`)

### Need to update your site?
```bash
# Make your changes, then:
git add .
git commit -m "Updated features"
git push origin main
# Wait 1-2 minutes for the site to rebuild
```

---

## Files in this folder:

- `index.html` - Your main app (renamed from ollama-checker.html)
- `README.md` - Project documentation for GitHub
- `.gitignore` - Files to ignore in git
- `setup.sh` - Automated setup script
- `SETUP_INSTRUCTIONS.md` - This file!
