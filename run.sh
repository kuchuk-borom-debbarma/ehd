#!/bin/bash

# Check if a URL was provided as an argument
if [ -z "$1" ]; then
  read -p "Enter album URL: " URL
else
  URL=$1
fi

if [ -z "$URL" ]; then
  echo "Error: No URL provided."
  exit 1
fi

# Run the downloader using the virtual environment
./.venv/bin/python3 downloader.py "$URL"
