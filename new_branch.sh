#!/bin/bash
echo Stashing changes...
git stash
echo Creating a new branch off master...
echo What would you like as the branch name?
read branch_name
git checkout master
git pull origin master
git checkout -b $branch_name
