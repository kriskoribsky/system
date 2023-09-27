# Add an "alert" alias for long running commands.  Use like so: 'sleep 10; alert'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias ls='ls --color=auto --group-directories-first --human-readable'
alias ll='ls -l --almost-all --size'

alias tree='tree --dirsfirst'

alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias open='xdg-open'

alias text='gnome-text-editor'

alias term='function _f() { gnome-terminal --quiet --working-directory="$(realpath ${1:-$HOME})"; }; _f'

alias clip='xclip -selection clipboard'

alias mkdir='mkdir -pv'

alias update='sudo dnf update -y && flatpak update -y && reboot'

alias rm='rm -I'
