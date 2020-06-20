""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GVIM
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256  " 256色配色方案
set guifont=Go\ Mono\ for\ Powerline:h12 " 设置GVIM或MVIM的字体
set noerrorbells        " 关闭错误提示音
set nobackup            " 不要备份文件
set linespace=0         " 字符间插入的像素行数目
set shortmess=atI       " 启动的时候不显示那个援助索马里儿童的提示
set novisualbell        " 不要闪烁
set mouse=a             " 可以在buffer的任何地方 ->
set selection=exclusive         " 使用鼠标（类似office中 ->
set selectmode=mouse,key        " 在工作区双击鼠标定位）
set cursorline                  " 突出显示当前行
set nu!   " 显示行号
set whichwrap+=<,>,h,l        " 允许backspace和光标键跨越行边界
set completeopt=longest,menu  " 按Ctrl+N进行代码补全
set noswapfile                " 设置没有swap文件
set autowrite                 " 设置自动保存
set autoread                  " 自动重载改动的文件
set ttimeoutlen=0        " 设置<ESC>键响应时间
set confirm             " 在处理未保存或只读文件的时候，弹出确认
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NeoVim 设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('nvim')
  if has('mac')
   let g:python3_host_prog = '/usr/local/bin/python3'
   let g:python_host_prog = '/usr/local/bin/python'
  else
   let g:python3_host_prog = '/usr/bin/python3'
   let g:python_host_prog = '/usr/bin/python'
  endif
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本格式和排版
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set list                        " 显示Tab符，->
set listchars=tab:\|\ ,         " 使用一高亮竖线代替
set tabstop=2           " 制表符为2
set autoindent          " 自动对齐（继承前一行的缩进方式）
set smartindent         " 智能自动缩进（以c程序的方式）
set shiftwidth=2        " 换行时行间交错使用2个空格
set expandtab           " 将制表符替代为空格
"set cindent         " 使用C样式的缩进
"set smarttab            " 在行和段开始处使用制表符
"set nowrap          " 不要换行显示一行
set ts=2
set autoindent

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 状态行(命令行)的显示
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ruler                " 右下角显示光标位置的状态行
set laststatus=2         " 开启状态栏信息
set wildmenu             " 增强模式中的命令行自动完成操作
set completeopt-=preview " 补全时不显示窗口，只显示补全列表
set showcmd              " 显示正在输入的命令

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gvim/macvim设置
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
  set guifont=Droid\ Sans\ Mono\ Nerd\ Font\ Complete:h18 " 设置字体
  set guioptions-=m           " 隐藏菜单栏
  set guioptions-=T           " 隐藏工具栏
  set guioptions-=L           " 隐藏左侧滚动条
  set guioptions-=r           " 隐藏右侧滚动条
  set guioptions-=b           " 隐藏底部滚动条
  set showtabline=0           " 隐藏Tab栏
  set guicursor=n-v-c:ver5    " 设置光标为竖线
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件相关
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fenc=utf-8
set encoding=utf-8      " 设置vim的工作编码为utf-8，如果源文件不是此编码，vim会进行转换后显示
set fileencoding=utf-8      " 让vim新建文件和保存文件使用utf-8编码
set fileencodings=utf-8,gbk,cp936,latin-1
filetype on                  " 侦测文件类型
filetype indent on               " 针对不同的文件类型采用不同的缩进格式
filetype plugin on               " 针对不同的文件类型加载对应的插件
syntax on                    " 语法高亮
filetype plugin indent on    " 启用自动补全


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 查找
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch                 " 开启高亮显示结果
set nowrapscan               " 搜索到文件两端时不重新搜索
set incsearch                " 开启实时搜索功能
" set ignorecase          " 搜索时大小写不敏感
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set mapleader
let mapleader = ","
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"--------启用代码折叠，用空格键来开关折叠
set foldenable           " 打开代码折叠
set foldmethod=syntax        " 选择代码折叠类型
set foldlevel=100            " 禁止自动折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc':'zo')<CR>

set nocompatible
filetype off
