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

-- ignored dirs
vim.o.wildignore = '*/node_modules/*,*/.git/*,DS_Store,*/venv/*,*/__pycache__/*,*.pyc'

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
