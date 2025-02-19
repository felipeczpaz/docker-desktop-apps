FROM archlinux:latest

# Install necessary packages
RUN pacman -Syu --noconfirm \
    firefox \
    xorg-server \
    xorg-xinit \
    && pacman -Scc --noconfirm

# Set the display environment variable
ENV DISPLAY=:0

# Start Firefox
CMD ["firefox"]
