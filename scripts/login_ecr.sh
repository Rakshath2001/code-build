#!/bin/bash


echo "Logging in to ECR...."

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 738337656914.dkr.ecr.us-east-1.amazonaws.com
