#!/bin/bashsudo apt -y update

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

sudo snap install skype --classic
sudo snap install code --classic
sudo snap install gimp
sudo snap install inkscape
sudo snap install vlc
sudo snap install okular
# Multiple workspaces for ubuntu desktop
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ hsize 3
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ vsize 3

# Command to view items as list inside directories GUI
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'

#TODO: copy bash_aliases into the proper directory
#update bash_aliases
