-- require 'nvim-treesitter.configs'.setup {
--   ensure_installed = "all",
--   highlight = {
--     enable = true,
--     custom_captures = {
--       -- ["keyword"] = "TSString",
--     },
--   },
--   incremental_selection = {
--     enable = true,
--   },
--   indent = {
--     enable = true
--   }
-- }

require 'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
