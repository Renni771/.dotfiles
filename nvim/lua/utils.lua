local M = {}

-- Helper to map keys
function M.map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


  -- Autoinstall packer.nvim if not already installed
-- function M.ensure_packer_installed()
--     vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
--     if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
--         vim.fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
--         vim.cmd 'packadd packer.nvim'
--     end
-- end

return M