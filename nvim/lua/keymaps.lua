local map = require("utils").map

-- Config editing
map('n', '<leader>vr', ':so $HOME/.config/nvim/init.lua<CR>', { noremap = true })
map('n', '<leader>ve', ':tabnew $HOME/.config/nvim/<CR>', { noremap = true })

-- Navigate windows easily
map('n', '<c-l>', '<c-w>l', { silent = true })
map('n', '<c-k>', '<c-w>k', { silent = true })
map('n', '<c-j>', '<c-w>j', { silent = true })
map('n', '<c-h>', '<c-w>h', { silent = true })

-- Alternate buffers
map('n', '<Tab>', '<c-^>', { noremap = true })

-- MOVE and Reselect visual selection after indenting
map('v', '<', '<gv', { noremap = true }) -- move visual selection LEFT
map('v', '>', '>gv', { noremap = true }) -- move visual selection RIGHT
map('v', 'J', ":m '>+1<CR>gv=gv", { noremap = true }) -- move visual selection DOWN
map('v', 'K', ":m '<-2<CR>gv=gv", { noremap = true }) -- move visual selection UP

-- Keep it centered
map('n', 'n', 'nzzzv', { noremap = true })
map('n', 'N', 'Nzzzv', { noremap = true })
map('n', 'J', 'mzJ`z', { noremap = true })
