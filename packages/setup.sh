#!/bin/bash

# COMMANDS
dnfi='sudo dnf install'
dnfr='sud dnf remove'
dnfre='sudo dnf reinstall'
flati='flatpak install'
flatr='flatpak remove'






# DNF SETUP
# ================================================================================
sudo dnf -y upgrade --refresh

# dnf config for faster downloads
sudo sh -c 'echo "fastestmirror=True" >> /etc/dnf/dnf.conf'
sudo sh -c 'echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf'
sudo sh -c 'echo "keepcache=True" >> /etc/dnf/dnf.conf'
sudo sh -c 'echo "defaultyes=True" >> /etc/dnf/dnf.conf'

# fedora repos
sudo dnf install fedora-workstation-repositories

# enable RPM fusion https://rpmfusion.org/Configuration
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# also install appstream-data using DNF to enable installing packages using Gnome Software/KDE Discover
sudo dnf groupupdate core



# FLATPAK SETUP
# ================================================================================
sudo dnf install flatpak

# add Flathub remote repository & remove official Fedora Flatpak repo to prevent conflicts because everything and more is already in flathub repo
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# remove official Fedora Flatpak repo to prevent conflicts because everything and more is already in flathub repo:
flatpak remote-delete fedora
# reinstall all previous fedora flatpaks with the ones from flathub repo instead of fedora:
flatpak install --reinstall flathub $(flatpak list --app-runtime=org.fedoraproject.Platform --columns=application | tail -n +1 )



# ADDITIONAL SETUP
# ================================================================================
# add MEDIA CODECS - video, audio, ... "https://rpmfusion.org/Howto/Multimedia
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



# REMOVE DNF PACKAGES
# ================================================================================
sudo dnf remove $(cat ~/.kk-system/packages/remove-pkg.txt)



# INSTALL DNF PACKAGES
# ================================================================================
sudo dnf install $(cat ~/.kk-system/packages/install-pkg.txt)



# INSTALL FLATPAK PACKAGES
# ================================================================================
flatpak install $(cat ~/.kk-system/packages/install-flatpak.txt)



# INSTALL STANDALONE PACKAGES
# ================================================================================

# Google Chrome
sudo dnf install fedora-workstation-repositories
sudo dnf config-manager --set-enabled google-chrome
sudo dnf install google-chrome-stable
sudo dnf install google-chrome-unstable

# Visual Studio Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

dnf check-update
sudo dnf install code

# Docker

# remove old versions
sudo dnf remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine

# set up repo
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo

# install docker
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# add user to docker group
sudo groupadd docker
sudo usermod -aG docker $USER

# enable docker service on boot
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
