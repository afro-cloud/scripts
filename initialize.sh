#!/bin/bash

curl https://raw.githubusercontent.com/thesuperhomie/scripts/master/setup/homebrew.sh | sh
curl https://raw.githubusercontent.com/thesuperhomie/scripts/master/bash/.bash_profile > ~/.bash_profile
curl https://raw.githubusercontent.com/thesuperhomie/scripts/master/git > ~/code/scripts/git

chmod -R 777 ~/code/scripts/git

git config --global user.name "Claudio Herrera"
git config --global user.email herrerac11@gmail.com