#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=novavic/sk_clouddevops_project4

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=novavic
docker tag 29b671ab1c50 novavic/sk-clouddevops-project4:v1.0
# Step 3:
# Push image to a docker repository
docker push novavic/sk-clouddevops-project4:v1.0