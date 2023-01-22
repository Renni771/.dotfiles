local map = require("utils").map

-- Harpoon
map('n', '<leader>m', ' <cmd> lua require("harpoon.mark").add_file()<CR>', {})
map('n', '<leader>1', ' <cmd> lua require("harpoon.ui").nav_file(1)<CR>', {})
map('n', '<leader>2', ' <cmd> lua require("harpoon.ui").nav_file(2)<CR>', {})
map('n', '<leader>3', ' <cmd> lua require("harpoon.ui").nav_file(3)<CR>', {})
map('n', '<leader>4', ' <cmd> lua require("harpoon.ui").nav_file(4)<CR>', {})
map('n', 'M', '<cmd> lua require("harpoon.ui").toggle_quick_menu()<CR>', {})
