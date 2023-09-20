#!/usr/bin/env bash

# directory of this script
dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

# symlink gdb config
ln -s "$dir/config/.gdbinit" "$HOME/.gdbinit"
