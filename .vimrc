set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set nobackup
set nowritebackup
set noswapfile
set nocompatible
set shell=/bin/bash
set viminfo='20,<1000
set backspace=indent,eol,start
set whichwrap+=<,>,[,]

filetype plugin indent on

syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'bogado/file-line'
Plugin 'yuezk/vim-js'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-rails'
Plugin 'vim-crystal/vim-crystal'

call vundle#end()

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

autocmd BufWritePre * :call TrimWhitespace()
