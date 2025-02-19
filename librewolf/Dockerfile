# Use an official Arch Linux base image
FROM archlinux:latest

# Install necessary packages for building yay and other dependencies
RUN pacman -Syu --noconfirm \
    base-devel \
    git \
    wget \
    sudo \
    pulseaudio-bluetooth \
    && pacman -Scc --noconfirm

# Create a non-root user and add to sudoers
RUN useradd -m -G wheel librewolfuser \
    && echo "librewolfuser ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# Switch to the new user
USER librewolfuser
WORKDIR /home/librewolfuser

# Install yay
RUN git clone https://aur.archlinux.org/yay.git /tmp/yay \
    && cd /tmp/yay \
    && makepkg -si --noconfirm \
    && rm -rf /tmp/yay

# Install librewolf-bin using yay
RUN yay -S --noconfirm librewolf-bin

# Set the working directory for the application
WORKDIR /app

# Set environment variables for PulseAudio
ENV PULSE_SERVER=unix:/tmp/pulse/native
ENV DISPLAY=:0

# Command to run LibreWolf
CMD ["librewolf"]
