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
if [[ -f $(which nvim) ]]; then
    nvim_folder="$PWD/dotfiles/.config/nvim"
    if [[ ! -d $nvim_folder ]]; then 
        git clone https://github.com/nwsteenberg/nvim.git "$nvim_folder"
    else
        pushd $nvim_folder 
        git pull
        popd
    fi
fi

# oh-my-bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# Stow dotfiles
stow --restow --dir "$PWD/dotfiles" --target $HOME .
stow --restow --dir "$PWD/dotfiles/.config" --target $HOME/.config/ .

echo "All packages from the setup script have been installed."

