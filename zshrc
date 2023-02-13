#echo 'Hello from .zshrc'

########
# Path #
########

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# rbenv
if command -v rbenv >/dev/null 2>&1; then
	eval "$(rbenv init - zsh)"
fi

# nodenv
if command -v rbenv >/dev/null 2>&1; then
	eval "$(nodenv init -)"
fi

################
## ZSH Config ##
################

# prevent dups in history
# https://unix.stackexchange.com/questions/599641/why-do-i-have-duplicates-in-my-zsh-history
setopt HIST_FIND_NO_DUPS

# prompt
eval "$(oh-my-posh init zsh --config ~/.dotfiles/resources/nick.onehalf.minimal.omp.json)"

# Set up autocomplete using plugin
# https://github.com/marlonrichert/zsh-autocomplete
# source ~/.dotfiles/zsh-autocomplete/zsh-autocomplete.plugin.zsh

###############
## Variables ##
###############

# Add syntax highlighting for manpages
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Homebrew options
export HOMEBREW_CASK_OPTS="--no-quarantine"

# Browser for `gh`
export BROWSER="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

#############
## Aliases ##
#############

# general tools
alias ll='exa -laFh --git'
alias bb='open -a BBEdit'
alias ghd='open -a GitHub\ Desktop'
alias kk='export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock; open -a GitKraken'
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

# functions
function mkcd() {
  mkdir -p $@ && cd $_;
} 

function release() {
  git tag -a $1 -m $1
}
