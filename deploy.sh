#!/bin/sh

# Make the script executable, only run once
# "chmod +x deploy.sh"

# Update submodules to the latest gh-pages commit
git submodule update --init --remote

# Commit and push changes
git add .
git commit -m "Update submodules"
git push origin main

# Run the script
if [ "$1" != "--no-rerun" ]; then
  exec "$0" --no-rerun
fi

## TO RUN SCRIPT TYPE ##
# "./deploy.sh"