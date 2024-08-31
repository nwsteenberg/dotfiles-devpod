#!/usr/bin/env bash
SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

devcontainer_config=${1}
if [ -z "${devcontainer_config}" ]; then
    echo "No devcontainer path specified. Use command as:"
    echo "./run-dev.sh <devcontainer path>"
    exit 1
fi

# Project is always named after the the parent directory
project_name="$(basename $PWD)"

devpod up . \
    --id ${project_name} \
    --provider docker \
    --dotfiles https://github.com/nwsteenberg/dotfiles-devpod.git \
    --devcontainer-path "${devcontainer_config}" \
    --ide none

devpod ssh "${project_name}"
