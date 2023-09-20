#!/usr/bin/env bash

# symlink git config
ln -s "$(dirname "$0")/config/.gitconfig" "$HOME/.gitconfig"
