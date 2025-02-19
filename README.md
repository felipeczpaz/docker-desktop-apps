# Docker Desktop Apps

This repository contains Docker configurations and scripts for running various desktop applications on Arch Linux. The applications included are:

- Tor Browser
- Firefox
- LibreWolf
- KeePassXC

## Overview

The goal of this project is to allow users to run popular desktop applications in isolated Docker containers while providing access to the host's X server and audio system. This setup is particularly useful for maintaining a clean environment and avoiding dependency issues.

## Prerequisites

Before you begin, ensure you have the following installed on your system:

- Docker
- X11 server
- PulseAudio (for audio support)

## Usage

### Allow Docker Containers to Access the X Server

Before running any containers, you need to allow Docker to access your X server. Run the following command:

```bash
xhost +local:docker
```

### Running Applications

Tor Browser

To run the Tor Browser, execute the following command:

```bash
./run-tor-browser.sh
```

Firefox

To run Firefox, execute the following command:

```bash
./run-firefox.sh
```

LibreWolf

To run LibreWolf, execute the following command:

```
./run-librewolf.sh
```

KeePassXC

To run KeePassXC, execute the following command:

```
./run-keepassxc.sh
```

### Dockerfiles

Each application has its own Dockerfile located in the respective directories. You can build the images manually if needed:

```bash
docker build -t <image-name> <path-to-dockerfile>
```

## Contributing

Contributions are welcome! If you have suggestions for improvements or additional applications to include, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License. See the LICENSE file for details.

## Acknowledgments

- Thanks to the Arch Linux community for providing a robust base for these applications.
- Special thanks to the maintainers of the applications included in this repository.
