#!/usr/bin/env bash

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
"$(dirname "$0")/config/install-chrome.sh"
"$(dirname "$0")/config/install-vscode.sh"
"$(dirname "$0")/config/install-docker.sh"
