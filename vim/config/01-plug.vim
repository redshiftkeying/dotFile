call plug#begin('~/.vim/plugged')

" golang plug
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" tagbar
Plug 'majutsushi/tagbar'

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

" auto fill code
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" some setting Todo move to another config file

" config plug
nmap <F8> :TagbarToggle<CR>

