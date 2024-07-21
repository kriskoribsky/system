#!/usr/bin/env bash

# Google Chrome
sudo dnf install -y fedora-workstation-repositories
sudo dnf config-manager --set-enabled google-chrome
sudo dnf install -y google-chrome-stable
sudo dnf install -y google-chrome-unstable
