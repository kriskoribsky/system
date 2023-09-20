#!/usr/bin/env bash

# symlink gdb config
ln -s "$(dirname "$0")/config/.gdbinit" "$HOME/.gdbinit"
