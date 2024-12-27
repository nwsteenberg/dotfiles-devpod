#!/usr/bin/env bash

# Nvim
nvim_folder="$PWD/dotfiles/.config/nvim"
mkdir -p "$PWD/dotfiles/.config"
git clone https://github.com/nwsteenberg/nvim.git "$nvim_folder"

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)

# symlinks
mkdir -p "$HOME/.config"
ln -sf "$PWD/dotfiles/.config/nvim" "$HOME/.config/nvim"
ln -sf "$PWD/dotfiles/.zprofile" "$HOME/.zprofile"
ln -sf "$PWD/dotfiles/.tmux.conf" "$HOME/.tmux.conf"

echo "All packages from the setup script have been installed."
