-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Color scheme
  use 'morhetz/gruvbox'
  use { 'olivercederborg/poimandres.nvim', config = function() require('poimandres').setup {} end }

  -- Flutter devtools
  use 'akinsho/flutter-tools.nvim'

  -- Git wrapper
  use 'tpope/vim-fugitive'

  use 'tpope/vim-commentary'

  -- Better vim.ui interfaces
  use { 'stevearc/dressing.nvim' }

  -- Smarter auto pairs
  use { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end }

  use {
  'VonHeikemen/lsp-zero.nvim',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'saadparwaiz1/cmp_luasnip'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-nvim-lua'},

    -- Snippets
    {'L3MON4D3/LuaSnip'},
    {'rafamadriz/friendly-snippets'},
  }
}

  ---------------------------------------------------------------------------------
  -- -- Native LSP
  -- use 'neovim/nvim-lspconfig'

  -- -- View project LSP diagnostics
  -- use { "folke/trouble.nvim", config = function() require("trouble").setup {} end }

  -- -- Auto completion
  -- use {
  --   'hrsh7th/nvim-cmp',
  --   requires = {
  --     'hrsh7th/cmp-nvim-lsp',
  --     'hrsh7th/cmp-buffer',
  --     'hrsh7th/cmp-path',
  --     'hrsh7th/cmp-cmdline',
  --     'L3MON4D3/LuaSnip',
  --     'saadparwaiz1/cmp_luasnip',
  --   }
  -- }

  -- -- Snippets
  -- use 'rafamadriz/friendly-snippets'
  -- use 'mlaursen/vim-react-snippets'

  -- -- Use icons in completion windows
  -- use 'onsails/lspkind-nvim'
  ---------------------------------------------------------------------------------

  -- Fuzzy finder
  -- use 'nvim-telescope/telescope.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- Jump to commonly used buffers
  use 'ThePrimeagen/harpoon'

  -- File explorer
  use { 'preservim/nerdtree', requires = { 'Xuyuanp/nerdtree-git-plugin' } }

  -- Syntax highlighting
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  -- smooth scrolling because my eyes
  use 'psliwka/vim-smoothie'

  -- Status bar
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
end)
