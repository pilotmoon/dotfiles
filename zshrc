#echo 'Hello from .zshrc'

################
## ZSH Config ##
################

# prevent dups in history
# https://unix.stackexchange.com/questions/599641/why-do-i-have-duplicates-in-my-zsh-history
# setopt HIST_EXPIRE_DUPS_FIRST
# setopt HIST_IGNORE_DUPS
# setopt HIST_IGNORE_ALL_DUPS
# setopt HIST_IGNORE_SPACE
# setopt HIST_FIND_NO_DUPS
# setopt HIST_SAVE_NO_DUPS

# prompt
eval "$(oh-my-posh init zsh --config ~/.dotfiles/resources/nick.onehalf.minimal.omp.json)"

# Set up autocomplete etc using plugins

# https://github.com/marlonrichert/zsh-autocomplete
# source ~/.dotfiles/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# https://github.com/zsh-users/zsh-completions
# fpath=(~/.dotfiles/zsh-autocomplete/src $fpath)

# https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
source ~/.dotfiles/zsh-autosuggestions/zsh-autosuggestions.zsh

# initialise zsh completions function
autoload -U compinit
compinit

#
# zstyle
#
# set case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
# show as menu
zstyle ':completion:*' menu 'yes=long' select

#
# ZSH Options <https://zsh.sourceforge.io/Doc/Release/Options.html>
#
# insert on first tab press
setopt menu_complete
# don't beep/flash on ambiguous completion
unsetopt list_beep

# Set up history searching
# https://superuser.com/questions/585003/searching-through-history-with-up-and-down-arrow-in-zsh
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# ngrok completions
if command -v ngrok &>/dev/null; then
  eval "$(ngrok completion)"
fi

###############
## Variables ##
###############

# Add syntax highlighting for manpages
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Homebrew options
export HOMEBREW_CASK_OPTS="--no-quarantine"
export HOMEBREW_AUTO_UPDATE_SECS=1209600 #2 weeks

# Browser for `gh`
export BROWSER="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

# Prevent npx auto-installing things
export NPM_CONFIG_YES=false

# SSH auth
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# Set up neovim as default editor
export EDITOR=nvim

#############
## Aliases ##
#############

# general tools
alias ll='eza -l --git'
#alias ll='ls -l'
alias bb='open -a BBEdit'
alias ghd='open -a GitHub\ Desktop'
alias kk='open -a GitKraken'
alias ds='open -a Dropshelf'
alias ip="ifconfig en0 | grep inet | grep -v inet6 | cut -d ' ' -f2"
alias vi='nvim'
alias path="echo $PATH | tr ':' '\\n'"
alias sz="source ~/.zshrc"

# git helpers
#alias ga='git add'
#alias gdt='git difftool'
alias ga.='git add .'
alias gca='git commit -a -m'
alias gcm='git commit -m'
alias gco='git checkout'
alias gd='git diff'
alias gdt='git difftool'
alias gp='git push'
alias grv='git remote -v'
alias gst='git status -sb'
alias lg="git log-nice"
# https://difftastic.wilfred.me.uk/git.html
alias lgd="git log -p --ext-diff"
alias ver='git describe --long --match buildbase'
alias pcfind="mdfind \"kMDItemCFBundleIdentifier == 'com.pilotmoon.popclip*'\" 2>/dev/null"
# my tools
alias ose='open -a PopClip'
alias z='open -a Zed'
alias m='open -a Marked'

# pip
alias pip='python3 -m pip'

# ssh setup
alias sshcopy='ssh-copy-id -f -i ~/.ssh/nick_general'

# functions
function mkcd() {
  mkdir -p $@ && cd $_;
}

function release() {
  git tag -a $1 -m $1
}

function clean() {
    [[ -z "$(git status --porcelain)" ]]
}
function master() {
    [[ $(git symbolic-ref --short HEAD) == master ]]
}
function tagged() {
    $(git describe --exact-match --tags $(git rev-parse HEAD) > /dev/null 2>&1)
}

function extv() {
  if ! clean; then
  	echo "It looks like the source repo is not clean.";
  	return
  fi
  if tagged; then
  	echo "It looks like the source repo is already tagged.";
  	return
  fi
  newtag=v$(git describe --tags --abbrev=0 | awk -F'v' '{$0=($2+1)}1' OFS='v')
  echo "new tag $newtag"
  git tag -a -m 'incremented by script' $newtag; git push github master --tags
}


# bun completions
[ -s "/Users/nick/.bun/_bun" ] && source "/Users/nick/.bun/_bun"

# homebrew paths
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export PATH="/opt/homebrew/opt/crowdin@3/bin:$PATH"
export PATH="/opt/homebrew/opt/python/bin:$PATH"

# go bin
export PATH="$HOME/go/bin:$PATH"

# rbenv
if command -v rbenv >/dev/null 2>&1; then
	eval "$(rbenv init - zsh)"
fi

# nodenv
if command -v nodenv >/dev/null 2>&1; then
	eval "$(nodenv init -)"
fi

# cargo for rust
. "$HOME/.cargo/env"


# extras
