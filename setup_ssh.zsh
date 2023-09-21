#!/usr/bin/env zsh
set -e
echo "\n<<< Starting SSH Setup >>>\n"

# use 1Passsword CLI to generaate the actual file (which is in .gitignore)
echo "Generating SSH config files..."
op inject -f -i ssh/config_template -o ssh/config
op inject -f -i ssh/github_template.pub -o ssh/github.pub
op inject -f -i ssh/github1_template.pub -o ssh/github1.pub
op inject -f -i ssh/nick_general_template.pub -o ssh/nick_general.pub
op inject -f -i ssh/allowed_signers_template -o ssh/allowed_signers

# update this repo origin now that we can use SSH
echo "Updating dotfiles repo origin URL..."
git remote set-url origin git@github.com:pilotmoon/dotfiles.git