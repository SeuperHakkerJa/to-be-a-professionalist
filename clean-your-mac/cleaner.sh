#!/bin/bash


## update homebrew
brew update

## update all outdated packages, it may take a lont time.
brew upgrade

## only leave the version that is currently using, and clean up unused and outdated versions.
brew cleanup -s

## clean up 
brew cask cleanup

## general check for other problem
brew doctor
brew missing
