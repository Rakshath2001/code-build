#!/bin/bash

REGION=ap-south-1 
ACCOUNT_ID=123456789012
REPO_NAME=my-app-repo

echo "Logging in to ECR...."

aws ecr get-login-password --region $REGION \
| docker login --username AWS \
--password-stdin $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com
