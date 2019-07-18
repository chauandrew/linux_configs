set nocompatible
filetype off
" Set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Autocompletion plugin
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

" Personal Settings
set tabstop=4
set shiftwidth=4
set expandtab
syntax enable
set t_ut= " Fix background color issues
set termguicolors
colorscheme molokai
set number! relativenumber!
