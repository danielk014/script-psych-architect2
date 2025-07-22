#!/bin/bash

# Exit on error
set -e

echo "Starting Render build process..."

# Clean install dependencies
echo "Installing dependencies..."
npm ci || npm install

# Create .env file from Render environment variables
echo "Setting up environment variables..."
cat > .env << EOF
VITE_SUPABASE_URL=${VITE_SUPABASE_URL:-https://uzokfzktziwlttddumei.supabase.co}
VITE_SUPABASE_ANON_KEY=${VITE_SUPABASE_ANON_KEY:-eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InV6b2tmemt0eml3bHR0ZGR1bWVpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTEyMTM2MTIsImV4cCI6MjA2Njc4OTYxMn0.UBEEDCwk7mNk32GD73aJoZURmUaPgHAVNlF2l2VZ4fg}
VITE_ADMIN_CODE=${VITE_ADMIN_CODE:-admin}
NODE_ENV=production
EOF

echo "Environment variables set."

# Verify node_modules exists
if [ ! -d "node_modules" ]; then
    echo "node_modules not found, running npm install again..."
    npm install
fi

# Build the project using npx to ensure vite is found
echo "Building the project..."
npx vite build

echo "Build completed successfully!"