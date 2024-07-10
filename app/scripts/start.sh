#!/bin/bash

# Stop any running instances of node
killall -9 node || true

# Determine the environment based on DEPLOYMENT_GROUP_NAME
if [ "$DEPLOYMENT_GROUP_NAME" == "production" ]; then
  NODE_ENV=production
  CONFIG_FILE=config.prod.json
  echo "Starting application in production environment..."
elif [ "$DEPLOYMENT_GROUP_NAME" == "development" ]; then
  NODE_ENV=development
  CONFIG_FILE=config.dev.json
  echo "Starting application in development environment..."
else
  NODE_ENV=default
  CONFIG_FILE=config.json
  echo "Starting application in default environment..."
fi

# Export the environment variable
export NODE_ENV

# Start the Node.js application with the specified config file
nohup /root/.nvm/versions/node/v20.14.0/bin/node /opt/apps/index.js --config $CONFIG_FILE > /opt/apps/start.log 2>&1 &
