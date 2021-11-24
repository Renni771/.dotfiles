" ------------------------------
" Sets 
" ------------------------------
"
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
" set nohlsearch
set incsearch
set hidden
if !has("nvim")
				set encoding=UTF-8
endif
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile

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
endif

" Language server etc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Colorscheme
Plug 'sainnhe/sonokai'

" Visual file explorer
Plug 'preservim/nerdtree' |
				\ Plug 'Xuyuanp/nerdtree-git-plugin'

" Auto brackets
Plug 'jiangmiao/auto-pairs'

" Git
Plug 'tpope/vim-fugitive'

" Dart/Flutter support
Plug 'dart-lang/dart-vim-plugin' " Dart syntax highlighting
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'

" Better syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

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
nmap <silent> <C-l> <C-w>l
nmap <silent> <C-k> <C-w>k
nmap <silent> <C-j> <C-w>j
nmap <silent> <C-h> <C-w>h

" Alternate buffers
noremap <Tab> <c-^>

" New remaps i'm still playing with

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

" Telescope
nnoremap <leader>fi <cmd>Telescope find_files<cr>
nnoremap <leader>rg <cmd>Telescope live_grep<cr>
nnoremap <leader>gs <cmd>Telescope git_status<cr>

" Flutter
nnoremap <leader>flr <cmd>:CocCommand flutter.run<cr>
nnoremap <leader>flq <cmd>:CocCommand flutter.dev.quit<cr>
nnoremap <leader>fla <cmd>:CocCommand flutter.attach<cr>
nnoremap <leader>fld <cmd>:CocCommand flutter.dev.openDevLog<cr>

" Nerd Tree
noremap <leader>b :NERDTreeToggleVCS <CR>

" Undo Tree
nnoremap <leader>h :UndotreeToggle<CR>

" ------------------------------
"  Plugin config 
" ------------------------------
"" Coc 
let g:coc_global_extensions = [
												\ 'coc-prettier',
												\ 'coc-flutter',
												\ 'coc-json',
												\ 'coc-eslint',
												\ 'coc-markdownlint',
												\ 'coc-spell-checker',
												\ 'coc-tsserver',
												\ 'coc-yaml' ]

source $HOME/.config/nvim/coc.vim
command! -nargs=0 Prettier :CocCommand prettier.formatFile " Formatting with prettier

" Dart/Flutter
set completeopt-=preview " Disable annoying autocomplete window
set shortmess-=F " Avoid suppressing error messages
let g:lsc_server_commands = {'dart': 'dart_language_server'}
let g:lsc_auto_map = v:true
let g:dartfmt_options = ['--fix','-l 120']
let g:dart_format_on_save = 1

" Nerd Tree
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1

" Treesitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
				ensure_installed = "typescript", "javascript", "json", "lua", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
				highlight = {
								enable = true,
								custom_captures = {
												-- ["keyword"] = "TSString",
								},
				},
				incremental_selection = {
								enable = true,
				},
				indent = {
								enable = true
				}
}
EOF
