" PERSONAL VIMRC CONFIGS:
set nocompatible
filetype off

" Leader 
noremap <Space> <Nop>
let mapleader=" "

" Vundle / Plugin Stuff
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ap/vim-buftabline'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'yggdroot/indentline'
Plugin 'fatih/vim-go'
Plugin 'preservim/nerdtree'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

"Plugin Settings
let g:polyglot_disabled=['jsx']
let g:airline_theme='onedark'
let g:indentLine_leadingSpaceChar='·'
let g:indentLine_leadingSpaceEnabled=1
let g:gitgutter_map_keys = 0
nmap <Leader>ph <Plug>(GitGutterPreviewHunk)

" NerdTree
noremap <silent> <Leader>e :NERDTreeToggle<CR>
autocmd BufEnter NERD_tree* :LeadingSpaceDisable
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

 "BufTabLine better coloring
hi! link BufTabLineCurrent Visual
hi! link BufTabLineActive TabLineSel

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

" etc
set colorcolumn=80
set number! relativenumber!
colorscheme onedark
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set nowrap
set scrolloff=5
set t_ut=""         " Colorscheme stuff
set hlsearch        " Highlight searches
" Use Ctrl + l to clear highlighting
nnoremap <silent> <C-l> :nohl<CR><C-l> 

map N Nzz
map n nzz

set list
set listchars=tab:\|\ ,eol:¬,space:·
filetype plugin indent on
syntax on
" END PERSONAL CONFIGS
