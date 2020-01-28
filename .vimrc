" Set Leader to comma
let mapleader="," 
set nopaste

" Turn hybrid line numbers on
set number relativenumber
set nu rnu

" Highlight other lines as grey
highlight LineNr ctermfg=grey

" Set alt o to map to control o
imap <ALT+o> <C-o>

" Make it so that I don't have to use shift to get colon in normal mode
nnoremap ; :

" make <leader> c and <leader> v use copy and paste of the '+' register from the system clipboard
nnoremap <leader>c "+yy
nnoremap <leader>v "+p

" Sets automatic closing brackets (something I thought I liked)
" inoremap { {}<left>
" inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O

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
au InsertEnter * silent execute "!echo -en \<esc>[6 q"
au InsertLeave * silent execute "!echo -en \<esc>[2 q"

" Merge the system clipboard registers (make vim use plus register)
" set clipboard=unnamedplus


""""""""""""""""""""""""""""""""""""""""
"           Python Specific            "
""""""""""""""""""""""""""""""""""""""""

" Set <F9> to run python script within vim
autocmd BufRead *.py nmap <buffer> <F9> <ESC>:w<CR>:!python3 "%"<CR>
autocmd BufRead *.py imap <buffer> <F9> <ESC>:w<CR>:!python3 "%"<CR>

" auto add shebang when creating a python script
autocmd BufNewFile *.py norm i#!/usr/bin/env python3
autocmd BufNewFile *.py norm o
autocmd BufNewFile *.py norm o
autocmd BufNewFile *.py start

" Settings if file ends in .py
au BufNewFile,BufRead *.py
    \ set autoindent |
    \ set shiftwidth=4 |
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set expandtab |
    \ set encoding=utf-8

" Should have textwidth as 79, but it's annoying, so I turned it off
"    \ set textwidth=79 |


""""""""""""""""""""""""""""""""""""""""
"             HTML Specific            "
""""""""""""""""""""""""""""""""""""""""

au BufNewFile,BufRead *.html
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2


""""""""""""""""""""""""""""""""""""""""
"             WIKI Specific            "
""""""""""""""""""""""""""""""""""""""""

au BufNewFile,BufRead *.wiki
    \ set wrap |
    \ set linebreak |
    \ set display+=lastline |
    \ set breakindent |
    \ set nocompatible |
    \ filetype plugin on |
    \ syntax on

""""""""""""""""""""""""""""""""""""""""
"            VIM-Plug Stuff            "
""""""""""""""""""""""""""""""""""""""""

call plug#begin()

Plug 'vimwiki/vimwiki'

call plug#end()

" Settings for vimwiki compatability
" Change default wiki location
let g:vimwiki_list = [{'path': '~/.wwiki/'}]

""""""""""""""""""""""""""""""""""""""""
"       Plugins in ~/.vim/plugin       "
""""""""""""""""""""""""""""""""""""""""
runtime plugin/dragvisuals.vim          
                                        
vmap  <expr>  <LEFT>   DVB_Drag('left')
vmap  <expr>  <RIGHT>  DVB_Drag('right')
vmap  <expr>  <DOWN>   DVB_Drag('down')
vmap  <expr>  <UP>     DVB_Drag('up')
vmap  <expr>  D        DVB_Duplicate()


""""""""""""""""""""""""""""""""""""""""
"       Define Important Digraphs      "
""""""""""""""""""""""""""""""""""""""""

"Symbols --------------------------- {{{
"Calculus
execute 'digraphs in ' . 0x222B| " ∫
execute 'digraphs su ' . 0x2211| " ∑


"Set Theory
execute 'digraphs au ' . 0x2200| " ∀
execute 'digraphs xo ' . 0x2295| " ⊕
execute 'digraphs u= ' . 0x2286| " ⊆
execute 'digraphs =u ' . 0x2287| " ⊇
execute 'digraphs u- ' . 0x2208| " ∈
execute 'digraphs -u ' . 0x220B| " ∋
execute 'digraphs pm ' . 0x00B1| " ±
execute 'digraphs eq ' . 0x2261| " ≡
execute 'digraphs se ' . 0x2254| " ≔
execute 'digraphs u< ' . 0x2282| " ⊂
execute 'digraphs u> ' . 0x2283| " ⊃
execute 'digraphs nt ' . 0x22C2| " ⋂
execute 'digraphs un ' . 0x22C3| " ⋃

execute 'digraphs lt ' . 0x2264| " ≤
execute 'digraphs gt ' . 0x2265| " ≥

