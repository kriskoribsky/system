# shellcheck disable=SC2155
# shellcheck disable=SC2034

# General
# ================================================================================

# font styles
export SYSTEM_THEME_BOLD=$(tput bold)
export SYSTEM_THEME_DIM=$(tput dim)
export SYSTEM_THEME_UNDERLINE=$(tput smul)
export SYSTEM_THEME_REVERSE=$(tput rev)
export SYSTEM_THEME_ITALIC=$(tput sitm)
export SYSTEM_THEME_STRIKETHROUGH=$(tput smxx)

export SYSTEM_THEME_RESET=$(tput sgr0)

# foreground colors
export SYSTEM_THEME_FG_BLACK=$(tput setaf 0)
export SYSTEM_THEME_FG_RED=$(tput setaf 1)
export SYSTEM_THEME_FG_GREEN=$(tput setaf 2)
export SYSTEM_THEME_FG_YELLOW=$(tput setaf 3)
export SYSTEM_THEME_FG_BLUE=$(tput setaf 4)
export SYSTEM_THEME_FG_MAGENTA=$(tput setaf 5)
export SYSTEM_THEME_FG_CYAN=$(tput setaf 6)
export SYSTEM_THEME_FG_WHITE=$(tput setaf 7)

# background colors
export SYSTEM_THEME_BG_BLACK=$(tput setab 0)
export SYSTEM_THEME_BG_RED=$(tput setab 1)
export SYSTEM_THEME_BG_GREEN=$(tput setab 2)
export SYSTEM_THEME_BG_YELLOW=$(tput setab 3)
export SYSTEM_THEME_BG_BLUE=$(tput setab 4)
export SYSTEM_THEME_BG_MAGENTA=$(tput setab 5)
export SYSTEM_THEME_BG_CYAN=$(tput setab 6)
export SYSTEM_THEME_BG_WHITE=$(tput setab 7)

# Themes
# ================================================================================

# Github Dark
SYSTEM_THEME_GITHUB_FG_WHITE=$SYSTEM_THEME_FG_WHITE
SYSTEM_THEME_GITHUB_BG_WHITE=$SYSTEM_THEME_BG_WHITE

SYSTEM_THEME_GITHUB_FG_MAGENTA=$(tput setaf 55)
SYSTEM_THEME_GITHUB_BG_MAGENTA=$(tput setab 55)

SYSTEM_THEME_GITHUB_FG_DARKBLUE=$(tput setaf 26)
SYSTEM_THEME_GITHUB_BG_DARKBLUE=$(tput setab 26)

SYSTEM_THEME_GITHUB_FG_LIGHTBLUE=$(tput setaf 111)
SYSTEM_THEME_GITHUB_BG_LIGHTBLUE=$(tput setab 111)

SYSTEM_THEME_GITHUB_FG_ORANGE=$(tput setaf 172)
SYSTEM_THEME_GITHUB_BG_ORANGE=$(tput setab 172)

SYSTEM_THEME_GITHUB_FG_RED=$(tput setaf 160)
SYSTEM_THEME_GITHUB_BG_RED=$(tput setab 160)

SYSTEM_THEME_GITHUB_FG_GREEN=$(tput setaf 84)
SYSTEM_THEME_GITHUB_BG_GREEN=$(tput setab 84)

# Current theme
export SYSTEM_THEME_FG_PRIMARY=$SYSTEM_THEME_GITHUB_FG_WHITE
export SYSTEM_THEME_BG_PRIMARY=$SYSTEM_THEME_GITHUB_BG_WHITE

export SYSTEM_THEME_FG_HEADING=$SYSTEM_THEME_GITHUB_FG_MAGENTA
export SYSTEM_THEME_BG_HEADING=$SYSTEM_THEME_GITHUB_BG_MAGENTA

export SYSTEM_THEME_FG_LINK=$SYSTEM_THEME_GITHUB_FG_DARKBLUE
export SYSTEM_THEME_BG_LINK=$SYSTEM_THEME_GITHUB_BG_DARKBLUE

export SYSTEM_THEME_FG_HIGHLIGHT=$SYSTEM_THEME_GITHUB_FG_LIGHTBLUE
export SYSTEM_THEME_BG_HIGHLIGHT=$SYSTEM_THEME_GITHUB_BG_LIGHTBLUE

export SYSTEM_THEME_FG_SELECTION=$SYSTEM_THEME_GITHUB_FG_ORANGE
export SYSTEM_THEME_BG_SELECTION=$SYSTEM_THEME_GITHUB_BG_ORANGE

export SYSTEM_THEME_FG_ERROR=$SYSTEM_THEME_GITHUB_FG_RED
export SYSTEM_THEME_BG_ERROR=$SYSTEM_THEME_GITHUB_BG_RED

export SYSTEM_THEME_FG_SUCCESS=$SYSTEM_THEME_GITHUB_FG_GREEN
export SYSTEM_THEME_BG_SUCCESS=$SYSTEM_THEME_GITHUB_BG_GREEN

# Helpful commands
# ================================================================================

# get number of colors available in tput
# tput colors

# list 256 color palette with corresponding codes
# for c in {0..255}; do tput setaf $c; tput setaf $c | cat -v; echo =$c; done
