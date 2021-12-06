Plug 'ThePrimeagen/harpoon'

nmap <leader>m <cmd> lua require("harpoon.mark").add_file()<CR>
nmap <leader>1 <cmd> lua require("harpoon.ui").nav_file(1)<CR>
nmap <leader>2 <cmd> lua require("harpoon.ui").nav_file(2)<CR>
nmap <leader>3 <cmd> lua require("harpoon.ui").nav_file(3)<CR>
nmap <leader>4 <cmd> lua require("harpoon.ui").nav_file(4)<CR>
nmap <silent> M <cmd> lua require("harpoon.ui").toggle_quick_menu()<CR>
