#!/usr/bin/env zsh
set -e
echo "\n<<< Starting Homebrew Setup >>>\n"

echo "Testing for brew..."
which brew > /dev/null 2>&1
if [ $? -eq 1 ]; then
    echo "brew not found."
    exit 1	
else
    echo "brew found. updating it..."
fi

# update homebrew
brew update

# install everything in Brewfile
# (generate Brewfile with `brew bundle dump --force`)
brew bundle --verbose