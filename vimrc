set nocompatible
filetype off

" Vundle / Plugin Stuff
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ap/vim-buftabline'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'yggdroot/indentline'

call vundle#end()

let g:polyglot_disabled=['jsx']
let g:airline_theme='onedark'
let g:indentLine_leadingSpaceChar='·'
let g:indentLine_leadingSpaceEnabled=1

" Personal Settings
set colorcolumn=80
noremap <Space> <Nop>
let mapleader=" "
set number! relativenumber!
colorscheme onedark
"colorscheme molokai
"colorscheme monokai
set tabstop=4
set shiftwidth=4
set expandtab

" ctrl+j/k moves lines up or down
let g:C_Ctrl_j = 'off'
let g:C_Ctrl_h = 'off'
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
set hidden

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
nnoremap <silent> <C-l> :nohl<CR><C-l>
map N Nzz
map n nzz

set list
set listchars=eol:¬
filetype plugin indent on
syntax on
