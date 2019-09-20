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
./install.py --golang-completer   
./install.py --all