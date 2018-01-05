#!/bin/bash
CURRENT_BRANCH="$(git rev-parse --abbrev-ref HEAD)"

git stash

git checkout master
git pull origin master

git checkout $CURRENT_BRANCH
git rebase -i master
git stash pop
