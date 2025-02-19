# Use the official Arch Linux base image
FROM archlinux:latest

# Update the package database and install necessary packages
RUN pacman -Syu --noconfirm \
    && pacman -S --noconfirm \
    xorg-server \
    xorg-xinit \
    xorg-twm \
    xorg-xclock \
    torbrowser-launcher \
    firefox \
    && pacman -Scc --noconfirm

# Create a user to run the Tor Browser
RUN useradd -m toruser2

# Switch to the new user
USER toruser2

# Set the working directory
WORKDIR /home/toruser2

# Start the Tor Browser Launcher
#CMD ["torbrowser-launcher"]
CMD ["/home/toruser2/.local/share/torbrowser/tbb/x86_64/tor-browser/Browser/start-tor-browser"]
