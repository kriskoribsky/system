# shellcheck disable=SC2155

# Default 16 bit color palette
# ================================================================================
export SYSTEM_THEME_PALETTE_00=0 # black
export SYSTEM_THEME_PALETTE_01=1 # red
export SYSTEM_THEME_PALETTE_02=2 # green
export SYSTEM_THEME_PALETTE_03=3 # yellow
export SYSTEM_THEME_PALETTE_04=4 # blue
export SYSTEM_THEME_PALETTE_05=5 # magenta
export SYSTEM_THEME_PALETTE_06=6 # cyan
export SYSTEM_THEME_PALETTE_07=7 # white

export SYSTEM_THEME_PALETTE_08=8  # bright black
export SYSTEM_THEME_PALETTE_09=9  # bright red
export SYSTEM_THEME_PALETTE_10=10 # bright green
export SYSTEM_THEME_PALETTE_11=11 # bright yellow
export SYSTEM_THEME_PALETTE_12=12 # bright blue
export SYSTEM_THEME_PALETTE_13=13 # bright magenta
export SYSTEM_THEME_PALETTE_14=14 # bright cyan
export SYSTEM_THEME_PALETTE_15=15 # bright white

# ANSI transformed color codes
# ================================================================================
export SYSTEM_THEME_FG_00=$(tput setaf $SYSTEM_THEME_PALETTE_00)
export SYSTEM_THEME_BG_00=$(tput setab $SYSTEM_THEME_PALETTE_00)

export SYSTEM_THEME_FG_01=$(tput setaf $SYSTEM_THEME_PALETTE_01)
export SYSTEM_THEME_BG_01=$(tput setab $SYSTEM_THEME_PALETTE_01)

export SYSTEM_THEME_FG_02=$(tput setaf $SYSTEM_THEME_PALETTE_02)
export SYSTEM_THEME_BG_02=$(tput setab $SYSTEM_THEME_PALETTE_02)

export SYSTEM_THEME_FG_03=$(tput setaf $SYSTEM_THEME_PALETTE_03)
export SYSTEM_THEME_BG_03=$(tput setab $SYSTEM_THEME_PALETTE_03)

export SYSTEM_THEME_FG_04=$(tput setaf $SYSTEM_THEME_PALETTE_04)
export SYSTEM_THEME_BG_04=$(tput setab $SYSTEM_THEME_PALETTE_04)

export SYSTEM_THEME_FG_05=$(tput setaf $SYSTEM_THEME_PALETTE_05)
export SYSTEM_THEME_BG_05=$(tput setab $SYSTEM_THEME_PALETTE_05)

export SYSTEM_THEME_FG_06=$(tput setaf $SYSTEM_THEME_PALETTE_06)
export SYSTEM_THEME_BG_06=$(tput setab $SYSTEM_THEME_PALETTE_06)

export SYSTEM_THEME_FG_07=$(tput setaf $SYSTEM_THEME_PALETTE_07)
export SYSTEM_THEME_BG_07=$(tput setab $SYSTEM_THEME_PALETTE_07)

export SYSTEM_THEME_FG_08=$(tput setaf $SYSTEM_THEME_PALETTE_08)
export SYSTEM_THEME_BG_08=$(tput setab $SYSTEM_THEME_PALETTE_08)

export SYSTEM_THEME_FG_09=$(tput setaf $SYSTEM_THEME_PALETTE_09)
export SYSTEM_THEME_BG_09=$(tput setab $SYSTEM_THEME_PALETTE_09)

export SYSTEM_THEME_FG_10=$(tput setaf $SYSTEM_THEME_PALETTE_10)
export SYSTEM_THEME_BG_10=$(tput setab $SYSTEM_THEME_PALETTE_10)

export SYSTEM_THEME_FG_11=$(tput setaf $SYSTEM_THEME_PALETTE_11)
export SYSTEM_THEME_BG_11=$(tput setab $SYSTEM_THEME_PALETTE_11)

export SYSTEM_THEME_FG_12=$(tput setaf $SYSTEM_THEME_PALETTE_12)
export SYSTEM_THEME_BG_12=$(tput setab $SYSTEM_THEME_PALETTE_12)

export SYSTEM_THEME_FG_13=$(tput setaf $SYSTEM_THEME_PALETTE_13)
export SYSTEM_THEME_BG_13=$(tput setab $SYSTEM_THEME_PALETTE_13)

export SYSTEM_THEME_FG_14=$(tput setaf $SYSTEM_THEME_PALETTE_14)
export SYSTEM_THEME_BG_14=$(tput setab $SYSTEM_THEME_PALETTE_14)

export SYSTEM_THEME_FG_15=$(tput setaf $SYSTEM_THEME_PALETTE_15)
export SYSTEM_THEME_BG_15=$(tput setab $SYSTEM_THEME_PALETTE_15)

# ANSI additional text styles
# ================================================================================
export SYSTEM_THEME_BOLD=$(tput bold)
export SYSTEM_THEME_DIM=$(tput dim)
export SYSTEM_THEME_UNDERLINE=$(tput smul)
export SYSTEM_THEME_REVERSE=$(tput rev)
export SYSTEM_THEME_ITALIC=$(tput sitm)
export SYSTEM_THEME_STRIKETHROUGH=$(tput smxx)

export SYSTEM_THEME_RESET=$(tput sgr0)
