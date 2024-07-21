#!/usr/bin/env bash

# directory of this script
dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

# REMOVE DNF PACKAGES
# ================================================================================
sudo dnf remove -y "$(cat ~/.kk-system/packages/remove-pkg.txt)"

# INSTALL DNF PACKAGES
# ================================================================================
sudo dnf install -y "$(cat ~/.kk-system/packages/install-pkg.txt)"

# INSTALL FLATPAK PACKAGES
# ================================================================================
flatpak install -y "$(cat ~/.kk-system/packages/install-flatpak.txt)"

# INSTALL STANDALONE PACKAGES
# ================================================================================
"$dir/config/install-chrome.sh"
"$dir/config/install-vscode.sh"
"$dir/config/install-docker.sh"
