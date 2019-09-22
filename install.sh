#!/bin/bash

# base function
# 获取平台类型，mac还是linux平台
function get_platform_type()
{
    echo $(uname)
}

# different platform
# 安装mac平台必要软件
function install_prepare_software_on_mac()
{
    brew install vim gcc cmake ctags-exuberant curl ack
}

# 拷贝文件
function copy_files()
{
    rm -rf ~/.vimrc
    ln -s ${PWD}/vim/vimrc.symlink ~/.vimrc
}

# 安装插件
function download_vundle()
{
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
}

# 安装vim插件
function install_vim_plugin()
{
  vim -c "PlugInstall" -c "q" -c "q"
}

# zsh install
function install_antigen()
{
  rm ~/.zshrc
  ln -s ${PWD}/zsh/zshrc.symlink ~/.zshrc
}

# Linux 安装
function install_on_linux()
{
  copy_files
  downlaod_vundle
  install_vim_plugin
  install_antigen
}

# macos 安装
function install_on_mac()
{
  install_prepare_software_on_mac
  copy_files
  downlaod_vundle
  install_vim_plugin
  install_antigen
}

# main function
function main()
{
  type = 'get_platform_type'
  if [ ${type} == "Darwin" ]; then
        install_on_mac
  else [ ${type} == "Linux" ];
        install_on_linux
  fi
}

# main begin
main
