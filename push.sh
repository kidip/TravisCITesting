#!/bin/sh

setup_git() {
    echo 'Setting up git?'
    git config --global user.email "travic@travic-ci.org"
    git config --global user.name "Tavic CI"
}

commit_website_files() {
    echo 'Checking out files?'
    git add ./docs/*
    git commit -m 'Adding documents'
}

push() {
    git remote add origin-authed https://kidip:${GH_TOKEN}@github.com/kidip/TravisCITesting.git/
    git push origin-authed $BRANCH
}

if [[ "$TRAVIS_BRANCH" != "master" ]]; then
    echo "We are not on master branch, or not merging to master"
    exit 0
fi

setup_git
commit_website_files
push