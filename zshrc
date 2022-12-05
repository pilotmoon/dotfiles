echo 'Hello from .zshrc'

# Set Variables

# Add syntax highlighting for manpages
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Change ZSH Options

# Create Aliases
alias ll='ls -lAFh'

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
