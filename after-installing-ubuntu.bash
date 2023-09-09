#!/usr/bin/env bash

sudo apt -y update
sudo apt -y upgrade
sudo apt -y full-upgrade
sudo apt -y auto-remove

sudo apt -y install software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo add-apt-repository -y ppa:git-core/ppa

sudo apt -y update
sudo apt install -y ansible \
                    git \
                    neovim \
		    openssh-client

ansible-galaxy install viasite-ansible.zsh

sudo systemctl enable ssh
sudo ufw allow ssh

# Command to view items as list inside directories GUI
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'

git config --global user.email "juanea@gmail.com"
git config --global user.name "Juan Echavarria"
