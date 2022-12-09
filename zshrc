echo 'Hello from .zshrc'

# Set Variables

# Add syntax highlighting for manpages
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
# Homebrew options
export HOMEBREW_CASK_OPTS="--no-quarantine"

# Change ZSH Options

# Create Aliases
alias ll='exa -laFh --git'

# Customise Prompt(s)
PROMPT='
%1~ %L %# '
RPROMPT='%*'

# Add Location to $PATH Variable

# Write Handy Functions
function mkcd() {
  mkdir -p $@ && cd $_;
} 

# Use ZSH Plugins

# ...and Other Surprises
