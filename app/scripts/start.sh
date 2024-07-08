#!/bin/bash

# Change directory to where your application is installed
cd /home/ec2-user/app

# Install dependencies using npm (if needed)
npm install

# Start the Node.js application using systemctl (assuming it's a systemd service)
# Adjust the service name ('my-node-app.service') based on your specific setup
systemctl start my-node-app.service
