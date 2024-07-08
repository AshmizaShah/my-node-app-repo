#!/bin/bash

SERVICE_NAME="my-node-app.service"

if systemctl list-units --type=service --all | grep -q "$SERVICE_NAME"; then
  echo "Stopping $SERVICE_NAME..."
  sudo systemctl stop $SERVICE_NAME
else
  echo "Service $SERVICE_NAME not found, skipping stop."
fi
