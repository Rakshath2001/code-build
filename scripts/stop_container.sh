#!/bin/bash

CONTAINER_NAME=my-app

echo "Stopping existing container..."

docker stop $CONTAINER_NAME || true
docker rm $CONTAINER_NAME || true
