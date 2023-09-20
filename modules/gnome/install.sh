#!/usr/bin/env bash

# directory of this script
dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

# load configured gnome settings
dconf load -f / <"$dir/config/dconf-full.cfg"
