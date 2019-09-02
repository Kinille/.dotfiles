" Makes the line numbers appear at the left
set number

" Sets automatic closing brackets (something I like)
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Set indentation standard
set autoindent
set shiftwidth=4

set tabstop=4
" Set wrapping settings
set wrap!

" Make cursor a | when in insert mode
au InsertEnter * silent execute "!echo -en \<esc>[5 q"
au InsertLeave * silent execute "!echo -en \<esc>[2 q"

" Merge the system clipboard registers (make vim use plus register)
set clipboard=unnamedplus

" Set <F9> to run python script within vim
nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>

" auto add shebang when creating a python script
autocmd BufNewFile *.py norm i#!/usr/bin/env python3
