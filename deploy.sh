#!/bin/bash
set -e

cd /home/phatto/Personal-Website

echo "Pulling latest changes..."
git pull

echo "Installing dependencies..."
npm ci

echo "Building site..."
npm run build

echo "Deploying site..."
sudo rsync -av --delete ./_site/ /var/www/html/

echo "Website deployed successfully!"