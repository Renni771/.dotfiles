local map = require("utils").map

map('n', '<leader>f', '<cmd> Telescope find_files<CR>', { noremap = true })
map('n', '<leader>rg', ' <cmd> Telescope live_grep<CR>', { noremap = true })
