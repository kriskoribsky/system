#!/usr/bin/env bash

# directory of this script
dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

# Create system home structure
# ================================================================================
while IFS= read -r directory; do
    if [ -n "$directory" ]; then
        mkdir "$SYSTEM_USER_HOME/$directory"
        touch "$SYSTEM_USER_HOME/$directory/.immutable"
        sudo chattr =i "$SYSTEM_USER_HOME/$directory/.immutable"
    fi
done <"$dir/config/structure.txt"

# Move default xdg user dirs
# ================================================================================
mv "$SYSTEM_USER_HOME/Desktop" "$SYSTEM_USER_HOME/personal"
mv "$SYSTEM_USER_HOME/Documents" "$SYSTEM_USER_HOME/personal"
mv "$SYSTEM_USER_HOME/Downloads" "$SYSTEM_USER_HOME/personal"
mv "$SYSTEM_USER_HOME/Music" "$SYSTEM_USER_HOME/personal"
mv "$SYSTEM_USER_HOME/Pictures" "$SYSTEM_USER_HOME/personal"
mv "$SYSTEM_USER_HOME/Public" "$SYSTEM_USER_HOME/personal"
mv "$SYSTEM_USER_HOME/Templates" "$SYSTEM_USER_HOME/personal"
mv "$SYSTEM_USER_HOME/Videos" "$SYSTEM_USER_HOME/personal"

# Update xdg user dirs
# ================================================================================
xdg-user-dirs-update --set DESKTOP "$SYSTEM_USER_HOME/personal/Desktop"
xdg-user-dirs-update --set DOWNLOAD "$SYSTEM_USER_HOME/personal/Downloads"
xdg-user-dirs-update --set TEMPLATES "$SYSTEM_USER_HOME/personal/Templates"
xdg-user-dirs-update --set PUBLICSHARE "$SYSTEM_USER_HOME/personal/Public"
xdg-user-dirs-update --set DOCUMENTS "$SYSTEM_USER_HOME/personal/Documents"
xdg-user-dirs-update --set MUSIC "$SYSTEM_USER_HOME/personal/Music"
xdg-user-dirs-update --set PICTURES "$SYSTEM_USER_HOME/personal/Pictures"
xdg-user-dirs-update --set VIDEOS "$SYSTEM_USER_HOME/personal/Videos"
