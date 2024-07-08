#!/bin/bash

NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # Load NVM into current session
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # Load NVM bash_completion

# Activate the desired version of Node.js and npm
nvm use v20.15.0

cd /home/ec2-user/app || { echo "Error: Directory /home/ec2-user/app not found"; exit 1; }
echo "Current directory: $(pwd)"

~/.nvm/versions/node/v20.15.0/bin/npm install || { echo "Error: npm command not found or failed"; exit 1; }
echo "npm install completed successfully"

# Replace `my-node-app.service` with your actual service name and start command
# Example:
# systemctl start my-node-app.service || { echo "Error: Failed to start my-node-app.service"; exit 1; }
