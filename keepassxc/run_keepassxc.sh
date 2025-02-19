#!/bin/bash

# Script to run the KeePassXC Docker container with restricted access

# Define the image name
IMAGE_NAME="keepassxc"

# Allow Docker containers to access the X server
xhost +local:docker

# Run the Docker container with the specified options
docker run --rm --network none -it --name keepassxc-container \
    --device /dev/dri:/dev/dri \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    "$IMAGE_NAME"
