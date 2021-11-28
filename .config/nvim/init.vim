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

" ------------------------------
"  Plugins
" ------------------------------
call plug#begin('~/.vim/plugged')

if has("nvim")
" Fuzzy finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Zen mode
Plug 'folke/zen-mode.nvim'

" Native LSP etc
Plug 'neovim/nvim-lspconfig'
Plug 'onsails/lspkind-nvim'

" Flutter
Plug 'akinsho/flutter-tools.nvim'

" Auto completion
Plug 'hrsh7th/nvim-cmp' |
			\ Plug 'hrsh7th/cmp-nvim-lsp' |
			\ Plug 'hrsh7th/cmp-buffer' |
			\ Plug 'hrsh7th/cmp-path' |
			\ Plug 'hrsh7th/cmp-cmdline'

" Better syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

endif

" Snippets
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'Nash0x7E2/awesome-flutter-snippets'
Plug 'RobertBrunhage/flutter-riverpod-snippets'
Plug 'spoonscen/es6-mocha-snippets-vs-code'

" Colorscheme
Plug 'sainnhe/sonokai'

" Visual file explorer
Plug 'preservim/nerdtree' |
				\ Plug 'Xuyuanp/nerdtree-git-plugin'

" Auto brackets
Plug 'jiangmiao/auto-pairs'

" Git
Plug 'tpope/vim-fugitive'

" Undoingzz
Plug 'mbbill/undotree'

" Smooth scrolling because my eyes
Plug 'psliwka/vim-smoothie'

" Auto commenting
Plug 'tpope/vim-commentary'

" Extend vim's language support
Plug 'sheerun/vim-polyglot'

" Surround stuff
Plug 'tpope/vim-surround'

call plug#end()


" ------------------------------
"  Colorscheme
" ------------------------------
if has('termguicolors')
	set termguicolors
endif
colorscheme sonokai

" ------------------------------
"  Remaps
" ------------------------------
let mapleader = " "

" Config editing
nnoremap <leader>vr :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>ve :tabnew ~/.config/nvim/init.vim<CR>

" Navigate windows easily
noremap <leader>k :wincmd k <CR>
noremap <leader>j :wincmd j <CR>
noremap <leader>h :wincmd h <CR>
noremap <leader>l :wincmd l <CR>

" Alternate buffers
noremap <Tab> <c-^>

" Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv

" Allow opening even nonexistent files under cursor
map gf :edit <cfile><cr>

" Make Y behave like the other capital letters
nnoremap Y y$

" Keep it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzj`z

" -----------------------------
"  Plugin specific remaps
" ------------------------------
" Zen mode
noremap <leader>zen :ZenMode <CR>

" Undo Tree
nnoremap <c-h> :UndotreeToggle<CR>

" ------------------------------
"  Plugin config 
" ------------------------------
source $HOME/.config/nvim/plugins/lsp.vim
source $HOME/.config/nvim/plugins/nvim-cmp.vim
source $HOME/.config/nvim/plugins/treesitter.vim
source $HOME/.config/nvim/plugins/telescope.vim
source $HOME/.config/nvim/plugins/nerdtree.vim
source $HOME/.config/nvim/plugins/flutter-tools.vim

