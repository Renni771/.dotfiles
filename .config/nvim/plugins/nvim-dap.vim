Plug 'mfussenegger/nvim-dap'

nmap <leader>b <cmd> lua require'dap'.toggle_breakpoint()<CR>
nmap <leader>c <cmd> lua require'dap'.continue() <CR>
nmap <leader>n <cmd> lua lua require'dap'.step_over()<CR>
nmap <leader>i <cmd> lua require'dap'.step_into() <CR>
nmap <leader>r <cmd> lua require'dap'.repl.open()<CR>
