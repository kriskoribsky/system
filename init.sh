#!/bin/bash

set -e  # exit on error (non-zero exit code)
set -u  # exit on undefined variable

cat << EOF
Welcome to the kk-system init script!
Script will now install all packages and setup the system.
EOF

read -p "Proceed with setup? [y/n] " -n 1 -r
echo
if [[ $REPLY =~ ^[^Yy]$ ]]
then
    exit 1
fi

exec 2> init-error.log  # redirect stderr to error.log



cat << EOF

KK-SYSTEM PACKAGES
================================================================================
EOF
source packages/setup.sh || true
echo 'Done.'



cat << EOF

KK-SYSTEM BASH
================================================================================

EOF
source bash/setup.sh || true
echo 'Done.'



cat << EOF

KK-SYSTEM HOME
================================================================================
EOF
source home/setup.sh || true
echo 'Done.'



cat << EOF

KK-SYSTEM GNOME
================================================================================
EOF
source gnome/setup.sh || true
echo 'Done.'
