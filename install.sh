#!/bin/bash

# Nvim Setup
export XDG_CONFIG_HOME="$HOME"

# Brew packages to install
packages=(
    npm
    docker
    tmux
    stow
)

for package in "${packages[@]}"; do
	echo "Installing $package..."
	/home/linuxbrew/.linuxbrew/bin/brew install "$package"
done

# Grab other resources from git
git clone https://github.com/nwsteenberg/nvim.git "$PWD/dotfiles/nvim"

# install oh-my-bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# Stow dotfiles
stow --dir "$PWD/dotfiles" --target $HOME .

echo "All packages from the setup script have been installed."
