#!/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y

# Docker
sudo apt-get install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker

# Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# User
sudo usermod -aG docker ubuntugit 

# Checagem
sudo systemctl status docker