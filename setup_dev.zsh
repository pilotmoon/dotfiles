#!/usr/bin/env zsh
set -e
echo "\n<<< Starting Dev Setup >>>\n"

# use 1Passsword CLI to generaate the actual file (which is in .gitignore)
echo "Generating Dev config file..."
op inject -f -i dev_template -o dev
