#!/usr/bin/env bash

#SHELL SETUP
# set zsh to be the shell
if ! [[$SHELL =~ .*zsh.* ]]; then
  echo "Making zsh the default shell"
  chsh -s $(which zsh)
fi

# oh my zsh install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# colour themes!
git clone git://github.com/altercation/solarized.git ~/.config/github.com/altercation/solarized

# vim setup
# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# run the plugin installation
vim +PluginInstall +qall

