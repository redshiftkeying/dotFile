" =========================
"" vim-go 插件的设置
" =========================
" 保存时自动imports
let g:go_fmt_command = "goimports"
" 插件的快捷键绑定
" au FileType go nmap <Leader>s <Plug>(go-implements)
" au FileType go nmap <Leader>i <Plug>(go-info)
" au FileType go nmap <Leader>gd <Plug>(go-doc)
" au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>r <Plug>(go-run)
" au FileType go nmap <leader>b <Plug>(go-build)
" au FileType go nmap <leader>t <Plug>(go-test)
" au FileType go nmap <leader>c <Plug>(go-coverage)
" au FileType go nmap <Leader>ds <Plug>(go-def-split)
" au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
" au FileType go nmap <Leader>dt <Plug>(go-def-tab)
" au FileType go nmap <Leader>e <Plug>(go-rename)
" au FileType go nmap <Leader>l <Plug>(go-metalinter)
" au FileType go nmap <leader>dt  <Plug>(go-test-compile)

let g:go_version_warning = 0
let g:go_fmt_fail_silently = 0
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_term_enabled = 1
let g:go_highlight_space_tab_error = 0
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_extra_types = 0
let g:go_highlight_operators = 0
let g:go_highlight_build_constraints = 1

" go文件格式的设置 与gofmt一致
au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4
augroup go
  autocmd!
  autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
  autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
  autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
augroup END

"" Edit tools configure
" fuzzy search tool
map <leader>f :Files<CR>
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" nerdtree key bind
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

" tagbar key bind
nmap <F8> :TagbarToggle<CR>

"" coc-nvim settings
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

"" air-line  的设置
let g:airline_theme='luna'
let g:airline_powerline_fonts = 1

" ----------------------------------------- "
"  " File Type settings               "
" ----------------------------------------- "

au BufNewFile,BufRead *.vim setlocal noet ts=4 sw=4 sts=4
au BufNewFile,BufRead *.txt setlocal noet ts=4 sw=4
au BufNewFile,BufRead *.md setlocal spell noet ts=4 sw=4
au BufNewFile,BufRead *.yml,*.yaml setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.cpp setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.hpp setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.json setlocal expandtab ts=2 sw=2
autocmd BufNewFile,BufReadPost *.md setl ts=4 sw=4 sts=4 expandtab
autocmd FileType dockerfile set noexpandtab

" protobuf settings
augroup filetype
  au! BufRead,BufNewFile *.proto setfiletype proto
augroup end

" prettier settings
let g:prettier#quickfix_enable = 0
let g:prettier#autoformat = 0
autocmd BufWritePre,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
