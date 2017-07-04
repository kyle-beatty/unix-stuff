" Basic preferences {{{
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent

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
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Puts a word in quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
" }}}

" OPERATOR-PENDING MAPPINGS {{{
" http://learnvimscriptthehardway.stevelosh.com/chapters/15.html

" Changes text within the [n]ext or [l]ast parentheses, respectively
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>
" Same as above but including the parentheses
onoremap an( :<c-u>normal! f(va(<cr>
onoremap al( :<c-u>normal! F)va(<cr>

" Changes text within the [n]ext or [l]ast braces, respectively
onoremap in{ :<c-u>normal! f{vi{<cr>
onoremap il{ :<c-u>normal! F}vi{<cr>
" Above, including { }
onoremap an{ :<c-u>normal! f{va{<cr>
onoremap al{ :<c-u>normal! F}va{<cr>

" Changes text within the [n]ext or [l]ast brackets, respectively
onoremap in[ :<c-u>normal! f[vi[<cr>
onoremap il[ :<c-u>normal! F]vi[<cr>
" Above, including [ ]
onoremap an[ :<c-u>normal! f[va[<cr>
onoremap al[ :<c-u>normal! F]va[<cr>
" }}}

" INSERT MODE MAPPINGS {{{

" Use jk instead of the harder to reach <esc> to escape insert mode
inoremap jk <esc>
inoremap <esc> <nop>
" }}}

" ABBREVIATIONS {{{
iabbrev @@n Kyle Beatty
iabbrev @@@ w.kyle.beatty@protonmail.com
iabbrev @@g www.github.com/Nestor15
" }}}

"""""""""""""""""
" FILETYPE JAZZ "
"""""""""""""""""
filetype plugin indent on

" Vimscript filetype settings {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" LANGUAGE-AGNOSTIC FUNCTIONS {{{

" Map local leader and c to comment out a line
augroup comment
    autocmd!
    autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
    autocmd FileType c      nnoremap <buffer> <localleader>c I//<esc>
augroup END

" Map local leader and h to insert hashbang
augroup hashbang
    autocmd!
    autocmd FileType python  nnoremap <buffer> <localleader>h ggO#!/usr/bin/python3<esc>
    autocmd FileType bash,sh nnoremap <buffer> <localleader>h gg0#!/bin/bash<esc>
augroup END

" Language-agnostic if-statement
augroup if_statement
    autocmd!
    autocmd FileType python :iabbrev <buffer> iff if:<left>
    autocmd FileType C,Java :iabbrev <buffer> iff if()<left>
augroup END

" Create new 'text-objects' for markdown headings
augroup headings
    autocmd!
    autocmd FileType markdown,text onoremap <buffer> ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
    autocmd FileType markdown,text onoremap <buffer> ah :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rg_vk0"<cr>
augroup END
" }}}
