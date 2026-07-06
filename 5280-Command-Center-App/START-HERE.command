#!/bin/bash
# 5280 Command Center — double-click launcher
# Installs dependencies the first time, then starts the local app and opens your browser.

# Make sure common Node install locations are on PATH (Homebrew + node.org installer)
export PATH="/usr/local/bin:/opt/homebrew/bin:$PATH"

# Move into the app folder (next to this script)
cd "$(dirname "$0")/command-center" || { echo "Could not find the command-center folder."; read -r; exit 1; }

echo "=================================================="
echo "  5280 COMMAND CENTER"
echo "=================================================="
echo ""

# Check Node is installed
if ! command -v node >/dev/null 2>&1; then
  echo "⚠  Node.js is not installed on this Mac."
  echo "   Download the LTS installer from https://nodejs.org, run it,"
  echo "   then double-click this file again."
  echo ""
  read -r -p "Press Return to close..."
  exit 1
fi

echo "Node version: $(node -v)"
echo ""

# Install dependencies only if they're missing
if [ ! -d "node_modules" ]; then
  echo "First-time setup: installing dependencies (this can take a few minutes)..."
  npm install || { echo "npm install failed."; read -r; exit 1; }
  echo ""
fi

echo "Starting the app..."
echo "It will open at  http://localhost:3000"
echo "Leave this window open while you use the app."
echo "To stop the app: close this window (or press Control-C)."
echo ""

# Open the browser a few seconds after the server starts
( sleep 4; open "http://localhost:3000" ) &

# Start the dev server (foreground)
npm run dev
