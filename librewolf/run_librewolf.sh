#!/bin/bash

# Check if DISPLAY environment variable is set
if [ -z "$DISPLAY" ]; then
    echo "Error: DISPLAY environment variable is not set."
    exit 1
fi

# Allow Docker containers to access the X server
xhost +local:docker

# Run the Docker container with audio and X11 support
docker run -it --rm \
  --env PULSE_SERVER=unix:/tmp/pulse/native \
  --volume /tmp/pulse/native:/tmp/pulse/native \
  --volume /etc/machine-id:/etc/machine-id \
  --device /dev/snd \
  --env DISPLAY=$DISPLAY \
  --volume /tmp/.X11-unix:/tmp/.X11-unix \
  --volume /mnt:/mnt \
  librewolf-bin
