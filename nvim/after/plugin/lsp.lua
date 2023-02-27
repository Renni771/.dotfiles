local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'emmet_ls',
  'svelte',
  'tailwindcss',
})

vim.keymap.set('n', '<C-p>', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', '<C-n>', vim.diagnostic.goto_next, opts)

lsp.on_attach(function(client, bufnr)
  local bufopts = { buffer = bufnr, remap = false }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>/', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'ff', vim.lsp.buf.format, bufopts)
end)

lsp.setup()
