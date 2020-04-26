#!/bin/bash

sudo apt -y update
sudo apt -y upgrade
sudo apt -y full-upgrade
sudo apt -y auto-remove

sudo add-apt-repository ppa:git-core/ppa -y
sudo apt -y update
sudo apt -y update && \
sudo apt -y install apt-transport-https \
                    curl \
                    git \
                    gnome-tweaks \
                    htop \ 
                    iftop \ 
                    kazam \
                    nmap \ 
                    ntp \ 
                    openssh-server\
                    openvpn \ 
                    python3 \
                    python3-venv \ 
                    tmux \ 
                    tree \
                    vim
# Discord, Slack, Zotero, Caffeine, Pomodoro, dropbox, ROSDiscourse
# Bashrc .bash_aliases, vimrc, tmux.conf

sudo snap install -y code --classic \
                     gimp \
                     inkscape \
                     vlc \
                     okular

# Command to view items as list inside directories GUI
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'

bash install-docker.bash

#TODO: copy bash_aliases into the proper directory
#update bash_aliases
echo Please provide your full name for the global configuration of git
read name
git config --global user.name $name
echo Please provide your mail for the global configuration of git
read mail
git config --global user.email $mail
