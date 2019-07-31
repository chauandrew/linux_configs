set nocompatible
filetype off
" Set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Autocompletion plugin
Plugin 'Valloric/YouCompleteMe'

" Syntax Highlighting
Plugin 'sheerun/vim-polyglot'

" Display line
Plugin 'vim-airline/vim-airline'

call vundle#end()
filetype plugin indent on


" Personal Settings
noremap <Space> <Nop>
let mapleader=" "
set number! relativenumber!
syntax on
colorscheme onedark
" colorscheme molokai
" colorscheme monokai
set tabstop=4
set shiftwidth=4
set expandtab

" ctrl+j/k moves lines up or down
let g:C_Ctrl_j = 'off'
nnoremap <C-k> :move-2<CR>
nnoremap <C-j> :move+1<CR> 
" Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi
" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Buffer settings
nnoremap <Leader>l :bn<CR>
nnoremap <Leader>h :bp<CR>
nnoremap bd: bp\|bd #<CR> 
nnoremap bd!: bp!\|bd! #<CR> 
set autowrite

" Settings to toggle explorer
let g:NetrwIsOpen=0

function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i 
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Vexplore
    endif
endfunction
" Button to toggle explorer
noremap <silent> <Leader>e :call ToggleNetrw()<CR>
" Explorer settings
let g:netrw_banner = 0
let g:netrw_liststyle = 1
let g:netrw_browse_split = 4 
let g:netrw_altv = 1
let g:netrw_winsize = 20 

" etc
set nowrap
set scrolloff=5
set t_ut=""
