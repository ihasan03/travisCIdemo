#!/bin/sh

UPSTREAM=${1:-'@{u}'}
LOCAL=$(git rev-parse @)
REMOTE=$(git rev-parse "$UPSTREAM")
BASE=$(git merge-base @ "$UPSTREAM")

git remote add upstream https://github.com/irfanhasan/travisCIdemo.git

while true
do
    #get updated upstream reference
    git fetch upstream master
    git pull upstream master

    #push changes to our repo
    git push origin master
    sleep 120 #2 mins
done
