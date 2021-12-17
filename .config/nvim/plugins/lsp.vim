Plug 'neovim/nvim-lspconfig'

function LSPSetup()
    lua << EOF
    local nvim_lsp = require('lspconfig')

    -- Enable lsp logging
    -- vim.lsp.set_log_level("debug")

    -- Use an on_attach function to only map the following keys
    -- after the language server attaches to the current buffer
    local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    -- Enable completion triggered by <c-x><c-o>
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings
    local opts = { noremap=true, silent=true }

    buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', '<C-p>', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
    buf_set_keymap('n', '<C-n>', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
    buf_set_keymap('n', 'ff', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
    buf_set_keymap('n',  '<space>/', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
end

-- Set up completion using nvim_cmp with LSP source
local capabilities = require('cmp_nvim_lsp').update_capabilities(
vim.lsp.protocol.make_client_capabilities()
)

local servers = {'tsserver', 'eslint', 'hls'} -- dartls is exlcuded since flutter-tools sets it up automatically

for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
--        flags = {
--            debounce_text_changes = 150,
--            }
        }
end

-- Flutter tools setup with lsp
require("flutter-tools").setup {
    lsp = {
        on_attach = on_attach,
        capabilities = capabilities,
--         flags = {
--             debounce_text_changes = 150,
--             },
        settings = {
            lineLength = 120,
            }
        },
    debugger = { -- integrate with nvim dap + install dart code debugger
enabled = false,
run_via_dap = false, -- use dap instead of a plenary job to run flutter apps
},
    closing_tags = {
        -- highlight = "ErrorMsg", -- highlight for the closing tag
        prefix = "// ", -- character to use for close tag e.g. > Widget
    enabled = false
    },

}

EOF
endfunction

augroup WhichKeySetup
    autocmd!
    autocmd User PlugLoaded call LSPSetup()
augroup END
