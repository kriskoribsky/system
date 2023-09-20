#!/usr/bin/env bash

# directory of this script
dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

source "$dir/utils/path.sh"

if [[ ${SYSTEM_CONFIG_LOADED:-} -ne 1 ]]; then
    readonly SYSTEM_CONFIG_LOADED=1

    export SYSTEM_NAME='system'
    export SYSTEM_VERSION='1.0.0'

    SYSTEM_USER_HOME=$(getent passwd "$SUDO_USER" | cut -d: -f6)
    SYSTEM_DIR_ROOT="$(path_absolute "$dir")"
    SYSTEM_DIR_MODULES="$(path_join "$SYSTEM_DIR_ROOT" 'modules')"
    SYSTEM_DIR_PRIORTIY="$(path_join "$SYSTEM_DIR_ROOT" 'priority')"
    SYSTEM_DIR_UTILS="$(path_join "$SYSTEM_DIR_ROOT" 'utils')"
    SYSTEM_DIR_BIN="$(path_join "$SYSTEM_DIR_ROOT" 'bin')"

    SYSTEM_PATH_CONFIG=$(readlink -f "$0")

    export SYSTEM_USER_HOME
    export SYSTEM_DIR_ROOT
    export SYSTEM_DIR_MODULES
    export SYSTEM_DIR_PRIORTIY
    export SYSTEM_DIR_UTILS
    export SYSTEM_DIR_BIN

    export SYSTEM_PATH_CONFIG
fi
