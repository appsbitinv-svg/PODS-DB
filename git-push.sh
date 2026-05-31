#!/bin/bash

echo "🚀 Pushing changes to GitHub..."

# Add all changes
git add .

# Commit with timestamp
git commit -m "update: $(date '+%Y-%m-%d %H:%M:%S')"

# Push to repo
git push origin main

echo "✅ Done!"
