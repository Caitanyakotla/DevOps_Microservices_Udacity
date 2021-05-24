# Step 1:
# This is your Docker ID
dockerpath=caitanyakotla/ml-udacity:latest

# Step 2
# Run a Docker Hub container with kubernetes
kubectl run ml-app-pod\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=ml-app-pod


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to host
kubectl port-forward ml-app-pod 8000:80