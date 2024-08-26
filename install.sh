#!/bin/bash

export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"

dotfilesDir="dotfiles"
ln -sf "$PWD/nvim" "$XDG_CONFIG_HOME"/nvim
ln -sf "$PWD/$dotfilesDir/.bash_profile" "$HOME"/.bash_profile
ln -sf "$PWD/$dotfilesDir/.tmux.conf" "$HOME"/.tmux.conf

packages=(
    npm
    docker
    tmux
    yq
)

for package in "${packages[@]}"; do
	echo "Installing $package..."
	/home/linuxbrew/.linuxbrew/bin/brew install "$package"
done

# install oh-my-bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

echo "All packages from the setup script have been installed."
