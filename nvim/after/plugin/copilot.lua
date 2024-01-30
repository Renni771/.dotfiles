local map = require("utils").map

vim.g.copilot_assume_mapped = true
vim.g.copilot_filetypes = {
  ["*"] = false,
  ["javascript"] = true,
  ["typescript"] = true,
  ["lua"] = false,
  ["rust"] = true,
  ["go"] = true,
  ["python"] = true,
}


vim.api.nvim_set_keymap('i', '<c-j>', 'copilot#Accept("<CR>")', {expr=true, silent=true})

-- map('i', '<Tab>', "copilot#Accept('<CR>')", { silent = true })
