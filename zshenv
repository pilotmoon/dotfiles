#echo 'Hello from .zshenv'

# My own dev stuff
source ~/.dotfiles/dev

########
# Path #
########

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv || /usr/local/bin/brew shellenv)"

# # rbenv
# if command -v rbenv >/dev/null 2>&1; then
# 	eval "$(rbenv init - zsh)"
# fi
# 
# # nodenv
# if command -v nodenv >/dev/null 2>&1; then
# 	eval "$(nodenv init -)"
# fi

# cargo for rust
# . "$HOME/.cargo/env"
