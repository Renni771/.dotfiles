local map = require("utils").map

vim.cmd('let NERDTreeShowHidden=1')
vim.cmd('let NERDTreeMinimalUI=1')

-- Nerdtree
map('n', '<c-b>', ':NERDTreeToggleVCS <CR>', { silent = true })
