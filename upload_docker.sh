#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
docker path=caitanyakotla/ml-udacity
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
# docker login - caitanyakotla
docker tag ml-udacity caitanyakotla/ml-udacity:latest
# Step 3:
# Push image to a docker repository
docker push caitanyakotla/ml-udacity:latest
