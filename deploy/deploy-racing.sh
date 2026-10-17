#!/usr/bin/env bash
# Pull the latest Belly Cart and publish it to /var/www/games/racing.
set -euo pipefail
cd "$(dirname "$0")/.."
git pull --ff-only
mkdir -p /var/www/games/racing
rsync -a --delete --exclude '.git' --exclude 'deploy' --exclude 'README.md' ./ /var/www/games/racing/
echo "Belly Cart deployed: $(git rev-parse --short HEAD)"
