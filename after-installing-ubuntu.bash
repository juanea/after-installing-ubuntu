#!/bin/bash

sudo apt -y update
sudo apt -y upgrade
sudo apt -y full-upgrade
sudo apt -y auto-remove

sudo add-apt-repository ppa:git-core/ppa
sudo apt -y update
sudo apt install -y git
sudo apt install -y vim
sudo apt install -y texlive-full
sudo apt install -y kazam
sudo apt install -y tmux
sudo apt install -y gnome-tweaks

sudo snap install skype --classic
sudo snap install code --classic
sudo snap install gimp
sudo snap install inkscape
sudo snap install vlc
sudo snap install okular
# Multiple workspaces for ubuntu desktop
#gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ hsize 3
#gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ vsize 3

# Command to view items as list inside directories GUI
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'

#TODO: copy bash_aliases into the proper directory
#update bash_aliases

sudo apt-get -y remove docker docker-engine docker.io containerd runc
sudo apt-get update

sudo apt-get install apt-transport-https
sudo apt-get install ca-certificates
sudo apt-get install curl
sudo apt-get install gnupg-agent
sudo apt-get install software-properties-common

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
sudo usermod -aG docker $USER

sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

git config --global user.email "j.echvarria@ai-systems.ca"
git config --global user.name "Juan Echavarria"
