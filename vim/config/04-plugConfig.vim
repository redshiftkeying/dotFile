" =========================
"" vim-go 插件的设置
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
" let g:go_snippet_engine = "neosnippet"
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

" nerdtree 的快捷键绑定
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
"" alir-line  的设置
let g:airline_theme='luna'
let g:airline_powerline_fonts = 1
let NERDTreeIgnore=['\.vim$', '\~$', '\.git$', '.DS_Store']

" Close nerdtree and vim on close file
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" vim-rainbow 设置
let g:rainbow_active = 1

" vim-javascript 设置
let javascript_enable_domhtmlcss = 1

let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_key_invoke_completion = '<c-z>'

" React jsx 设置
let g:jsx_ext_required = 1
let g:jsx_pragma_required = 1

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
" protobuf 设置
augroup filetype
  au! BufRead,BufNewFile *.proto setfiletype proto
augroup end
" prettier 设置
let g:prettier#quickfix_enable = 0
let g:prettier#autoformat = 0
autocmd BufWritePre,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
