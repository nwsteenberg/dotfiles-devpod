#!/usr/bin/env bash
SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

language=${1}
if [ -z "${language}" ]; then
    echo "No language specified. Pick one that matches the following devcontainer spec:"
    ls -a ${SCRIPTPATH} | grep "devcontainer-*.json"
    exit 1
fi

devcontainer_name=".devcontainer-${language}.json"

cp "${SCRIPTPATH}/${devcontainer_name}" .

# Project is always named after the the parent directory
project_name="$(basename $PWD)"

devpod up . \
    --id ${project_name} \
    --provider docker \
    --dotfiles https://github.com/nwsteenberg/dotfiles-devpod.git \
    --devcontainer-path "${devcontainer_name}" \
    --ide none

devpod ssh "${project_name}"
