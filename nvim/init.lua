require('settings')
require('plugins')
require('keymaps')

-- Automatically deletes all trailing whitespace and newlines at end of file on save.
vim.cmd('autocmd BufWritePre * :%s/\\s\\+$//e')

-- highlight yank for a brief second for visual feedback
vim.api.nvim_create_autocmd('TextYankPost', {
  pattern = '*',
  callback = function()
    vim.highlight.on_yank { on_visual = false }
  end,
})
