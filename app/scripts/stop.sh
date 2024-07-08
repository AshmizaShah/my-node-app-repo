#!/bin/bash

SERVICE_NAME="my-node-app.service"

# Check if the service is running
if systemctl list-units --type=service --all | grep -q "$SERVICE_NAME"; then
  echo "Stopping $SERVICE_NAME..."
  sudo systemctl stop "$SERVICE_NAME"  # Stop the service
  echo "$SERVICE_NAME stopped successfully."
else
  echo "Service $SERVICE_NAME not found, skipping stop."
fi
