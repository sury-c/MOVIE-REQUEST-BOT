#!/bin/bash

set -e

echo "Starting Jisshu filter bot..."

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "Current directory: $(pwd)"

echo "Installing requirements..."
pip3 install --no-cache-dir -r requirements.txt

echo "Starting bot..."
python3 bot.py
