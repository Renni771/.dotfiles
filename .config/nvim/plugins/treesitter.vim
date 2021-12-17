Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

function TreesitterSetup()
lua <<EOF
require'nvim-treesitter.configs'.setup {
    ensure_installed = "maintained",
    highlight = {
      enable = true,
      custom_captures = {
          -- ["keyword"] = "TSString",
      },
    },
    incremental_selection = {
      enable = true,
    },
      indent = {
      enable = true
    }
}
EOF
endfunction

augroup TreesitterSetup
    autocmd!
    autocmd User PlugLoaded call TreesitterSetup()
augroup END