"Superscripts ---------------------- {{{
"Note: In unicode there is no superscripts for the following characters: C,F,Q,X,Y,Z,q,
execute "digraphs 0S " . 0x2070
execute "digraphs 1S " . 0x00B9
execute "digraphs 2S " . 0x00B2
execute "digraphs 3S " . 0x00B3
execute "digraphs 4S " . 0x2074
execute "digraphs 5S " . 0x2075
execute "digraphs 6S " . 0x2076
execute "digraphs 7S " . 0x2077
execute "digraphs 8S " . 0x2078
execute "digraphs 9S " . 0x2079
execute "digraphs +S " . 0x207A
execute "digraphs -S " . 0x207B
execute "digraphs <S " . 0x02C2
execute "digraphs >S " . 0x02C3
execute "digraphs /S " . 0x02CA
execute "digraphs ^S " . 0x02C4
execute "digraphs (S " . 0x207D
execute "digraphs )S " . 0x207E
execute "digraphs .S " . 0x02D9
execute "digraphs =S " . 0x207C
execute "digraphs aS " . 0x1D43
execute "digraphs bS " . 0x1D47
execute "digraphs cS " . 0x1D9C
execute "digraphs dS " . 0x1D48
execute "digraphs eS " . 0x1D49
execute "digraphs fS " . 0x1DA0
execute "digraphs gS " . 0x1D4D
execute "digraphs hS " . 0x02B0
execute "digraphs iS " . 0x2071
execute "digraphs jS " . 0x02B2
execute "digraphs kS " . 0x1D4F
execute "digraphs lS " . 0x02E1
execute "digraphs mS " . 0x1D50
execute "digraphs nS " . 0x207F
execute "digraphs oS " . 0x1D52
execute "digraphs pS " . 0x1D56
execute "digraphs rS " . 0x02B3
execute "digraphs sS " . 0x02E2
execute "digraphs tS " . 0x1D57
execute "digraphs uS " . 0x1D58
execute "digraphs vS " . 0x1D5B
execute "digraphs wS " . 0x02B7
execute "digraphs xS " . 0x02E3
execute "digraphs yS " . 0x02B8
execute "digraphs zS " . 0x1DBB
execute "digraphs AS " . 0x1D2C
execute "digraphs BS " . 0x1D2E
execute "digraphs DS " . 0x1D30
execute "digraphs ES " . 0x1D31
execute "digraphs GS " . 0x1D33
execute "digraphs HS " . 0x1D34
execute "digraphs IS " . 0x1D35
execute "digraphs JS " . 0x1D36
execute "digraphs KS " . 0x1D37
execute "digraphs LS " . 0x1D38
execute "digraphs MS " . 0x1D39
execute "digraphs NS " . 0x1D3A
execute "digraphs OS " . 0x1D3C
execute "digraphs PS " . 0x1D3E
execute "digraphs RS " . 0x1D3F
execute "digraphs TS " . 0x1D40
execute "digraphs US " . 0x1D41
execute "digraphs VS " . 0x2C7D
execute "digraphs WS " . 0x1D42
"}}}

"Subscripts ---------------------- {{{
"Note: In Unicode there is no subscripts for the following characters: (all caps), b,c,d,f,g,q,w,y,z
execute 'digraphs 0s ' . 0x2080
execute 'digraphs 1s ' . 0x2081
execute 'digraphs 2s ' . 0x2082
execute 'digraphs 3s ' . 0x2083
execute 'digraphs 4s ' . 0x2084
execute 'digraphs 5s ' . 0x2085
execute 'digraphs 6s ' . 0x2086
execute 'digraphs 7s ' . 0x2087
execute 'digraphs 8s ' . 0x2088
execute 'digraphs 9s ' . 0x2089
execute 'digraphs +s ' . 0x208A
execute 'digraphs -s ' . 0x208B
execute 'digraphs /s ' . 0x02CF
execute 'digraphs (s ' . 0x208D
execute 'digraphs )s ' . 0x208E
execute 'digraphs ^s ' . 0x2038
execute 'digraphs =s ' . 0x208C
execute 'digraphs as ' . 0x2090
execute 'digraphs es ' . 0x2091
execute 'digraphs hs ' . 0x2095
execute 'digraphs is ' . 0x1D62
execute 'digraphs ks ' . 0x2096
execute 'digraphs ls ' . 0x2097
execute 'digraphs ms ' . 0x2098
execute 'digraphs ns ' . 0x2099
execute 'digraphs os ' . 0x2092
execute 'digraphs ps ' . 0x209A
execute 'digraphs rs ' . 0x1D63
execute 'digraphs ss ' . 0x209B
execute 'digraphs ts ' . 0x209C
execute 'digraphs us ' . 0x1D64
execute 'digraphs vs ' . 0x1D65
execute 'digraphs xs ' . 0x2093
"}}}
