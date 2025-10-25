#!/bin/bash

# Deploy script for person.actor wiki
# Deploys the site to GitHub Pages

set -e  # Exit on error

echo "Deploying person.actor wiki to GitHub Pages..."

# Check if mkdocs is installed
if ! command -v mkdocs &> /dev/null
then
    echo "Error: mkdocs is not installed. Please run: pip install -r requirements.txt"
    exit 1
fi

# Ensure we're on a clean working directory
if [[ -n $(git status -s) ]]; then
    echo "Warning: You have uncommitted changes. Please commit or stash them first."
    git status -s
    read -p "Continue anyway? (y/N) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 1
    fi
fi

# Build and deploy to gh-pages branch
echo "Building and deploying..."
mkdocs gh-deploy

echo "Deployment complete! Site will be live at: https://person.actor (or your GitHub Pages URL)"

