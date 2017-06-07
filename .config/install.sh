#!/usr/bin/env bash

# install packages 
if [ "$(uname)" = "Linux" ]; then
  sudo apt-get update
  sudo apt-get -y install zsh
fi

## git SETUP
# TODO: put this into gitconfig
git config --global user.name "Mike White"
git config --global user.email "mike.j.white@gmail.com"
git config --global github.user "mikejwhite"

# squelsh git push messages for simple behaviour
git config --global push.default simple

##SHELL SETUP
# set zsh to be the shell
if ! [[$SHELL =~ .*zsh.* ]]; then
  echo "Making zsh the default shell"
  sudo chsh $(whoami) -s $(which zsh)
fi

## oh my zsh install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# the oh my zsh install wipes out the install zshrc, move it
# back
mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc

## colour themes!
git clone git://github.com/altercation/solarized.git ~/.config/github.com/altercation/solarized

## vim setup
# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# run the plugin installation
vim +PluginInstall +qall

