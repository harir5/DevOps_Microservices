#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=harihr5/udacityp4repo

# Step 2:  
# Authenticate & tag
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 070874708673.dkr.ecr.us-east-1.amazonaws.com
docker tag udacityproject4:latest 070874708673.dkr.ecr.us-east-1.amazonaws.com/udacityproject4:latest
docker login -u harihr5
docker tag udacityproject4 $dockerpath:udacityproject4
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push 070874708673.dkr.ecr.us-east-1.amazonaws.com/udacityproject4:latest
docker push $dockerpath:udacityproject4