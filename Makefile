
clone-nvim:
	git clone https://github.com/nwsteenberg/nvim.git dotfiles/.config/nvim

clone-devcontainers:
	git clone https://github.com/nwsteenberg/devcontainers.git	

setup-symlinks:
	ln -sf ${PWD}/nvim ~/.config/nvim
