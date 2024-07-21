#!/usr/bin/env bash

# directory of this script
dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

if [[ ${SYSTEM_CONFIG_LOADED:-} -ne 1 ]]; then
    readonly SYSTEM_CONFIG_LOADED=1

    export SYSTEM_NAME='system'
    export SYSTEM_VERSION='1.0.0'

    SYSTEM_DIR_ROOT="$dir"
    SYSTEM_DIR_MODULES="$dir/modules"
    SYSTEM_DIR_PRIORTIY="$dir/priority"
    SYSTEM_DIR_BIN="$dir/bin"

    SYSTEM_PATH_CONFIG=$(readlink -f "$dir/config.sh")

    export SYSTEM_DIR_ROOT
    export SYSTEM_DIR_MODULES
    export SYSTEM_DIR_PRIORTIY
    export SYSTEM_DIR_UTILS
    export SYSTEM_DIR_BIN

    export SYSTEM_PATH_CONFIG
fi
