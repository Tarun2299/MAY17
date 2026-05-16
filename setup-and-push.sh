#!/bin/bash

# ═══════════════════════════════════════════════
#  MAY17 — Git Setup & Push Script
#  Run this ONCE from inside the MAY17 folder
# ═══════════════════════════════════════════════

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🚀 MAY17 — GitHub Setup Script"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# Copy .env.example to .env if not exists
if [ ! -f .env ]; then
  cp .env.example .env
  echo "✅ Created .env from .env.example"
fi

# Git init
git init
echo "✅ Git initialized"

# Stage all files
git add .
echo "✅ Files staged"

# First commit
git commit -m "🚀 Initial commit — MAY17 Node.js project with CI/CD"
echo "✅ First commit done"

# Set main branch
git branch -M main
echo "✅ Branch set to main"

# Add remote (change this URL if needed)
git remote add origin https://github.com/Tarun2299/MAY17.git
echo "✅ Remote added: https://github.com/Tarun2299/MAY17.git"

# Push
echo ""
echo "📤 Pushing to GitHub..."
git push -u origin main

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎉 Done! Your code is now on GitHub."
echo "👉 Go to: https://github.com/Tarun2299/MAY17/actions"
echo "   to watch your CI/CD pipeline run live!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
