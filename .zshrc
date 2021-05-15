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

export EDITOR='nvim'
export TERM='xterm-256color'
export SSH_KEY_PATH="~/.ssh/rsa_id"

# fzf
export FZF_DEFAULT_COMMAND='fd --type f --color=never --hidden'
export FZF_DEFAULT_OPTS='--no-height --color=bg+:#343d46,gutter:-1,pointer:#ff3c3c,info:#0dbc79,hl:#0dbc79,hl+:#23d18b'

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :50 {}'"

export FZF_ALT_C_COMMAND='fd --type d . --color=never --hidden'
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"

zstyle ':completion:*' rehash true

if [[ -f "${HOME}/.config/cloudtoken/bashrc_additions" ]]; then
    source "${HOME}/.config/cloudtoken/bashrc_additions"
fi

alias cat='bat'
alias ack='ag'
alias f='fuck'
alias l='exa'
alias la='exa -a'
alias ll='exa -lah'
alias ls='exa --color=auto'
alias vim="nvim"
alias grep="rg"
alias find="fd"
alias man="batman"
# alias zoomg="XDG_CURRENT_DESKTOP=gnome zoom"
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

eval $(thefuck --alias)

