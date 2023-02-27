-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Auto comment
  use 'tpope/vim-commentary'

  -- Better vim.ui interfaces
  use { 'stevearc/dressing.nvim' }

  -- Color scheme
  use 'morhetz/gruvbox'

  -- Flutter devtools
  use 'akinsho/flutter-tools.nvim'

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- File explorer
  use {
    'nvim-tree/nvim-tree.lua',
    requires = { 'nvim-tree/nvim-web-devicons' }
  }

  -- Git wrapper
  use 'tpope/vim-fugitive'

  -- Smarter auto pairs
  use { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end }

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }

  -- Jump to commonly used buffers
  use 'ThePrimeagen/harpoon'

  -- Syntax highlighting
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  -- Smooth scrolling because my eyes
  use 'psliwka/vim-smoothie'

  -- Status bar
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
end)
