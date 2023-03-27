#!/bin/bash

# Create kk-system work directories
# ================================================================================
# places
mkdir ~/places
touch ~/places/.immutable
sudo chattr =i ~/places/.immutable

# dev
mkdir ~/dev
touch ~/dev/.immutable
sudo chattr =i ~/dev/.immutable

mkdir ~/dev/projects
mkdir ~/dev/learn
mkdir ~/dev/work

# tmp
mkdir ~/tmp
touch ~/tmp/.immutable
sudo chattr =i ~/tmp/.immutable

# bin
mkdir ~/bin
touch ~/bin/.immutable
sudo chattr =i ~/bin/.immutable

# etc
mkdir ~/etc
touch ~/etc/.immutable
sudo chattr =i ~/etc/.immutable

# Move default xdg user dirs to places
# ================================================================================
mv ~/Desktop ~/places
mv ~/Documents ~/places
mv ~/Downloads ~/places
mv ~/Music ~/places
mv ~/Pictures ~/places
mv ~/Public ~/places
mv ~/Templates ~/places
mv ~/Videos ~/places

# Update xdg user dirs
# ================================================================================
xdg-user-dirs-update --set DESKTOP $HOME/places/Desktop
xdg-user-dirs-update --set DOWNLOAD $HOME/places/Downloads
xdg-user-dirs-update --set TEMPLATES $HOME/places/Templates
xdg-user-dirs-update --set PUBLICSHARE $HOME/places/Public
xdg-user-dirs-update --set DOCUMENTS $HOME/places/Documents
xdg-user-dirs-update --set MUSIC $HOME/places/Music
xdg-user-dirs-update --set PICTURES $HOME/places/Pictures
xdg-user-dirs-update --set VIDEOS $HOME/places/Videos