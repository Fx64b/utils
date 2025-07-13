#!/bin/bash

echo "🧹 Starting Docker cleanup..."

echo "📊 Current Docker disk usage:"
docker system df

echo "🗑️ Removing dangling images..."
docker image prune -f

echo "🧽 Cleaning build cache..."
docker builder prune -f

echo "📦 Removing unused containers..."
docker container prune -f

echo "✅ Cleanup complete!"
echo "📊 New Docker disk usage:"
docker system df
