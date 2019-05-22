#!/bin/bash
CURRENT_BRANCH="$(git rev-parse --abbrev-ref HEAD)"

git add .
git commit --amend

sh ./git-rebase.sh

git push -f origin $CURRENT_BRANCH
