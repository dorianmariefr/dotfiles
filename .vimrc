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

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'bogado/file-line'
Plugin 'yuezk/vim-js'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-rails'
Plugin 'modille/groovy.vim'
Plugin 'alunny/pegjs-vim'
Plugin 'prettier/vim-prettier'
Plugin 'vim-crystal/vim-crystal'

call vundle#end()

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

autocmd BufWritePre * :call TrimWhitespace()

syntax on
filetype plugin indent on

set backspace=indent,eol,start
set whichwrap+=<,>,[,]

au BufReadPost Capfile set filetype=ruby
au BufReadPost *.prawn set filetype=ruby
au BufReadPost Podfile set filetype=ruby

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
