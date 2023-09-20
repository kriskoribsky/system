#!/usr/bin/env bash

# directory of this script
dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

# remove old bash config
rm -f "$HOME/.bash_profile"
rm -f "$HOME/.bashrc"
rm -f "$HOME/.bash_login"
rm -f "$HOME/.bash_logout"

# symlink new bash config
ln -s "$dir/config/rc.bash" "$HOME/.bashrc"
ln -s "$dir/config/login.bash" "$HOME/.bash_login"
ln -s "$dir/config/logout.bash" "$HOME/.bash_logout"
