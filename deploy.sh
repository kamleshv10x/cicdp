#!/bin/bash

echo "🚀 Starting deployment..."

echo "📥 Pulling latest code..."
git pull origin main || { echo "❌ Git pull failed"; exit 1; }

echo "🧪 Running tests..."
pytest || { echo "❌ Tests failed. Deployment stopped."; exit 1; }

echo "▶ Running app..."
python3 helloworld.py
python3 add.py

echo "✅ Deployment done!"
