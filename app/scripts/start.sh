#!/bin/bash

# Stop any running instances of node
killall -9 node || true

# Check for an argument to set the environment
if [ "$1" = "production" ]; then
  NODE_ENV=production
  CONFIG_FILE=config.prod.json
elif [ "$1" = "development" ]; then
  NODE_ENV=development
  CONFIG_FILE=config.dev.json
else
  NODE_ENV=default
  CONFIG_FILE=config.json
fi

# Export the environment variable
export NODE_ENV

# Start the Node.js application with the specified config file
nohup /root/.nvm/versions/node/v20.14.0/bin/node /opt/apps/index.js --config $CONFIG_FILE > /opt/apps/start.log 2>&1 &
