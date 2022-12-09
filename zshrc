echo 'Hello from .zshrc'

## Prompts ##

PROMPT='
%1~ %L %# '
RPROMPT='%*'

## Variables ##

# Add syntax highlighting for manpages
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Homebrew options
export HOMEBREW_CASK_OPTS="--no-quarantine"

## Aliases ##

# general tools
alias ll='exa -laFh --git'
alias bb='open -a BBEdit'

# git helpers
#alias ga.='git add .'
#alias ga='git add'
#alias gdt='git difftool'
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

# Add Location to $PATH Variable

# Write Handy Functions
function mkcd() {
  mkdir -p $@ && cd $_;
} 

# Use ZSH Plugins

# ...and Other Surprises
