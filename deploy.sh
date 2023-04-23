#!/bin/sh

# Make the script executable
chmod +x "$0"

# Update submodules to the latest gh-pages commit
git submodule update --remote

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