#Dotfiles

The root idea for this comes from [here](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)

## Installation

### 
Reminder: Setup your SSH keys so you don't have to change the git remote, and clone with git@github.com:username/repo.git.


```
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

git clone --bare <git-repo-url> $HOME/.cfg

config checkout

~/.config/install.sh
```

## TODO
 - ACK isn't installed.

 - The OSX version of the package installs (brew) aren't functional

