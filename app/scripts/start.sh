#!/bin/bash

# Stop any running instances of node
killall -9 node || true

# Set the environment and config file
NODE_ENV=default
CONFIG_FILE=config.json

# Export the environment variable
export NODE_ENV

# Start the Node.js application with the specified config file
nohup /root/.nvm/versions/node/v20.14.0/bin/node /opt/apps/index.js --config $CONFIG_FILE > /opt/apps/start.log 2>&1 &
