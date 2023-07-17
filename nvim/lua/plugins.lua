-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use { 'wbthomason/packer.nvim' }

  -- AI !!!!
  -- use { 'github/copilot.vim' }
  use { "zbirenbaum/copilot.lua" }

  -- Undo tree
  use { "mbbill/undotree" }

  -- Formatter
  -- use 'sbdchd/neoformat'
  use { 'mhartington/formatter.nvim' }

  -- Auto comment
  use { 'tpope/vim-commentary' }

  -- Better vim.ui interfaces
  use { 'stevearc/dressing.nvim' }

  -- Color schemes because I can't decide
  use { 'morhetz/gruvbox'}
  use { 'folke/tokyonight.nvim' }
  use { 'rose-pine/neovim', as = 'rose-pine' }

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
  use { 'tpope/vim-fugitive' }

  -- Smarter auto pairs
  use { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end }

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
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
  use { 'ThePrimeagen/harpoon' }

  -- Language grammar stuff
  use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use { 'nvim-treesitter/nvim-treesitter-context' }

  -- Status bar
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
end)
