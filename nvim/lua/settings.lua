local set = vim.opt
local setglobal = vim.g

setglobal.mapleader = ' '

-- line numbers
set.nu = true
set.relativenumber = true

-- no line wrap
set.wrap = false

-- try be smart about line wrap vim
set.smartindent = true

-- tab/indent length
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true

-- undo stuff
set.swapfile = false
set.backup = false
set.undodir = os.getenv("HOME") .. "/.vim/undodir"
set.undofile = true

-- better search
set.incsearch = true
set.hlsearch = false

-- good colours!
set.termguicolors = true

-- fast update time
set.updatetime = 2000

-- vertical and horizontal scroll when reaching edges
set.scrolloff = 8
set.sidescrolloff = 24

-- spell checking
set.spelllang = 'en_us'
-- set.spelllang = 'en_gb'
set.spell = true

-- ignored dirs
set.wildignore = '*/node_modules/*,*/.git/*,DS_Store,*/venv/*,*/__pycache__/*,*.pyc'

-- disable built-in plugins I don't need
setglobal.loaded_gzip = 1
setglobal.loaded_zip = 1
setglobal.loaded_zipPlugin = 1
setglobal.loaded_tar = 1
setglobal.loaded_tarPlugin = 1
setglobal.loaded_getscript = 1
setglobal.loaded_getscriptPlugin = 1
setglobal.loaded_vimball = 1
setglobal.loaded_vimballPlugin = 1
setglobal.loaded_2html_plugin = 1
setglobal.loaded_logiPat = 1
setglobal.loaded_rrhelper = 1
setglobal.loaded_netrw = 1
setglobal.loaded_netrwPlugin = 1
setglobal.loaded_netrwSettings = 1
