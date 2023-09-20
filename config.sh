#!/usr/bin/env bash

if [[ ${BOOTSTRAP_CONFIG_LOADED:-} -ne 1 ]]; then
    readonly BOOTSTRAP_CONFIG_LOADED=1

    export BOOTSTRAP_SYSTEM_REPO='https://github.com/ksoft-system/system.git'
    export BOOTSTRAP_SYSTEM_LOCATION="$HOME/system"

    export BOOTSTRAP_INSTALLATION_SCRIPT='install.sh'
    export BOOTSTRAP_INSTALLATION_REPORT='bootstrap-report.txt'
    export BOOTSTRAP_PROMPT_DIVIDER='================================================================================'
fi
