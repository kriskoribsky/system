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
sudo dnf install -y flatpak

# add Flathub remote
flatpak remote-add -y --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# remove official Fedora flatpak repo to prevent conflicts because everything is already in Flathub remote
flatpak remote-delete -y fedora
# reinstall all previous Fedora flatpaks with the ones from Flathub remote
flatpak install -y --reinstall flathub "$(flatpak list --app-runtime=org.fedoraproject.Platform --columns=application | tail -n +1)"

# install RPM fusion free & nonfree
sudo dnf install -y "https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm"
sudo dnf install -y "https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm"

# FEDORA SETUP
# ================================================================================
# fedora repos
sudo dnf install -y fedora-workstation-repositories

# also install appstream-data using DNF to enable installing packages using Gnome Software/KDE Discover
sudo dnf groupupdate core

# add media codes - video, audio, ... "https://rpmfusion.org/Howto/Multimedia
sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
sudo dnf groupupdate sound-and-video

# manual pages
sudo dnf reinstall -y man-pages man-db man
sudo mandb

# update firmware
sudo fwupdmgr get-devices
sudo fwupdmgr refresh --force
sudo fwupdmgr get-updates
sudo fwupdmgr update
