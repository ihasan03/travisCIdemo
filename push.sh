#!/bin/sh

setup_git() {
    git config --global user.email "travis@travis-ci.org"
    git config --global user.name "Travis CI"
}

commit_files() {
    git add -f .ekstazi/*
    git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
    git remote add origin-pages https://${GH_TOKEN}@github.com/irfanhasan/travisCIcache.git 
    git push -u origin-pages master
}

setup_git
commit_files
upload_files
