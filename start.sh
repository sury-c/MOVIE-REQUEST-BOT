#!/bin/bash

set -e

echo "Starting Jisshu filter bot..."

cd /Jisshu-filter-bot

echo "Installing requirements..."
pip3 install --no-cache-dir -r requirements.txt

echo "Starting bot..."
python3 bot.py
