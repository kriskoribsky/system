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

export GCC_COLORS="error=01;38;5;$SYSTEM_THEME_ERROR:warning=01;38;5;$SYSTEM_THEME_HEADING:note=01;38;5;$SYSTEM_THEME_SELECTION:caret=01;38;5;$SYSTEM_THEME_SUCCESS:locus=01:quote=01"

export LS_COLORS="no=38;5;$SYSTEM_THEME_PRIMARY:fi=38;5;$SYSTEM_THEME_PRIMARY:di=01;38;5;$SYSTEM_THEME_LINK:ln=38;5;$SYSTEM_THEME_SELECTION:do=38;5;$SYSTEM_THEME_HEADING:so=38;5;$SYSTEM_THEME_HEADING:ex=38;5;$SYSTEM_THEME_SUCCESS"

export GREP_COLORS="ms=01;38;5;$SYSTEM_THEME_SELECTION:mc=01;31:sl=:cx=:fn=1;96:ln=1;96:bn=1;96:se=1;97"
