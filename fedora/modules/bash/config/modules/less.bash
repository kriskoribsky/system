# Syntax highlighting for Less editor
export LESS_TERMCAP_mb="$SYSTEM_THEME_FG_07"                     # begin blinking
export LESS_TERMCAP_md="$SYSTEM_THEME_BOLD$SYSTEM_THEME_FG_05"   # begin bold
export LESS_TERMCAP_so="$SYSTEM_THEME_FG_03"                     # start standout mode
export LESS_TERMCAP_us="$SYSTEM_THEME_ITALIC$SYSTEM_THEME_FG_04" # start underlining

export LESS_TERMCAP_se="$SYSTEM_THEME_RESET" # end standout mode
export LESS_TERMCAP_ue="$SYSTEM_THEME_RESET" # end underline
export LESS_TERMCAP_me="$SYSTEM_THEME_RESET" # end all mode like so, us, mb, md, mr

# Disable sgr escape sequences for colors to work
export GROFF_NO_SGR=1
