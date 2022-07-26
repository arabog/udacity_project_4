#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>"
dockerpath="docktor2022/image"

# Step 2
# Run the Docker Hub container with kubernetes
# kubectl run image\
#     --image=$dockerpath\
#     --port=80 --labels app=image

kubectl run image --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward image 8000:80
