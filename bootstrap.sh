#!/bin/bash

source "$(dirname "$0")/core/config.sh"

# run installation and generate report
"$(dirname "$0")/core/install.sh" 2>"$CONFIG_INSTALLATION_REPORT"
