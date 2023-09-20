#!/usr/bin/env bash

# directory of this script
dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

# symlink git config
ln -s "$dir/config/.gitconfig" "$SYSTEM_USER_HOME/.gitconfig"
