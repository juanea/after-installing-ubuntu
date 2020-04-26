#!/bin/bash


sudo apt-get -y remove docker docker-engine docker.io containerd runc
sudo apt-get update

sudo apt-get install -y apt-transport-https \
                        ca-certificates \
                        curl \
                        gnupg-agent \
                        software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key -y fingerprint 0EBFCD88

sudo add-apt-repository -y \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update -y

sudo apt-get install -y docker-ce docker-ce-cli containerd.io
sudo docker run hello-world

sudo groupadd docker
sudo usermod -aG docker ugv

# Install docker-compose 
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo -i -u ugv gnome-session-quit --no-prompt
