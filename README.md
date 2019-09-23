# zhsrc
## 安装依赖
### antigen.zsh 文件
curl -L git.io/antigen > antigen.zsh
### powerline 字体
git clone https://github.com/powerline/fonts.git   
cd fonts   
./insta.sh   
### thefuck 插件
brew install thefuck   
apt install python3-dev python3-pip python3-setuptools   
pip3 install thefuck   
pip3 install thefuck --upgrade

## TODO
1.flutter configure   
2.mac add brew linux add ubuntu\debian   
3.支持noevim的配额   

# vimrc
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
使用 antigen update 时候需要给w的权限
```
sudo chmod -R 765 ~/.antigen/bundles
```   
2.统一版本使用python3   
检查vim --version 是否支持python3以及使用python3 编译ycm   

