#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=novavic/sk-clouddevops-project4:v1.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run sk-clouddevops-project4 --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl  get pods
# Step 4:
# Forward the container port to a host

#https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands#wait
#https://stackoverflow.com/a/60810347

#waiting for pod to be ready otherwise port forwarding errors out
#either of the following works for that condition check
#kubectl wait --for=condition=ready pod --all
kubectl wait --for=condition=ready pod/sk-clouddevops-project4
#actual port forwarding
kubectl port-forward sk-clouddevops-project4 8000:80
