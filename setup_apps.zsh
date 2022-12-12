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

echo '\nHomebrew was installed. Next will install Brewfile.\nPress any key to continue...'; read -k1 -s

# install everything in Brewfile
# (generate Brewfile with `brew bundle dump --force`)
brew bundle --verbose


# echo 'Please launch and sign in to SetApp, then press any key to continue...'; read -k1 -s
# This doesn;t seem to work (todo: investigate)
# /Applications/Setapp.app/Contents/MacOS/Setapp -installApps "CleanShot X" "Downie"