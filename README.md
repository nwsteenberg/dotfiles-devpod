# dotfiles-devpod
Configuration compatible with [DevPod](https://github.com/loft-sh/devpod) dotfiles with:
* Full nvim setup + tmux
* oh-my-bash with agnoster theme

## Dependencies
The dotfiles installer `install.sh` requires the following binaries:
* `stow`
* `brew`
* `nvim`

If running using a devcontainer these should all be possible to find using features from [containers.dev/features](https://containers.dev/features)

## Usage
Execute `run-dev.sh <language>` from any directory to create dev-env using DevPod with nvim, tmux and basic tools for development. 

The language argument should match an available dev-container suffix.
