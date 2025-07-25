#!/bin/bash

# Personal Website Deployment Script
# This script helps deploy the personal website to GitHub Pages

echo "🚀 Starting deployment process..."

# Check if GitHub username is provided
if [ -z "$1" ]; then
    echo "❌ Error: Please provide your GitHub username"
    echo "Usage: ./deploy.sh YOUR_GITHUB_USERNAME"
    echo "Example: ./deploy.sh yatonglan"
    exit 1
fi

GITHUB_USERNAME=$1
REPO_NAME="${GITHUB_USERNAME}.github.io"

echo "📝 GitHub Username: $GITHUB_USERNAME"
echo "📝 Repository Name: $REPO_NAME"

# Update remote URL
echo "🔗 Updating remote URL..."
git remote set-url origin https://github.com/$GITHUB_USERNAME/$REPO_NAME.git

# Check if remote is set correctly
if git remote get-url origin | grep -q "$GITHUB_USERNAME"; then
    echo "✅ Remote URL updated successfully"
else
    echo "❌ Failed to update remote URL"
    exit 1
fi

# Push to GitHub
echo "📤 Pushing to GitHub..."
git push -u origin master

if [ $? -eq 0 ]; then
    echo "✅ Successfully pushed to GitHub!"
    echo ""
    echo "🎉 Deployment completed!"
    echo "📱 Your website will be available at: https://$GITHUB_USERNAME.github.io"
    echo ""
    echo "📋 Next steps:"
    echo "1. Go to https://github.com/$GITHUB_USERNAME/$REPO_NAME"
    echo "2. Click on 'Settings' tab"
    echo "3. Scroll down to 'GitHub Pages' section"
    echo "4. Select 'Deploy from a branch'"
    echo "5. Choose 'master' branch and '/ (root)' folder"
    echo "6. Click 'Save'"
    echo ""
    echo "⏳ Your website should be live in a few minutes!"
else
    echo "❌ Failed to push to GitHub"
    echo "Please check your GitHub credentials and repository permissions"
    exit 1
fi 