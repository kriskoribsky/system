#!/bin/bash

source "../utils/strict.sh"
source "./system.sh"

cat <<EOF
Welcome to the system installation script!
Script will now install all packages and setup your system's config.
EOF

read -p "Proceed with setup? [y/n] " -n 1 -r
echo
if [[ $REPLY =~ ^[^Yy]$ ]]; then
    exit 1
fi


