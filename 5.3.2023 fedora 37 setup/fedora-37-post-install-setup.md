# post installation setup steps:

## System configuration

### DNF configuration (improve performance)

perform system update and reboot
`sudo dnf update && sudo reboot`

### enable Fedora workstation repos

`sudo dnf install fedora-workstation-repositories`

### enable RPM fusion instructions at: "https://rpmfusion.org/Configuration" :

`sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm`

also install appstream-data using DNF to enable installing packages using Gnome Software/KDE Discover:
`sudo dnf groupupdate core`

### enable FULL flathub repository:

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
remove official Fedora Flatpak repo to prevent conflicts because everything and more is already in flathub repo:
`flatpak remote-delete fedora`
reinstall all previous fedora flatpaks with the ones from flathub repo instead of fedora:
`flatpak install --reinstall flathub $(flatpak list --app-runtime=org.fedoraproject.Platform --columns=application | tail -n +1 )`

**HOWEVER, I DO PLAN ON NOT USING GNOME SOFTWARE CENTER AND ISTEAD TO JUST INSTALL PACKAGES WITH CLIs Flatpak (Flathub) & dnf!!!!!**

### change hostname (if not done in installer)

hostname name convetions:
`kk<pc id starting with 01 for main machine>-<os abbreviation>`  
e.g.: kk01-pop (my first linux, pop-os main desktop machine), kk02-pop for notebook, kk01-fed (fedora)
sudo hostnamectl set-hostname --pretty kk01-fed
sudo hostnamectl set-hostname --static kk01-fed

### add MEDIA CODECS - video, audio, ... "https://rpmfusion.org/Howto/Multimedia" :

```
sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
sudo dnf groupupdate sound-and-video
```

### install NVIDIA proprietary drivers (if applicable) "https://phoenixnap.com/kb/fedora-nvidia-drivers" :

`sudo dnf update`
detect nvidia card:
`lspci | grep VGA`
for current GeForce / Qadro / Tesla models:

```
sudo dnf install akmod-nvidia
reboot
```

verify that the new drivers are used gnome settings -> about -> graphics label should be: "NVIDIA GeForce GTX 1070" instead of something like "NV134"
if verification was not successfull, then secure boot is probably enabled, follow these steps on how to add key for nvidia drivers: "https://rpmfusion.org/Howto/Secure%20Boot" or read "/usr/share/doc/akmods/README.secureboot"
if that doesn't work, try to unnistall nvidia drivers & reboot
if that still doesn't work, unninstall nvidia drivers & follow this guide: https://blog.monosoul.dev/2022/05/17/automatically-sign-nvidia-kernel-module-in-fedora-36/
verify that the drivers are used from previous step

for additional machine setup steps create ssh keys for github & clone repo kk-system for downloading addional system configuration steps - keybindings, DE customizaiton, grub & terminal customization, ...

### if the new Fedora install also installed/reinstalled bootloader, customize the new GRUB menu with recommended grubby customizer

**WARNING! grup customizer doesn't work on fedora!!!**
https://forums.fedoraforum.org/showthread.php?327201-Impossible-to-edit-grub-menu&p=1853271
https://docs.fedoraproject.org/en-US/fedora/latest/system-administrators-guide/kernel-module-driver-configuration/Working_with_the_GRUB_2_Boot_Loader/
configure /etc/default/grub file with config saved in kk-system repo
for applying changes in local config & generating new bootloader configuration file run:
sudo grub2-mkconfig -o /boot/grub2/grub.cfg

## Keyboard shortcuts

### **kk-system** shortcut system:<br>

shortcuts should be minimal, sensible & not go against other apps shortcut system as to not cause confusion<br>
super + modifier - desktop environment specific actions (workspaces, launching apps, windows)<br>
alt + modifier - widnow manipulation (zzom, alt+tab -> switch apps, alt+` -> switch windows)<br>
ctrl + modifier - CLI + OS sensibles (ctrl+C, ctrl+V, ...)<br>
**disable any unused shortcuts!**

### gnome keyboard shortcuts list

- `Alt+=` Zoom in
- `Alt+-` Zoom out
- `Super+`\` Launch terminal
- `Super+1` Launch home folder
- `Super+Left` Move to workspace on the left
- `Super+Right` Move to workspace on the right
- `Alt+Tab` Switch applications
- `Alt+`\` Switch windows of an application
- `Print` Take a screenshot (window)
- `Super+Print` Take a screenshot interactively
- `Alt+Print` Take a screenshot (all screens)
- `Super+Down` Volume down
- `Super+Up` Volume up
- `Super+L` Lock screen
- `Super+F1` Show the run command promt
- `Super+Space` Switch to next input source
- `Shift+Super+Space` Switch to previous input source
- `Alt+W` Close window
- `Mouse Secondary Key 1` Mute microphone (teamspeak3, ...)
- `Mouse Secondary Key 2` Mute speakers (teamspeak3m ...)
- `Super+F11` Clipboard previous entry
- `Super+F12` Clipboard next entry
- `F11` Toggle Fullscreen

### terminal shortcuts list

- `Ctrl+T` New tab
- `Ctrl+W` Close tab
- `Ctrl+N` New window
- `Ctrl+=` Zoom in
- `Ctrl+-` Zoom out
- **`Ctrl+C` Copy** - <ins>gnome shell will remap '_interrupt_' to `Ctrl+Shift+C`</ins>
- **`Ctrl+V` Paste** - <ins>gnome shell will remap '_verbatim insert_' to `Ctrl+Shift+V`</ins>

you can optionally remap shell _interrupt_ to `Ctrl+K`:

```
stty intr ^K
stty -g
stty -g > ~/.bashrc-stty
```

and add the following to .bashrc (already included in **kk-system** .bashrc):

```
case $- in
 *i*)
   stty `cat ~/.bashrc-stty`    #  reload the stored stty settings
   bind -u quoted-insert      #  unbind the quoted-insert function of bash - free Ctrl+V for paste
