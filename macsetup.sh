#!/bin/zsh
softwareupdate -i -a
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/quinnbellmore/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
source ~/.zprofile
sleep 5
cat pkgs.txt | xargs brew install