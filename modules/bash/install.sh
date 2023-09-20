#!/usr/bin/env bash

# directory of this script
dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

# remove old bash config
rm -f "$SYSTEM_USER_HOME/.bash_profile"
rm -f "$SYSTEM_USER_HOME/.bashrc"
rm -f "$SYSTEM_USER_HOME/.bash_login"
rm -f "$SYSTEM_USER_HOME/.bash_logout"

# symlink new bash config
ln -s "$dir/config/rc.bash" "$SYSTEM_USER_HOME/.bashrc"
ln -s "$dir/config/login.bash" "$SYSTEM_USER_HOME/.bash_login"
ln -s "$dir/config/logout.bash" "$SYSTEM_USER_HOME/.bash_logout"
