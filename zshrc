echo 'Hello from .zshrc'

################
## ZSH Config ##
################

# prevent dups in history
# https://unix.stackexchange.com/questions/599641/why-do-i-have-duplicates-in-my-zsh-history
setopt HIST_FIND_NO_DUPS

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


###############
## Variables ##
###############

# Add syntax highlighting for manpages
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Homebrew options
export HOMEBREW_CASK_OPTS="--no-quarantine"

# Browser for `gh`
export BROWSER="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

# Prevent npx auto-installing things
export NPM_CONFIG_YES=false

# SSH auth
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

#############
## Aliases ##
#############

# general tools
alias ll='exa -laFh --git'
alias bb='open -a BBEdit'
alias ghd='open -a GitHub\ Desktop'
alias kk='open -a GitKraken'
alias ds='open -a Dropshelf'
alias ip="ifconfig en0 | grep inet | grep -v inet6 | cut -d ' ' -f2"

# git helpers
#alias ga='git add'
#alias gdt='git difftool'
alias ga.='git add .'
alias gca='git commit -a -m'
alias gcm='git commit -m'
alias gco='git checkout'
alias gd='git diff'
alias gp='git push'
alias grv='git remote -v'
alias gst='git status -sb'
alias lg="git log-nice"
alias ver='git describe --long --match buildbase'

# my tools
alias ose='open -a SignExt'

# ssh setup
alias sshcopy='ssh-copy-id -f -i ~/.ssh/nick_general'

# functions
function mkcd() {
  mkdir -p $@ && cd $_;
} 

function release() {
  git tag -a $1 -m $1
}

# extra command for homebrew's curl to precede system
export PATH="/opt/homebrew/opt/curl/bin:$PATH"

