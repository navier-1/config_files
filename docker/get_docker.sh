#!/bin/bash

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

DEFAULT_DISTRO="debian"
DEFAULT_CODENAME="bookworm"

echo "Please enter your distro (e.g. Ubuntu, Debian) *in lowercase*"
read -rp "Distro [${DEFAULT_DISTRO}]: " DISTRO_NAME

echo "Please enter your distro's codename (e.g., bookworm, bullseye, jammy)."
echo "If you're unsure, run: lsb_release -c"
read -rp "Codename [${DEFAULT_CODENAME}]: " DISTRO_CODENAME

# Use defaults if input is empty
DISTRO_NAME=${DISTRO_NAME:-$DEFAULT_DISTRO}
DISTRO_CODENAME=${DISTRO_CODENAME:-$DEFAULT_CODENAME}

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/$DISTRO_NAME \
  $(. /etc/os-release && echo $DISTRO_CODENAME) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin




