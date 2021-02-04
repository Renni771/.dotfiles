" Don't make efforts to make Vim VI-compatible
set nocompatible

" Enable syntax highlighting
syntax on

" Optimize for fast terminal connections
set ttyfast

set termguicolors

" Enable line numbers
set number

" Show the filename in the window titlebar
set title

" Show the cursor position (line and column)
set ruler

" Turn on highlighting for searching
set hlsearch

" Don’t show the intro message when starting Vim
set shortmess=atI

" Turn on the Wild menu
set wildmenu

" Makes search act like search in modern browsers
set incsearch


" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Text formatting
:set autoindent
:set cindent
:set tabstop=8
:set expandtab
:set shiftwidth=4
:set softtabstop=4

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif