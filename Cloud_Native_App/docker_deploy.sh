#!/bin/bash

set -e

IMAGE_NAME="calculator-app"
CONTAINER_NAME="calculator-container"
PORT=5000

docker rm -f $CONTAINER_NAME || true

docker build -t $IMAGE_NAME .

echo "Running Docker container..."
docker run -d -p $PORT:5000 --name $CONTAINER_NAME $IMAGE_NAME

echo "Docker container '$CONTAINER_NAME' is running and accessible on port $PORT."
