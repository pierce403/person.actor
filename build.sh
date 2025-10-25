#!/bin/bash

# Build script for person.actor wiki
# Builds the MkDocs site into the site/ directory

set -e  # Exit on error

echo "Building person.actor wiki..."

# Check if mkdocs is installed
if ! command -v mkdocs &> /dev/null
then
    echo "Error: mkdocs is not installed. Please run: pip install -r requirements.txt"
    exit 1
fi

# Clean previous build
if [ -d "site" ]; then
    echo "Cleaning previous build..."
    rm -rf site
fi

# Build the site
echo "Running mkdocs build..."
mkdocs build

echo "Build complete! Site is in ./site/"
echo "To test locally, run: ./serve.sh"

