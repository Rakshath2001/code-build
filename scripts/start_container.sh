#!/bin/bash

CONTAINER_NAME=my-app
IMAGE_TAG=latest

echo "Pulling latest image from ECR..."

docker pull 738337656914.dkr.ecr.us-east-1.amazonaws.com/trip-advisor:$IMAGE_TAG

echo "Starting new container..."

docker run -d \
  --name $CONTAINER_NAME \
  -p 80:80 \
  738337656914.dkr.ecr.us-east-1.amazonaws.com/trip-advisor:$IMAGE_TAG
