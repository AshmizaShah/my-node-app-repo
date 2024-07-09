# scripts/start.sh
#!/bin/bash

# Load nvm and use the specified node version
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

nvm use 20.15.0

echo "Now using node $(node -v) (npm $(npm -v))"
echo "nvm version: $(nvm --version)"
echo "Node.js version: $(node -v)"
echo "Current directory: $(pwd)"

# Run npm install to install dependencies
npm install

echo "npm install completed successfully"

# Start the Node.js application using index.js
node /home/ec2-user/app/index.js

if [ $? -eq 0 ]; then
  echo "Application started successfully"
else
  echo "Error: Failed to start the application"
  exit 1
fi
