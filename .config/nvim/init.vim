" ------------------------------
" Sets
" ------------------------------
set nocompatible
set number
set relativenumber
set tabstop=2 shiftwidth=2 expandtab
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set smartindent                         " Makes indenting smart
set expandtab                           " Converts tabs to spaces
set autoindent                          " Good auto indent
set noerrorbells
set nowrap
set scrolloff=8
set sidescrolloff=24
set nohlsearch
set incsearch
set hidden
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set encoding=UTF-8
set mouse=a
set clipboard=unnamedplus " copy to system clipboard
" set timeoutlen=300
" set ttimeoutlen=300
" set updatetime=300

" if &term =~ '256color'
"     " Disable Background Color Erase (BCE) so that color schemes
"     " work properly when Vim is used inside tmux and GNU screen
"     set t_ut=
" endif

" set t_Co=256

if has('autocmd')
  filetype plugin indent on
endif

" Automatically deletes all trailing whitespace and newlines at end of file on save.
autocmd BufWritePre * :%s/\s\+$//e

" ------------------------------
"  Remaps
" ------------------------------
let mapleader = " "

" Config editing
nnoremap <leader>vr :so $HOME/.config/nvim/init.vim<CR>
nnoremap <leader>ve :tabnew $HOME/.config/nvim/init.vim<CR>

" Navigate windows easily
nmap <silent> <C-l> <C-w>l
nmap <silent> <C-k> <C-w>k
nmap <silent> <C-j> <C-w>j
nmap <silent> <C-h> <C-w>h

" " Alternate buffers
noremap <Tab> <c-^>

" Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv

map gf :edit <cfile><cr>

" Make Y behave like the other capital letters
nnoremap Y y$

" Keep it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" ------------------------------
"  Plugins
" ------------------------------

" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'

if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugins')

Plug 'nvim-lua/plenary.nvim'
source $HOME/.config/nvim/plugins/colorscheme.vim " Colorscheme
source $HOME/.config/nvim/plugins/flutter-tools.vim " Flutter
source $HOME/.config/nvim/plugins/lsp.vim  " Native LSP etc
source $HOME/.config/nvim/plugins/nvim-cmp.vim " Auto completion
source $HOME/.config/nvim/plugins/telescope.vim " Fuzzy finder
source $HOME/.config/nvim/plugins/snippets.vim " Snippets
source $HOME/.config/nvim/plugins/nerdtree.vim " Visual file explorer
source $HOME/.config/nvim/plugins/auto-pairs.vim " Auto brackets
source $HOME/.config/nvim/plugins/vim-commentary.vim " Auto commenting
source $HOME/.config/nvim/plugins/harpoon.vim " Harpoon

source $HOME/.config/nvim/plugins/treesitter.vim " Better syntax highlighting  " POSSIBLY SLOWING VIM DOWN

" source $HOME/.config/nvim/plugins/vim-latex.vim " LaTeX
" source $HOME/.config/nvim/plugins/nvim-dap.vim " Debugger

" ------------------------------
"  Super very necessary plugins
" ------------------------------
source $HOME/.config/nvim/plugins/vim-airline.vim " yess
source $HOME/.config/nvim/plugins/vim-smoothie.vim " Smooth scrolling because my eyes

call plug#end()

doautocmd User PlugLoaded " Hook into plugin setup

