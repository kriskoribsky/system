#!/usr/bin/env bash

# directory of this script
dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

# load configured gnome settings
dconf load -f / <"$dir/config/dconf-full.ini"

# add system backgrounds to gnome settings
system_backgrounds_dir="$dir/img"
gnome_backgrounds_dir="$HOME/.local/share/backgrounds"

cp "$system_backgrounds_dir"/* "$gnome_backgrounds_dir"/

# set default system background
system_default_background="$gnome_backgrounds_dir/space-3.jpg"

gsettings set org.gnome.desktop.background picture-uri "$system_default_background"
gsettings set org.gnome.desktop.background picture-uri-dark "$system_default_background"
