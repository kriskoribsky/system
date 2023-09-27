# shellcheck disable=SC2155
# shellcheck disable=SC2034

# color values using 256 color palette (8 bit)

# Default
# ================================================================================

export SYSTEM_THEME_BLACK=0
export SYSTEM_THEME_RED=1
export SYSTEM_THEME_GREEN=2
export SYSTEM_THEME_YELLOW=3
export SYSTEM_THEME_BLUE=4
export SYSTEM_THEME_MAGENTA=5
export SYSTEM_THEME_CYAN=6
export SYSTEM_THEME_WHITE=7

# Themes
# ================================================================================

# Github Dark
export SYSTEM_THEME_GITHUB_WHITE=7
export SYSTEM_THEME_GITHUB_MAGENTA=55
export SYSTEM_THEME_GITHUB_DARKBLUE=26
export SYSTEM_THEME_GITHUB_LIGHTBLUE=111
export SYSTEM_THEME_GITHUB_ORANGE=172
export SYSTEM_THEME_GITHUB_RED=160
export SYSTEM_THEME_GITHUB_GREEN=84

# Active
export SYSTEM_THEME_PRIMARY=$SYSTEM_THEME_GITHUB_WHITE
export SYSTEM_THEME_HEADING=$SYSTEM_THEME_GITHUB_MAGENTA
export SYSTEM_THEME_LINK=$SYSTEM_THEME_GITHUB_DARKBLUE
export SYSTEM_THEME_HIGHLIGHT=$SYSTEM_THEME_GITHUB_LIGHTBLUE
export SYSTEM_THEME_SELECTION=$SYSTEM_THEME_GITHUB_ORANGE
export SYSTEM_THEME_ERROR=$SYSTEM_THEME_GITHUB_RED
export SYSTEM_THEME_SUCCESS=$SYSTEM_THEME_GITHUB_GREEN

# Color codes
# ================================================================================

# Default
export SYSTEM_THEME_BOLD=$(tput bold)
export SYSTEM_THEME_DIM=$(tput dim)
export SYSTEM_THEME_UNDERLINE=$(tput smul)
export SYSTEM_THEME_REVERSE=$(tput rev)
export SYSTEM_THEME_ITALIC=$(tput sitm)
export SYSTEM_THEME_STRIKETHROUGH=$(tput smxx)

export SYSTEM_THEME_RESET=$(tput sgr0)

export SYSTEM_THEME_FG_BLACK=$(tput setaf $SYSTEM_THEME_BLACK)
export SYSTEM_THEME_BG_BLACK=$(tput setab $SYSTEM_THEME_BLACK)

export SYSTEM_THEME_FG_RED=$(tput setaf $SYSTEM_THEME_RED)
export SYSTEM_THEME_BG_RED=$(tput setab $SYSTEM_THEME_RED)

export SYSTEM_THEME_FG_GREEN=$(tput setaf $SYSTEM_THEME_GREEN)
export SYSTEM_THEME_BG_GREEN=$(tput setab $SYSTEM_THEME_GREEN)

export SYSTEM_THEME_FG_YELLOW=$(tput setaf $SYSTEM_THEME_YELLOW)
export SYSTEM_THEME_BG_YELLOW=$(tput setab $SYSTEM_THEME_YELLOW)

export SYSTEM_THEME_FG_BLUE=$(tput setaf $SYSTEM_THEME_BLUE)
export SYSTEM_THEME_BG_BLUE=$(tput setab $SYSTEM_THEME_BLUE)

export SYSTEM_THEME_FG_MAGENTA=$(tput setaf $SYSTEM_THEME_MAGENTA)
export SYSTEM_THEME_BG_MAGENTA=$(tput setab $SYSTEM_THEME_MAGENTA)

export SYSTEM_THEME_FG_CYAN=$(tput setaf $SYSTEM_THEME_CYAN)
export SYSTEM_THEME_BG_CYAN=$(tput setab $SYSTEM_THEME_CYAN)

export SYSTEM_THEME_FG_WHITE=$(tput setaf $SYSTEM_THEME_WHITE)
export SYSTEM_THEME_BG_WHITE=$(tput setab $SYSTEM_THEME_WHITE)

# Current theme
export SYSTEM_THEME_FG_PRIMARY=$(tput setaf $SYSTEM_THEME_PRIMARY)
export SYSTEM_THEME_BG_PRIMARY=$(tput setab $SYSTEM_THEME_PRIMARY)

export SYSTEM_THEME_FG_HEADING=$(tput setaf $SYSTEM_THEME_HEADING)
export SYSTEM_THEME_BG_HEADING=$(tput setab $SYSTEM_THEME_HEADING)

export SYSTEM_THEME_FG_LINK=$(tput setaf $SYSTEM_THEME_LINK)
export SYSTEM_THEME_BG_LINK=$(tput setab $SYSTEM_THEME_LINK)

export SYSTEM_THEME_FG_HIGHLIGHT=$(tput setaf $SYSTEM_THEME_HIGHLIGHT)
export SYSTEM_THEME_BG_HIGHLIGHT=$(tput setab $SYSTEM_THEME_HIGHLIGHT)

export SYSTEM_THEME_FG_SELECTION=$(tput setaf $SYSTEM_THEME_SELECTION)
export SYSTEM_THEME_BG_SELECTION=$(tput setab $SYSTEM_THEME_SELECTION)

export SYSTEM_THEME_FG_ERROR=$(tput setaf $SYSTEM_THEME_ERROR)
export SYSTEM_THEME_BG_ERROR=$(tput setab $SYSTEM_THEME_ERROR)

export SYSTEM_THEME_FG_SUCCESS=$(tput setaf $SYSTEM_THEME_SUCCESS)
export SYSTEM_THEME_BG_SUCCESS=$(tput setab $SYSTEM_THEME_SUCCESS)

# Helpful commands
# ================================================================================

# get number of colors available in tput
# tput colors

# list 256 color palette with corresponding codes
# for c in {0..255}; do tput setaf $c; tput setaf $c | cat -v; echo =$c; done
