#!/bin/bash

script_dir=$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")

docker run --rm -v $script_dir:/app composer/composer:latest install
