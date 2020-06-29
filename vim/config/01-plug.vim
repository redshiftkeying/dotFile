call plug#begin('~/.vim/plugged')

" golang plug
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"" Bars
" tagbar
Plug 'majutsushi/tagbar'
" 安装 目录树 nerdtree 插件
Plug 'scrooloose/nerdtree'
" 可以使 nerdtree 的 tab 更加友好些
Plug 'jistr/vim-nerdtree-tabs'
" 可以在导航目录中看到 git 版本信息
Plug 'Xuyuanp/nerdtree-git-plugin'

" fuzzy search tool
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" theme plug

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" show any more space in the line end
Plug 'ntpeters/vim-better-whitespace'

"" Html plug
" Emmet
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" auto pairs
Plug 'jiangmiao/auto-pairs'
" rainbow
Plug 'luochen1990/rainbow'

" auto fill code
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
