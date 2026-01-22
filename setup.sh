#!/bin/bash

# GitHub Pages Setup Script for Local Model Checker
# Run this script in your terminal to push to GitHub and enable Pages

echo "🚀 Setting up Local Model Checker for GitHub Pages..."
echo ""

# Navigate to the directory (adjust if needed)
cd localmodelchecker

# Initialize git if not already done
if [ ! -d .git ]; then
    echo "📦 Initializing git repository..."
    git init
fi

# Set your GitHub username and email (update these!)
echo "⚙️  Configuring git..."
git config user.name "etziya"
git config user.email "your-email@example.com"  # UPDATE THIS!

# Add all files
echo "📝 Adding files..."
git add .

# Commit
echo "💾 Committing changes..."
git commit -m "Initial commit: Ollama Local Model Checker"

# Add remote (only if not already added)
if ! git remote | grep -q origin; then
    echo "🔗 Adding remote repository..."
    git remote add origin https://github.com/etziya/localmodelchecker.git
fi

# Push to GitHub
echo "⬆️  Pushing to GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "✅ Done! Now follow these steps:"
echo ""
echo "1. Go to: https://github.com/etziya/localmodelchecker/settings/pages"
echo "2. Under 'Source', select 'Deploy from a branch'"
echo "3. Under 'Branch', select 'main' and '/ (root)'"
echo "4. Click 'Save'"
echo "5. Wait 1-2 minutes for deployment"
echo "6. Your site will be live at: https://etziya.github.io/localmodelchecker"
echo ""
echo "🎉 Enjoy your new GitHub Pages site!"
