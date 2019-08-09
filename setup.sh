#!/bin/sh

DOT_FILES=(.vimrc .vimrc.setting.vim .vimrc.plugin.vim .bash_profile .zshrc )

BREW_FORMULAS=(
git
mysql
peco
phantomjs
rbenv
redis
ruby-build
the_silver_searcher
tree
vim
wget
zsh
go
autojump
imagemagick
memcached
mongodb
openssl
readline
)

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
for formula in ${BREW_FORMULAS[@]}
do
  brew install $formula
done

for file in ${DOT_FILES[@]}
do
  ln -fs $HOME/dotfiles/$file $HOME/$file
done
mkdir ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
vim -c ':NeoBundleInstall'

zsh

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md; do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done


chsh -s /bin/zsh

echo 'Finish!'
