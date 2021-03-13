DEFAULT_USER="malonso"
ZSH_TMUX_AUTOSTART=true

export ZSH=~/.oh-my-zsh

ZSH_THEME="agnoster"

plugins=(
  git
  docker
  sudo
  vi-mode
  history-substring-search
  zsh-autosuggestions
  zsh-syntax-highlighting
  tmux
  ssh-agent
)

zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent identities id_rsa

source $ZSH/oh-my-zsh.sh


export EDITOR='vim'
#export TERM='xterm-256color'
zstyle ':completion:*' rehash true

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

if [[ -f "${HOME}/.config/cloudtoken/bashrc_additions" ]]; then
    source "${HOME}/.config/cloudtoken/bashrc_additions"
fi

alias vim="nvim"
