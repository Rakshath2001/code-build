#!/bin/bash

REGION=ap-south-1
ACCOUNT_ID=123456789012
REPO_NAME=my-app-repo
CONTAINER_NAME=my-app
IMAGE_TAG=latest

echo "Pulling latest image from ECR..."

docker pull $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/$REPO_NAME:$IMAGE_TAG

echo "Starting new container..."

docker run -d \
  --name $CONTAINER_NAME \
  -p 80:80 \
  $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/$REPO_NAME:$IMAGE_TAG
