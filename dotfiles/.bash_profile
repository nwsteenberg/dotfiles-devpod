#
# ~/.bash_profile
#

############# Environment Variables
export VISUAL=nvim
export EDITOR=nvim
export TERM=xterm-256color

# Nvim Setup
export XDG_CONFIG_HOME="$HOME/.config"

############# Alias
alias vim='nvim'
alias ll='ls -al'
alias gs='git status'
alias gd='git diff'
alias gf='git fetch'

# fix UTF-8 support
alias tmux="tmux -u -2"

sed -i -e 's/OSH_THEME="font"/OSH_THEME="agnoster"/g' ~/.bashrc
# Required for oh-my-bash
if [[ -f ~/.bashrc ]]; then
  source ~/.bashrc
fi

