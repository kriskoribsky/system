# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
xterm-color | *-256color) color_prompt=yes ;;
esac

force_color_prompt=yes

# show only the last directory in path
export PROMPT_DIRTRIM=1

if [ "$color_prompt" = yes ]; then
    # static prompt style
    PS="$SYSTEM_THEME_BOLD$SYSTEM_THEME_GITHUB_MAGENTA\u@\h $SYSTEM_THEME_GITHUB_DARKBLUE\w$SYSTEM_THEME_GITHUB_LIGHTBLUE"

    # executed on after shell command
    PROMPT_COMMAND='if [ $? = 0 ]; then
                        PS1="${PS} $(__git_ps1 "(%s) ")$SYSTEM_THEME_RESET${SYSTEM_THEME_GITHUB_GREEN}$ ${SYSTEM_THEME_RESET}";
                    else
                        PS1="${PS} $(__git_ps1 "(%s) ")$SYSTEM_THEME_RESET${SYSTEM_THEME_GITHUB_RED}$ ${SYSTEM_THEME_RESET}";
                    fi'
else
    PS1="\u@\h \w $(__git_ps1 " (%s) ")$ "
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm* | rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*) ;;
esac

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        color_prompt=yes
    else
        color_prompt=
    fi
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
