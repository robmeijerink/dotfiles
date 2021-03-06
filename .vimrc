set number
set relativenumber
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set nohlsearch
set shiftwidth=4
set expandtab
set smartcase
set smartindent
set noswapfile
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set termguicolors
set nocompatible
set backspace=indent,eol,start

" Map zx to <Esc> for easier mode switching
imap zx <Esc>
vmap zx <Esc>

" Resave with sudo
cmap w!! w !sudo tee %
