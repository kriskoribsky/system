#!/usr/bin/env bash

# remove old bash config
rm -f "$HOME/.bash_profile"
rm -f "$HOME/.bashrc"
rm -f "$HOME/.bash_login"
rm -f "$HOME/.bash_logout"

# symlink new bash config
ln -s "$(dirname "$0")/config/rc.bash" "$HOME/.bashrc"
ln -s "$(dirname "$0")/config/login.bash" "$HOME/.bash_login"
ln -s "$(dirname "$0")/config/logout.bash" "$HOME/.bash_logout"
