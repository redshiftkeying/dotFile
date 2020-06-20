# Release notes

此配置要求 vim 8 以上版本 或 nvim 0.4.3 版本

nodejs >= 10.12  
并且安装 yarn

# zhsrc

### powerline 字体

git clone https://github.com/powerline/fonts.git  
cd fonts  
./insta.sh

### thefuck 插件

brew install thefuck  
apt install python3-dev python3-pip python3-setuptools  
pip3 install thefuck  
pip3 install thefuck --upgrade

# vimrc

### prettier 插件安装

npm i -g prettier --registry=https://registry.npm.taobao.org

### js-beautify 插件安装

npm i js-beautify -g --registry=https://registry.npm.taobao.org

# golang 1.13 设置

go env -w GOPROXY=https://goproxy.cn,direct

# FQA

1.出现：

```
zsh compinit: insecure directories, run compaudit for list.
Ignore insecure directories and continue [y] or abort compinit [n]?
```

使用：

```
sudo chmod -R 755 ~/.antigen/bundles
```

使用 antigen update 时候需要给 w 的权限

```
sudo chmod -R 765 ~/.antigen/bundles
```

2.统一版本使用 python3  
检查 vim --version 是否支持 python3 以及使用 python3 编译 ycm

3.neovim 支持

```
brew install neovim
brew install python3
pip3 install neovim --upgrade
```
## new temp

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

ln -s ${PWD}/vim/config ~/.vim/config

### FQA
neovim安装coc缺失bash-language-server   
npm i -g bash-language-server
