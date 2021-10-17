" ==============================
" Sets 
" ==============================
set exrc " Use vimrc. in pwd when vim starts if found, otherwise use normal
set number
set relativenumber 
set smartindent
set smarttab
set tabstop=2 softtabstop=2
set noerrorbells
set nowrap
set scrolloff=8 " auto scroll when cursor within boundry limit
set nohlsearch " No persistent search result highlighting
set incsearch " show match for partly typed search command
set hidden " Keep any opened buffers open in background so they can be navigated away from w/o saving
if !has("nvim")
				set encoding=UTF-8
endif
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile

set wildignore+=*/node_modules/*

" ==============================
"  Plugins
" ==============================
call plug#begin('~/.vim/plugged')

if has("nvim")

" Language server etc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Fuzzy finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'


" Zen mode
Plug 'folke/zen-mode.nvim'

endif

" Colorscheme
Plug 'sainnhe/sonokai'

" Visual file explorer
Plug 'preservim/nerdtree' |
				\ Plug 'Xuyuanp/nerdtree-git-plugin'

" Auto brackets
Plug 'jiangmiao/auto-pairs'

" Git
Plug 'tpope/vim-fugitive'

call plug#end()

" ==============================
"  Colorscheme
" ==============================
if has('termguicolors')
	set termguicolors
endif
colorscheme sonokai

" ==============================
"  Remaps
" ==============================
let mapleader = " "

" Navigate windows easily
noremap <leader>k :wincmd k <CR>
noremap <leader>j :wincmd j <CR>
noremap <leader>h :wincmd h <CR>
noremap <leader>l :wincmd l <CR>

" Window manipulation
noremap <leader>sp :vsplit <CR> " Split window horizontally and edit current buffer

" Close window
noremap <leader>cl :wincmd q <CR>
" Reload init.vim
noremap <leader>vr :so ~/.config/nvim/init.vim<CR>

" ==============================
"  Plugin specific remaps
" ==============================

" Zen mode
noremap <leader>zen :ZenMode <CR>

" Telescope
nnoremap <leader>fi <cmd>Telescope find_files<cr>
nnoremap <leader>rg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Nerd Tree
noremap <leader>b :NERDTreeToggleVCS <CR>

" ==============================
"  Plugin config 
" ==============================
"" Coc 
let g:coc_global_extensions = ['coc-json', 'coc-eslint', 'coc-flutter', 'coc-markdownlint', 'coc-spell-checker', 'coc-tsserver', 'coc-yaml']
source $HOME/.config/nvim/coc.vim

" Nerd Tree
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeCascadeOpenSingleChildDir=0
