#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=harihr5/udacityp4repo
# Step 2
# Run the Docker Hub container with kubernetes
kubectl get nodes
kubectl run udacityproject4 --image=harihr5/udacityp4repo:udacityproject4 --port=8000
kubectl wait --for=condition=Ready=true pod/udacityproject4
# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/udacityproject4 8000:80