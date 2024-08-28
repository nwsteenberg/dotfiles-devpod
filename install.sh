#!/usr/bin/env bash
function installBrewPackages() {
    # Brew packages to install
    brew_packages=(
        npm
        docker
        tmux
    )

    for brew_package in "${packages[@]}"; do
        echo "Installing $package..."
        /home/linuxbrew/.linuxbrew/bin/brew install "$package"
    done
}

# Brew
if [[ -f $(which brew) ]]; then
    installBrewPackages
fi

# Nvim
nvim_folder="$PWD/dotfiles/.config/nvim"
if [[ ! -d $nvim_folder ]]; then 
    git clone https://github.com/nwsteenberg/nvim.git "$nvim_folder"
else
    pushd $nvim_folder 
    git pull
    popd
fi

# oh-my-bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# synlinks
ln -sf "$PWD/dotfiles/.config/nvim" "$HOME/.config/nvim"
ln -sf "$PWD/dotfiles/.bash_profile" "$HOME/.bash_profile"
ln -sf "$PWD/dotfiles/.tmux.conf" "$HOME/.tmux.conf"

echo "All packages from the setup script have been installed."
