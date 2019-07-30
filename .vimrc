set nocompatible              " be iMproved, required
filetype off                  " required
" 
" " set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" " let Vundle manage Vundle, required
" Plugin 'VundleVim/Vundle.vim'
" 
" " Keep Plugin commands between vundle#begin/end.
" " Plugin 'Valloric/YouCompleteMe' " commented b/c datasci03 doesn't have cmake installed
" 
" " All of your Plugins must be added before the following line
" call vundle#end()            " required
" filetype plugin indent on    " required

"Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to  auto-approve removal

" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line


" Personal Settings
noremap <Space> <Nop>
let mapleader=" "
set number! relativenumber!
syntax on
colorscheme molokai
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
let g:netrw_winsize = 15

" etc
set nowrap
set scrolloff=5
