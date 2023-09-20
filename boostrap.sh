#!/usr/bin/env bash

# directory of this script
dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
source "$dir/config.sh"

if [[ "${UID}" -ne 0 ]]; then
    echo 'Bootstrap script requires superuser privileges. Please rerun this script with sudo.'
    exit 1
fi

echo 'Welcome to the System Bootstrap!'
echo 'Script will now download & install remote system repository'
echo

if ! git --version >/dev/null 2>&1; then
    echo 'Error: git is not installed. Please download git and rerun this script!'
    exit 1
fi

git clone "$BOOTSTRAP_SYSTEM_REPO" "$BOOTSTRAP_SYSTEM_LOCATION"

source "$BOOTSTRAP_SYSTEM_LOCATION/config.sh"

echo 'System repository donwload successful...'
echo

cat <<EOF
Welcome to the module installation of $SYSTEM_NAME version $SYSTEM_VERSION!
Script will now install all packages and setup your system's config.
You can find results and errors of installation in the file '$BOOTSTRAP_INSTALLATION_REPORT'.
EOF

read -p "Proceed with the setup? [y/n] " -n 1 -r
echo
if [[ $REPLY =~ ^[^Yy]$ ]]; then
    exit 1
fi

for module in "$SYSTEM_DIR_PRIORTIY"/* "$SYSTEM_DIR_MODULES"/*; do
    if [ -d "$module" ]; then
        target="$module/$BOOTSTRAP_INSTALLATION_SCRIPT"
        title="$SYSTEM_NAME $module"

        echo "$BOOTSTRAP_PROMPT_DIVIDER" | tee -a "$BOOTSTRAP_INSTALLATION_REPORT"
        echo "${title^^}" | tee -a "$BOOTSTRAP_INSTALLATION_REPORT"

        if [ -e "$target" ] && [ -x "$target" ]; then
            if ./target 2>>"$BOOTSTRAP_INSTALLATION_REPORT"; then
                echo -e "\nSUCCESS: $target installed successfully" | tee -a "$BOOTSTRAP_INSTALLATION_REPORT"
            else
                echo -e "\nERROR: there was an error installing $target" | tee -a "$BOOTSTRAP_INSTALLATION_REPORT"
            fi
        else
            echo -e '\n' | tee -a "$BOOTSTRAP_INSTALLATION_REPORT"
            echo "ERROR: $target not found or is not executable" | tee -a "$BOOTSTRAP_INSTALLATION_REPORT"
        fi

        echo "$BOOTSTRAP_PROMPT_DIVIDER" | tee -a "$BOOTSTRAP_INSTALLATION_REPORT"
        echo -e '\n' | tee -a "$BOOTSTRAP_INSTALLATION_REPORT"
    fi
done
