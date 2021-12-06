" ------------------------------
" Sets 
" ------------------------------
set nocompatible
set exrc " Use vimrc. in pwd when vim starts if found, otherwise use normal
set number
set relativenumber 
set smartindent
set smarttab
set tabstop=2 softtabstop=2
set noerrorbells
set nowrap
set scrolloff=8
set sidescrolloff=16
set nohlsearch
set incsearch
set hidden
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
if !has("nvim")
				set encoding=UTF-8
endif
if has('termguicolors')
	set termguicolors
endif

if !has('nvim') && &ttimeoutlen == -1
  set ttimeout
  set ttimeoutlen=100
endif

if has('autocmd')
  filetype plugin indent on
endif

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

" Alternate buffers
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
nnoremap J mzj`z

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
source $HOME/.config/nvim/plugins/lsp.vim  " Native LSP etc
source $HOME/.config/nvim/plugins/nvim-cmp.vim " Auto completion
source $HOME/.config/nvim/plugins/flutter-tools.vim " Flutter
source $HOME/.config/nvim/plugins/telescope.vim " Fuzzy finder
source $HOME/.config/nvim/plugins/zenmode.vim " Zen mode
source $HOME/.config/nvim/plugins/treesitter.vim " Better syntax highlighting
source $HOME/.config/nvim/plugins/vim-polyglot.vim " Extend vim's language support
source $HOME/.config/nvim/plugins/snippets.vim " Snippets
source $HOME/.config/nvim/plugins/nerdtree.vim " Visual file explorer
source $HOME/.config/nvim/plugins/auto-pairs.vim " Auto brackets
source $HOME/.config/nvim/plugins/vim-fugitive.vim " Git
source $HOME/.config/nvim/plugins/undotree.vim " Undoingzz
source $HOME/.config/nvim/plugins/vim-commentary.vim " Auto commenting
source $HOME/.config/nvim/plugins/vim-surround.vim " Surround stuff
source $HOME/.config/nvim/plugins/sonokai.vim " Colorscheme
source $HOME/.config/nvim/plugins/harpoon.vim " Harpoon 

" ------------------------------
"  Super very necessary plugins
" ------------------------------
source $HOME/.config/nvim/plugins/vim-airline.vim " yess
source $HOME/.config/nvim/plugins/vim-smoothie.vim " Smooth scrolling because my eyes

call plug#end()
doautocmd User PlugLoaded " Hook into plugin setup

