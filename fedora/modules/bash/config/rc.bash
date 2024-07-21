# If not running interactively, don't do anything
case $- in
*i*) ;;
*) return ;;
esac

# modules
source "$HOME/system/modules/bash/config/modules/aliases.bash"
source "$HOME/system/modules/bash/config/modules/binds.bash"
source "$HOME/system/modules/bash/config/modules/theme.bash"
source "$HOME/system/modules/bash/config/modules/less.bash"
source "$HOME/system/modules/bash/config/modules/git.bash"
source "$HOME/system/modules/bash/config/modules/history.bash"
source "$HOME/system/modules/bash/config/modules/prompt.bash"

# Set useful .bashrc error flags & debug info (enable only for debugging)
# set -ou nounset pipefail
# trap 's=$?; echo >&2 "$0: Error on line "$LINENO": $BASH_COMMAND"' ERR

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Set man pages to display using less and use progress in percentage
export MANPAGER='less -s -M +Gg'
export PAGER='less -s -M +Gg'

# Add GPG key on each shell start
export GPG_TTY=$(tty)
