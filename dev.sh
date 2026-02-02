#!/usr/bin/env bash
# Local development script: builds Pagefind search index and starts Hugo server.
# Usage: ./dev.sh [-D] [other hugo server flags...]

set -euo pipefail

echo "Building Hugo site..."
hugo --gc --minify

echo "Generating Pagefind search index..."
npx pagefind --site public

echo "Copying Pagefind index to static/ for hugo server..."
rm -rf static/pagefind
cp -r public/pagefind static/pagefind

echo "Starting Hugo dev server..."
hugo server "$@"
