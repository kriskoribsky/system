alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias open='xdg-open'

alias text='gnome-text-editor'

alias term='function _f() { gnome-terminal --quiet --working-directory="$(realpath ${1:-$HOME})"; }; _f'

alias clip='xclip -selection clipboard'

alias tree='tree --dirsfirst'

alias mkdir='mkdir -pv'

alias update='sudo dnf update -y && flatpak update -y && reboot'

alias rm='rm -I'
