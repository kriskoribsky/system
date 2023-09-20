#!/usr/bin/env bash

# Create system home structure
# ================================================================================
while IFS= read -r directory; do
    if [ -n "$directory" ]; then
        mkdir "$HOME/$directory"
        touch "$HOME/$directory/.immutable"
        sudo chattr =i "$HOME/$directory/.immutable"
    fi
done <"$(dirname "$0")/config/structure.txt"

# Move default xdg user dirs
# ================================================================================
mv "$HOME/Desktop" "$HOME/personal"
mv "$HOME/Documents" "$HOME/personal"
mv "$HOME/Downloads" "$HOME/personal"
mv "$HOME/Music" "$HOME/personal"
mv "$HOME/Pictures" "$HOME/personal"
mv "$HOME/Public" "$HOME/personal"
mv "$HOME/Templates" "$HOME/personal"
mv "$HOME/Videos" "$HOME/personal"

# Update xdg user dirs
# ================================================================================
xdg-user-dirs-update --set DESKTOP "$HOME/personal/Desktop"
xdg-user-dirs-update --set DOWNLOAD "$HOME/personal/Downloads"
xdg-user-dirs-update --set TEMPLATES "$HOME/personal/Templates"
xdg-user-dirs-update --set PUBLICSHARE "$HOME/personal/Public"
xdg-user-dirs-update --set DOCUMENTS "$HOME/personal/Documents"
xdg-user-dirs-update --set MUSIC "$HOME/personal/Music"
xdg-user-dirs-update --set PICTURES "$HOME/personal/Pictures"
xdg-user-dirs-update --set VIDEOS "$HOME/personal/Videos"
