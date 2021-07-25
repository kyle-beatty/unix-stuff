" Basic preferences {{{
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
set backspace=indent,eol,start

set number
syntax on
set background=dark

set encoding=utf-8
" }}}

" Code folding settings {{{
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2
" }}}

" Special command leaders {{{
let mapleader = "-"
let maplocalleader = ";"
" }}}

" NORMAL MODE MAPPINGS {{{

" Make it easier to add lines to the vimrc while editing a file
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" INSERT MODE MAPPINGS {{{

" Use jk instead of the harder to reach <esc> to escape insert mode
inoremap jk <esc>
inoremap <esc> <nop>
" }}}

" ABBREVIATIONS {{{
iabbrev @@n Kyle Beatty
iabbrev @@@ w.kyle.beatty@protonmail.com
iabbrev @@g www.github.com/kyle-beatty
" }}}

" Fancy characters {{{
iabbrev \'a à
iabbrev \e' é
" }}}

filetype plugin indent on

" Source local configuration
source ~/.vim/local.vim
