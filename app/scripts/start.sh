#!/bin/bash

# Load nvm environment
export NVM_DIR="/home/ec2-user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Use the desired Node.js version
nvm use v20.15.0 || { echo "Error: Failed to use Node.js v20.15.0"; exit 1; }

# Check if nvm and node are available
nvm_version=$(nvm --version)
node_version=$(node --version)

echo "nvm version: $nvm_version"
echo "Node.js version: $node_version"

# Change directory to where the application is located
cd /home/ec2-user/app || { echo "Error: Directory /home/ec2-user/app not found"; exit 1; }
echo "Current directory: $(pwd)"

# Install npm dependencies
npm install || { echo "Error: npm install failed"; exit 1; }
echo "npm install completed successfully"

# Start your Node.js application
# Make sure to replace 'my-node-app' with your actual application start command
node server.js || { echo "Error: Failed to start the application"; exit 1; }
echo "Node.js application started successfully"
