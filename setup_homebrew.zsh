#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"

echo "Testing for brew..."
which brew > /dev/null 2>&1
if [ $? -eq 1 ]; then
    echo "brew not found."
	#Cheat, if we don't have brew, install xcode command line utils too
	xcode-select --install
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "brew found. updating it..."
	brew update
fi

brew install httpie
brew install bat

brew install google-chrome
brew install visual-studio-code