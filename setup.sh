#!/bin/bash

ensureDevpod() {
  if ! which devpod >/dev/null; then
    echo "Devpod not installed. Installing now..."
    curl -L -o devpod "https://github.com/loft-sh/devpod/releases/latest/download/devpod-linux-amd64" && sudo install -c -m 0755 devpod /usr/local/bin && rm -f devpod
    devpod provider add docker
  fi
}

ensureDocker() {
if ! docker ps >/dev/null; then
    echo "Docker not installed. Install it using the Docker documentation: https://docs.docker.com/engine/install/"
    exit 1
  fi
}

ensureDevpod
ensureDocker

echo "Everything looks good :)"

