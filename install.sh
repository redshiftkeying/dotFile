#!/bin/bash

# different platform
# 安装mac平台必要软件
function install_prepare_software_on_mac()
{
    brew install vim python3 gcc cmake ctags-exuberant curl ack
}

# 获取linux发行版名称
function get_linux_distro()
{
    if grep -Eq "Ubuntu" /etc/*-release; then
        echo "Ubuntu"
    elif grep -Eq "Deepin" /etc/*-release; then
        echo "Deepin"
    elif grep -Eq "LinuxMint" /etc/*-release; then
        echo "LinuxMint"
    elif grep -Eq "elementary" /etc/*-release; then
        echo "elementaryOS"
    elif grep -Eq "Debian" /etc/*-release; then
        echo "Debian"
    elif grep -Eq "Kali" /etc/*-release; then
        echo "Kali"
    elif grep -Eq "CentOS" /etc/*-release; then
        echo "CentOS"
    elif grep -Eq "fedora" /etc/*-release; then
        echo "fedora"
    elif grep -Eq "openSUSE" /etc/*-release; then
        echo "openSUSE"
    elif grep -Eq "Arch Linux" /etc/*-release; then
        echo "ArchLinux"
    elif grep -Eq "ManjaroLinux" /etc/*-release; then
        echo "ManjaroLinux"
    else
        echo "Unknow"
    fi
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
  add_editorconfig_config
}

# 添加配置 editorconfig
function add_editorconfig_config()
{
  rm ~/.vim/.editorconfig
  ln -s ${PWD}/vim/editorconfig ~/.vim/.editorconfig
}

# zsh install
function install_antigen()
{
  rm ~/.zshrc
  rm -rf ~/.antigen
  mkdir -p ~/.antigen
  curl -L git.io/antigen > ~/.antigen/antigen.zsh
  ln -s ${PWD}/zsh/zshrc.symlink ~/.zshrc
}

# noevin 安装配置
function install_nvim_configure()
{
  rm -rf ~/.config/nvim
  mkdir -p ~/.config/nvim
  ln -s ${PWD}/vim/vimrc.symlink ~/.config/nvim/init.vim
}
# Linux 安装
function install_on_linux()
{
  copy_files
  downlaod_vundle
  install_vim_plugin
  install_antigen
  install_nvim_configure
}

# macos 安装
function install_on_mac()
{
  install_prepare_software_on_mac
  copy_files
  downlaod_vundle
  install_vim_plugin
  install_antigen
  install_nvim_configure
}

# main function
function main()
{
  if [ $(uname) == "Darwin" ];then
        install_on_mac
      elif [ $(uname) == "Linux" ];then
        install_on_linux
      else
        echo "System not found "
  fi
}

# main begin
main
