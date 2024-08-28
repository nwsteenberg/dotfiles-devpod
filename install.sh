#!/usr/bin/env bash

# Nvim
nvim_folder="$PWD/dotfiles/.config/nvim"
git clone https://github.com/nwsteenberg/nvim.git "$nvim_folder"

# oh-my-bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# synlinks
ln -sf "$PWD/dotfiles/.config/nvim" "$HOME/.config/nvim"
ln -sf "$PWD/dotfiles/.bash_profile" "$HOME/.bash_profile"
ln -sf "$PWD/dotfiles/.tmux.conf" "$HOME/.tmux.conf"

echo "All packages from the setup script have been installed."
