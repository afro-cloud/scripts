#!/bin/bash

echo Enter branches as a space seperated list, that you would like to remove.
read branches

for value in $branches
do
    echo Removing branch: $value
    git branch -D $value
done

echo Pulling latest master...
git checkout master
git pull && git fetch --all
echo Successfully updated project!