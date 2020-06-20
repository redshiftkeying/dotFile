#!/bin/bash

# 获取linux发行版名称
function install_on_linux()
{
    if grep -Eq "Ubuntu" /etc/*-release; then
      install_on_ubuntu
    elif grep -Eq "Deepin" /etc/*-release; then
        echo "Deepin 暂不支持"
    elif grep -Eq "LinuxMint" /etc/*-release; then
        echo "LinuxMint 暂不支持"
    elif grep -Eq "elementary" /etc/*-release; then
        echo "elementaryOS 暂不支持"
    elif grep -Eq "Debian" /etc/*-release; then
        install_on_debian
    elif grep -Eq "Kali" /etc/*-release; then
        echo "Kali 暂不支持"
    elif grep -Eq "CentOS" /etc/*-release; then
        echo "CentOS 暂不支持"
    elif grep -Eq "fedora" /etc/*-release; then
        echo "fedora 暂不支持"
    elif grep -Eq "openSUSE" /etc/*-release; then
        echo "openSUSE 暂不支持"
    elif grep -Eq "Arch Linux" /etc/*-release; then
        echo "ArchLinux 暂不支持"
    elif grep -Eq "ManjaroLinux" /etc/*-release; then
        echo "ManjaroLinux 暂不支持"
    else
        echo "Unknow 暂不支持"
    fi
}
# copy文件公用
function f_copy_to_backup()
{
  filename=$1
  if [ -f $filename ]; then
    cp $filename ${PWD}/backup/
  fi
}

# 备份文件
function backup_files()
{
  if [ ! -d ${PWD}/backup/ ];then
    mkdir ${PWD}/backup/
    # zsh backup
    f_copy_to_backup ~/.zshrc #cp ~/.zshrc ${PWD}/backup/
    # vim & nvim backup
    f_copy_to_backup ~/.vimrc #cp ~/.vimrc ${PWD}/backup/
    f_copy_to_backup ~/.vim/.editorconfig #cp ~/.vim/.editorconfig ${PWD}/backup/
    f_copy_to_backup ~/.config/nvim/init.vim #cp ~/.config/nvim/init.vim ${PWD}/backup/
    # git backup
    f_copy_to_backup ~/.gitconfig #cp ~/.gitconfig ${PWD}/backup/
  fi
}

# 拷贝文件
function copy_files()
{
  # vim
  rm -rf ~/.vimrc
  ln -s ${PWD}/vim/vimrc.symlink ~/.vimrc
  ln -s ${PWD}/vim/config ~/.vim/config
  # nvim
  rm -rf ~/.config/nvim
  mkdir -p ~/.config/nvim
  ln -s ${PWD}/vim/vimrc.symlink ~/.config/nvim/init.vim
  ln -s ${PWD}/vim/coc-settings.json ~/.config/nvim/coc-settings.json
  # zsh
  rm ~/.zshrc
  rm -rf ~/.antigen
  mkdir -p ~/.antigen
  ln -s ${PWD}/assets/antigen.zsh ~/.antigen/antigen.zsh
  ln -s ${PWD}/zsh/zshrc.symlink ~/.zshrc
  # git
  rm ~/.gitconfig
  if [ -f ~/.git-commit-template ];then
    rm ~/.git-commit-template
  fi
  ln -s ${PWD}/git/gitconfig ~/.gitconfig
  ln -s ${PWD}/git/git-commit-template ~/.git-commit-template

}

# 安装插件
function download_plug()
{
  if [ ! -d ~/.vim/autoload/plug.vim/ ];then
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  fi
}

# 安装vim插件
function install_vim_plugin()
{
  vim -c "PlugInstall" -c "q" -c "q"
  vim -c "GoInstallBinaries" -c "q" -c "q"
  vim -c 'CocInstall -sync coc-json coc-go coc-css coc-flutter coc-git coc-highlight coc-spell-checker coc-sql coc-eslint coc-vimlsp coc-html|q'
  add_editorconfig_config
}

# 添加配置 editorconfig
function add_editorconfig_config()
{
  rm ~/.vim/.editorconfig
  ln -s ${PWD}/vim/editorconfig ~/.vim/.editorconfig
}

# Debian 安装
function install_on_debian()
{
  # 安装平台依赖
  sudo apt-get update -qq
  sudo apt-get install python3-dev python3-pip python3-setuptools neovim cmake git -yqq
  backup_files
  copy_files
  download_plug
  install_vim_plugin
}

# Ubuntu 安装
function install_on_ubuntu()
{
  # 安装平台依赖
  sudo apt-get update -qq
  sudo apt-get install python3-dev python3-pip python3-setuptools neovim cmake git -yqq
  backup_files
  copy_files
  download_plug
  install_vim_plugin
}

# macos 安装
function install_on_mac()
{
  # 安装平台依赖
  brew install vim python3 gcc cmake ctags-exuberant curl ack neovim golang
  backup_files
  copy_files
  download_plug
  install_vim_plugin
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
