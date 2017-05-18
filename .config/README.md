Dotfiles

https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/


alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

git clone --bare <git-repo-url> $HOME/.

config checkout

