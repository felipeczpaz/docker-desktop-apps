# Use the official Arch Linux base image
FROM archlinux:latest

# Update the package database and install KeePassXC and font packages
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm keepassxc ttf-dejavu ttf-liberation noto-fonts && \
    pacman -Scc --noconfirm

# Create a non-root user for running KeePassXC
RUN useradd -m keepassxcuser

# Switch to the non-root user
USER keepassxcuser

# Set the working directory
WORKDIR /home/keepassxcuser

# Command to run KeePassXC
CMD ["keepassxc"]
