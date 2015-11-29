ZSH=$HOME/.oh-my-zsh
ZSH_THEME="my"

# Initialize prompt
autoload -Uz promptinit
promptinit

# Initialize completion
autoload -Uz compinit
compinit

# https://scottlinux.com/2011/08/19/quick-intro-to-zsh-auto-complete
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

COMPLETION_WAITING_DOTS="true"

alias cd='pushd > /dev/null'
alias b='popd > /dev/null'
alias q='exit'
alias ll='ls -lh'
alias la='ls -lah'

setopt histignorealldups sharehistory

HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history

# Go fetch zsh-syntax-highlighting, not included in oh-my-zsh
plugins=(git vi-mode python zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

#------------------Last Minute Tweaks-----------------------#
test -r ~/.dircolors && eval "$(dircolors ~/.dircolors)" || eval "$(dircolors -b)"
if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte.sh
  __vte_osc7
fi

export PATH=$HOME/bin:$PATH
export GEM_HOME=$(ruby -e 'print Gem.user_dir')
export EDITOR=vim

bindkey -v
bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward
export KEYTIMEOUT=1

