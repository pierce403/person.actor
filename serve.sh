#!/bin/bash

# Serve script for person.actor wiki
# Runs a local development server with live reload

set -e  # Exit on error

echo "Starting person.actor development server..."

# Check if mkdocs is installed
if ! command -v mkdocs &> /dev/null
then
    echo "Error: mkdocs is not installed. Please run: pip install -r requirements.txt"
    exit 1
fi

echo "Server will be available at: http://127.0.0.1:8000/"
echo "Press Ctrl+C to stop the server"
echo ""

# Serve the site with live reload
mkdocs serve

