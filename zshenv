echo 'Hello from .zshenv'

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# My own dev stuff
source ~/.dotfiles/dev
