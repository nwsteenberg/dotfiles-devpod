#!/bin/bash

# Nvim Setup
export XDG_CONFIG_HOME="$HOME"

dotfilesDir="dotfiles"
ln -sf "$PWD/nvim" "$XDG_CONFIG_HOME"/nvim

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

stow --dir="./dotfiles" --target="$HOME"  

# install oh-my-bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

echo "All packages from the setup script have been installed."
