#!/bin/bash

# remove file
function remove_links()
{
  # vim
  rm -rf ~/.vimrc
  # nvim
  rm -rf ~/.config/nvim/init.vim
  # zsh
  rm ~/.zshrc
  rm -rf ~/.antigen
  # git
  rm ~/.gitconfig
  rm ~/.git-commit-template
}
# copy from backup
function f_copy_from_backup()
{
  filename=${PWD}/backup/$1
  if [ -f $filename ]; then
    cp ${PWD}/backup/$1 $2
  fi
}

# recovery
function recover()
{
  if [ -d "${PWD}/backup/" ];then
    f_copy_from_backup .zshrc ~/.zshrc
    f_copy_from_backup .vimrc ~/.vimrc
    f_copy_from_backup init.vim ~/.config/nvim/init.vim
    f_copy_from_backup .gitconfig ~/.gitconfig
  else
    echo "找不到备份！"
  fi
}
function main()
{
  remove_links
  recover
  rm -rf ${PWD}/backup/
}

main
