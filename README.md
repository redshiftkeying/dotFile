# 版本说明

此配置要求 vim 8 以上版本 或 nvim 0.4 版本

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

## youCompleteMe 的额外安装

apt install cmake  
cd ~/.vim/bundle/YouCompleteMe  
python3 ./install.py --go-completer

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
