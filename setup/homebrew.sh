#!/bin/bash

echo "Installing homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Updating homebrew..."
brew update

echo "Running homebrew doctor..."
brew doctor

TAP_LIST="caskroom/cask
"

BREW_LIST="brew-cask
node
yarn
bash
git
wget
ack
awscli
"

CASK_LIST="spectacle
visual-studio-code
google-chrome
sequel-pro
iterm2
spotify
"

# install taps
for tap in $TAP_LIST;
do
  echo "Tapping... $tap"
  if [ $(brew tap | grep $tap) ];
    then
      echo "$tap already installed... continuing..."
  else
    brew tap $tap
  fi
done

# install brews
for brew in $BREW_LIST;
do
  echo "Brewing... $brew"
  if [ $(brew list | grep $brew) ];
    then
      echo "$brew already installed... continuing..."
  else
    brew install $brew
  fi
done

# install casks
for cask in $CASK_LIST;
do
  echo "Casking... $cask"
  if [ $(brew cask list | grep $cask) ];
    then
      echo "$cask already installed... continuing..."
  else
    brew cask install $cask
  fi
done

echo "Running doctor for good measure..."
brew doctor

echo "All done!"