esac
```

export terminal settings with:
`dconf dump /org/gnome/terminal/ > gnome-terminal-settings.cfg`

import terminal settings with command:
`dconf load /org/gnome/terminal/ < gnome-terminal-settings.cfg`

### keyboard layouts:<br>

use **strictly QWERTY** with every language
2 base languages:

1. US qwerty
2. SK qwerty

layout switch shortcut: super+space

## CLI configuration

### remove some default CLI tools not used in kk-system workflow:

```
sudo dnf remove nano
sudo dnf remove vim
sudo dnf remove gedit
sudo dnf remove firefox
sudo dnf remove epiphany
```

### download _kk-system_ workflow specific CLI tools:

```
sudo dnf install neovim python3-neovim
sudo dnf reinstall man-pages man-db man
sudo mandb
sudo dnf install manpages-posix-dev
sudo dnf install exa
sudo dnf install bat
sudo dnf install tree
sudo dnf install neofetch
sudo dnf install tldr
sudo dnf install colordiff
sudo dnf install bitwise
sudo dnf install flatseal
```

```
sudo dnf install cppcheck
sudo dnf install gcc
sudo dnf install valgrind
sudo dnf install gdb
```

### download vscode:

```
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

dnf check-update
sudo dnf install code
```

### google chrome

```
sudo dnf install fedora-workstation-repositories
sudo dnf config-manager --set-enabled google-chrome
sudo dnf install google-chrome-stable
sudo dnf install google-chrome-unstable
```

## Apps

TODO: add dnf & flatpak apps
flatpak install org.mozilla.firefox

## Directories

### Default XDG user directories structure

run commands:
`mkdir ~/places`
prevent places from being deleted:

```
touch ~/places/.immutable
sudo chattr =i ~/places/.immutable
```

move default xdg-user-dirs into new places folder
`cd ~; mv Desktop Documents Downloads Music Pictures Public Templates Videos ~/places`

replace ~/.config/user-dirs.dirs file with downloaded user-dirs.dirs file from kk-system repo and run:
`xdg-user-dirs-update`
after that you should reboot your system for home directory changes to apply
you may also need to remove the old paths from your file manager bookmars
`reboot`

### Development

```
mkdir ~/dev
touch ~/dev/.immutable
sudo chattr =i ~/dev/.immutable

mkdir ~/dev/projects
mkdir ~/dev/learn
mkdir ~/dev/work
```

### Utility

```
mkdir ~/tmp
touch ~/tmp/.immutable
sudo chattr =i ~/tmp/.immutable

mkdir ~/bin
touch ~/bin/.immutable
sudo chattr =i ~/bin/.immutable

mkdir ~/etc
touch ~/etc/.immutable
sudo chattr =i ~/etc/.immutable
```

## Gnome

### Gnome bloatware

remove gnome bloatware (for example: cheese, contacts, tour, gnome text editor, weather)
optionally you can also remove the whole gnome software center if you want to just use dnf & flatpak trough CLI
sudo dnf remove gnome-software

### Gnome Settings

- adjust corrent monitor refresh rate
- disable hot corners
- workspaces on all displays
- include applications from the current workspace only
- automatically delete file history, trash & temporary files after 30 days
- turn off camera, location services
- remove apps from search - characters, firefox, calculator, calendar, boxes, photos, software, clocks
- add printers, connect peripherals & install drivers
- personal preferences...

also install useful tool called dconf editor for more settings:

`sudo dnf install dconf-editor`

### Gnome tweaks

- tweaks are useful for further gnome configuration:
  sudo dnf install gnome-tweaks
- center new windows
- **focus windows on hover**
- **window minimize on middle click**
- window maximize on double click
- **show extended input sources**
- enable dark theme for legacy application

### Gnome extensions

best extension manager & installer for gnome:
`flatpak install com.mattjakeman.ExtensionManager`
turn on:

- applications menu
- background logo
- places status indicator

**unopionated but imporant workflow gnome extensions:**

1. just perfection
   - hide top panel, activities menu & dash applications button (for minimalism)
   - remove switcher popup delay
   - set startup status to desktop instead of applications overlay
2. **current screen only window switcher**
   - most important ext., reason why I changed from popOs to Fedora linux (din't work on Pop)
   - so this best works with _Vanilla Gnome_
3. cliboard indicator - enable <ins>cache only</ins> favorites to not save passwords ...
4. vitals (set less frequest update to save resources) - Temp, CPU %, RAM GB, Used Storage GB

minimalistic UI gnome extensions:

1. blur my shell (just activities background blur enabled)

## Gnome backup

To save all system-wide gnome configuration (key-bindings, windows, extensions, saved preferences, ...):
`dconf dump / > dconf-full.cfg`
To load all the gnome configuration use:
`dconf load / < dconf-full.cfg`
