ZSH_TMUX_AUTOSTART=true

export ZSH=~/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(
  git
  docker
  sudo
  kubectl
  vi-mode
  history-substring-search
  zsh-autosuggestions
  zsh-syntax-highlighting
  tmux
)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'
export TERM='xterm-256color'
