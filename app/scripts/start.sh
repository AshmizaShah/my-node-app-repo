#!/bin/bash

# Load nvm and use the specified Node.js version
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# Ensure the Node.js version you need is used
nvm use 20 || nvm install 20

# Navigate to the application directory
cd /opt/apps

# Install dependencies
npm install

# Start the application
node index.js
