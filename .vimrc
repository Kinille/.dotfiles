" Makes the line numbers appear at the left
set number
" Sets automatic closing brackets (something I like)
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Set encoding to be utf-8
"set encoding=utf-8

" Set indentation standard
set autoindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

" Set wrapping settings
set wrap!

" Make cursor a | when in insert mode
au InsertEnter * silent execute "!echo -en \<esc>[5 q"
au InsertLeave * silent execute "!echo -en \<esc>[2 q"

" Merge the system clipboard registers (make vim use plus register)
set clipboard=unnamedplus


""""""""""""""""""""""""""""""""""""""""
"           Python Specific            "
""""""""""""""""""""""""""""""""""""""""
" Set <F9> to run python script within vim
nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>

" auto add shebang when creating a python script
autocmd BufNewFile *.py norm i#!/usr/bin/env python3
autocmd BufNewFile *.py norm o

" Settings if file ends in .py
au BufNewFile,BufRead *.py
    \ set autoindent |
    \ set shiftwidth=4 |
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set encoding=utf-8


""""""""""""""""""""""""""""""""""""""""
"             HTML Specific            "
""""""""""""""""""""""""""""""""""""""""

au BufNewFile,BufRead *.html
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2
