#!/bin/bash
# Start the Node.js application and install dependencies if needed

cd /srv/my-node-app  # Change directory to where your application is installed
npm install           # Install dependencies (if any)
systemctl start my-node-app.service  # Example command to start the application using systemctl
