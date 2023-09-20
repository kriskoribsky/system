#!/usr/bin/env bash

# load configured gnome settings
dconf load -f / <"$(dirname "$0")/config/dconf-full.cfg"
