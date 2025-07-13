#!/bin/bash

echo "🐳 Docker Resource Monitor"
echo "=========================="
echo "💾 System Usage:"
docker system df
echo ""
echo "🏗️ Build Cache:"
docker buildx du 2>/dev/null || echo "BuildKit not available"
echo ""
echo "📊 Image Stats:"
docker images --format "table {{.Repository}}\t{{.Tag}}\t{{.Size}}" | head -10
