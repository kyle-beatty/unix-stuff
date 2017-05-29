" Personal preferences for indentation
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent

filetype plugin indent on

set number
syntax on
set background=dark

" Key mappings
let mapleader = "-"
let maplocalleader = ";"

" These make it easier to add lines to the vimrc while editing a file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

inoremap jk <esc>
inoremap <esc> <nop>

nnoremap <leader>- ddp
nnoremap <leader>_ ddkP

nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" Abbreviations
iabbrev @n Kyle Beatty
iabbrev @@ w.kyle.beatty@protonmail.com
iabbrev @g www.github.com/Nestor15
