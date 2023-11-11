#!/usr/bin/env bash

# install font improvement kit (Fedora)
# https://www.reddit.com/r/Fedora/comments/5nfenw/better_looking_fonts_for_fedora
sudo dnf copr enable dawid/better_fonts --assumeyes
sudo dnf install fontconfig-enhanced-defaults fontconfig-font-replacements --assumeyes --skip-broken

# enhance font quality by enabling lcd-filter option
# https://www.reddit.com/r/Fedora/comments/offmnq/how_to_get_good_looking_fonts_and_rendering
sudo ln -sf /usr/share/fontconfig/conf.avail/11-lcdfilter-default.conf /etc/fonts/conf.d/

# (restart required for changes to take place)
