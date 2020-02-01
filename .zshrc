DEFAULT_USER="malonso"
ZSH_TMUX_AUTOSTART=true

export ZSH=~/.oh-my-zsh

ZSH_THEME="agnoster"

plugins=(
  git
  aws
#  sublime
#  svn
#  docker
  jira
#  vagrant
#  sudo
  vi-mode
  history-substring-search
  zsh-autosuggestions
  zsh-syntax-highlighting
  tmux
)

source $ZSH/oh-my-zsh.sh

SHOW_AWS_PROMPT=false

export EDITOR='vim'
export TERM='xterm-256color'
zstyle ':completion:*' rehash true
# bindkey -v
# bindkey jj vi-cmd-mode
# bindkey -s kj '\e'

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

if [[ -f "${HOME}/.config/cloudtoken/bashrc_additions" ]]; then
    source "${HOME}/.config/cloudtoken/bashrc_additions"
fi
