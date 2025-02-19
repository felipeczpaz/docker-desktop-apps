#!/bin/bash

# Allow Docker containers to access the X server
xhost +local:docker

docker run -it --rm --name tor-browser-container2 \
    --device /dev/dri:/dev/dri \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v ~/tor-browser-docker-data:/home/toruser2/.local/share/torbrowser \
    tor-browser
