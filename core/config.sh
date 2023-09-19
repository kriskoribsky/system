#!/bin/bash

source "$(dirname "$0")/../utils/path.sh"

if [[ ${SOURCED_CONFIG:-} -ne 1 ]]; then
    readonly SOURCED_CONFIG=1

    export CONFIG_NAME='system'
    export CONFIG_VERSION='1.0.0'

    export CONFIG_INSTALLATION_REPORT='installation-report.txt'
fi
