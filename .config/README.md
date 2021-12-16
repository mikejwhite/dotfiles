#Dotfiles

The root idea for this comes from [here](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)

## Installation

```
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

git clone --bare <git-repo-url> $HOME/.cfg

config checkout

~/.config/install.sh
```

## Notes

 - Remember to set up your ssh keys.

## TODO
 - ACK aren't installed.

 - The OSX version of the package installs (brew) aren't functional

