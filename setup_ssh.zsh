#!/usr/bin/env zsh
echo "\n<<< Starting SSH Setup >>>\n"

# use 1Passsword CLI to generaate the actual file (which is in .gitignore)
echo "Generating SSH config file..."
op inject -f -i ssh/config.template -o ssh/config

# update this repo origin now that we can use SSH
echo "Updating dotfiles repo origin URL..."
git remote set-url origin git@github.com:pilotmoon/dotfiles.git