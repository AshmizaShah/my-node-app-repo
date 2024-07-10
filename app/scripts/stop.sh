#!/bin/bash

# Stop any running instances of node
echo "Stopping any running Node.js applications..."
killall -9 node || true
echo "Node.js applications stopped successfully."
