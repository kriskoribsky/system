#!/usr/bin/env bash

# DNF SETUP
# ================================================================================
sudo dnf -y update --refresh

# dnf config for faster downloads
sudo sh -c 'echo "fastestmirror=True" >> /etc/dnf/dnf.conf'
sudo sh -c 'echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf'
sudo sh -c 'echo "keepcache=True" >> /etc/dnf/dnf.conf'
sudo sh -c 'echo "defaultyes=True" >> /etc/dnf/dnf.conf'

# FLATPAK SETUP
# ================================================================================
sudo dnf install flatpak

# add Flathub remote repository & remove official Fedora Flatpak repo to prevent conflicts because everything and more is already in flathub repo
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# remove official Fedora Flatpak repo to prevent conflicts because everything and more is already in flathub repo:
flatpak remote-delete fedora
# reinstall all previous fedora flatpaks with the ones from flathub repo instead of fedora:
flatpak install --reinstall flathub "$(flatpak list --app-runtime=org.fedoraproject.Platform --columns=application | tail -n +1)"

# FEDORA SETUP
# ================================================================================
# fedora repos
sudo dnf install fedora-workstation-repositories

# enable RPM fusion https://rpmfusion.org/Configuration
sudo dnf install "https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm"

# also install appstream-data using DNF to enable installing packages using Gnome Software/KDE Discover
sudo dnf groupupdate core

# add media codes - video, audio, ... "https://rpmfusion.org/Howto/Multimedia
sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
sudo dnf groupupdate sound-and-video

# manual pages
sudo dnf reinstall man-pages man-db man
sudo mandb

# update firmware
sudo fwupdmgr get-devices
sudo fwupdmgr refresh --force
sudo fwupdmgr get-updates
sudo fwupdmgr update
