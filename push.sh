#!/bin/sh

setup_git() {
    git config --global user.email "travic@travic-ci.org"
    git config --global user.name "Tavic CI"
}

commit_website_files() {
    git checkout -b $TRAVIS_BRANCH
    git add docs/*
    git commit -m 'Adding documents'
}

push() {
    git remote add origin https://${GH_TOKEN}@github.com/kidip/TravisCITesting
    git push origin $TRAVIS_BRANCH
}

setup_git
commit_website_files
push