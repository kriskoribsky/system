#!/usr/bin/env bash

# Google Chrome
sudo dnf install fedora-workstation-repositories
sudo dnf config-manager --set-enabled google-chrome
sudo dnf install google-chrome-stable
sudo dnf install google-chrome-unstable
