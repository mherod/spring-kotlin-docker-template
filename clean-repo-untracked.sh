#!/usr/bin/env bash

git add . ; git commit --amend
git filter-branch -f --tree-filter 'rm -rf src/generated' HEAD
git filter-branch -f --tree-filter 'rm -rf .gradle' HEAD
git filter-branch -f --tree-filter 'find . -name ".DS_Store" -delete' HEAD
git filter-branch -f --tree-filter 'git checkout master -- .gitignore' HEAD
git filter-branch -f --tree-filter 'git checkout master -- README.md' HEAD
git filter-branch -f --tree-filter 'git checkout master -- .name' HEAD
git filter-branch -f --tree-filter 'git checkout master -- Dockerfile' HEAD
git filter-branch -f --tree-filter 'git checkout master -- deploy-docker.sh' HEAD
git filter-branch -f --tree-filter 'git checkout master -- src/main' HEAD
git filter-branch -f --tree-filter 'git checkout master -- gradle/wrapper' HEAD
git filter-branch -f --tree-filter 'git checkout master -- gradlew' HEAD
git filter-branch -f --tree-filter 'git checkout master -- gradlew.bat' HEAD
git filter-branch -f --tree-filter 'git checkout master -- src/test/java/ApplicationConfigTest.java' HEAD
git filter-branch -f --tree-filter 'git checkout master -- clean-repo-untracked.sh' HEAD
git filter-branch -f --prune-empty --tag-name-filter cat -- --all
git reflog expire --expire=now --all
git gc --aggressive --prune=now
git push --force
