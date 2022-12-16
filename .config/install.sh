#!/usr/bin/env bash

# install packages 
if [ "$(uname)" = "Linux" ]; then
  sudo apt-get update
  sudo apt-get -y install zsh
fi

##SHELL SETUP
# set zsh to be the shell
if ! [[$SHELL =~ .*zsh.* ]]; then
  echo "Making zsh the default shell"
  sudo chsh $(whoami) -s $(which zsh)
fi

## oh my zsh install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# the oh my zsh install wipes out the install zshrc, move it
# back
mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc

## colour themes!
git clone https://github.com/altercation/solarized ~/.config/github.com/altercation/solarized

## vim setup
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall +qall
