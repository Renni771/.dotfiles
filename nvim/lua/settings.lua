vim.g.mapleader = ' '

-- line numbers
vim.o.nu = true
vim.o.relativenumber = true

-- no line wrap
vim.o.wrap = false

-- try be smart about line wrap vim
vim.o.smartindent = true

-- tab/indet length
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
-- vim.o.autoindent = true

-- undo stuff
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = true

-- better search
vim.o.incsearch = true
vim.o.hlsearch = false

-- good colours!
vim.o.termguicolors = true

-- fast update time
vim.o.updatetime = 2000

-- vertical and horizontal scroll when reaching edges
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 24

-- TODO: figure out what to do with these
-- vim.opt.clipboard = 'unnamedplus' -- copy to system clipboard
-- vim.o.background = 'dark'
-- vim.o.errorbells = false
-- vim.o.exrc = true
-- vim.o.hidden = true
-- vim.o.ignorecase = true
-- vim.o.inccommand = 'split'
-- vim.o.keywordprg = ':help'
-- vim.o.laststatus = 2
-- vim.o.lazyredraw = true
-- vim.o.mouse = 'n'
-- vim.o.nrformats = ''
-- vim.o.path = '.,,'
-- vim.o.showtabline = 0
-- vim.o.smartcase = true
-- vim.o.splitbelow = true
-- vim.o.splitright = true
-- vim.o.wildignore = '*/node_modules/*,*/.git/*,DS_Store,*/venv/*,*/__pycache__/*,*.pyc'
-- vim.o.wildmenu = true
-- vim.o.wildmode = 'full'
-- vim.o.wildoptions = 'pum'
-- vim.opt.shortmess:append 'c'
-- vim.o.breakindent = true
-- vim.o.foldmethod = 'marker'

-- disable builtin plugins i don't need
vim.g.loaded_gzip = 1
vim.g.loaded_zip = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_tar = 1
vim.g.loaded_tarPlugin = 1
vim.g.loaded_getscript = 1
vim.g.loaded_getscriptPlugin = 1
vim.g.loaded_vimball = 1
vim.g.loaded_vimballPlugin = 1
vim.g.loaded_2html_plugin = 1
vim.g.loaded_logiPat = 1
vim.g.loaded_rrhelper = 1
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrwSettings = 1
