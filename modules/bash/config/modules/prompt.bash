# static prompt style
PS="$SYSTEM_THEME_BOLD$SYSTEM_THEME_FG_HEADING\u@\h $SYSTEM_THEME_FG_LINK\w$SYSTEM_THEME_FG_HIGHLIGHT"

# executed on after shell command
PROMPT_COMMAND='if [ $? = 0 ]; then
                    PS1="${PS} $(__git_ps1 "(%s) ")$SYSTEM_THEME_RESET${SYSTEM_THEME_FG_SUCCESS}$ ${SYSTEM_THEME_RESET}";
                else
                    PS1="${PS} $(__git_ps1 "(%s) ")$SYSTEM_THEME_RESET${SYSTEM_THEME_FG_ERROR}$ ${SYSTEM_THEME_RESET}";
                fi'

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

# show only the last directory in path
export PROMPT_DIRTRIM=1

export GCC_COLORS='erro r=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
