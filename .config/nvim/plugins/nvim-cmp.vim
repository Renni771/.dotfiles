set completeopt=menu,menuone,noselect

lua <<EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'
	-- Format completion suggestions
	local lspkind = require('lspkind')

  cmp.setup({
		-- Remaps
    mapping = {
      ['<C-k>'] = cmp.mapping.scroll_docs(-4),
      ['<C-j>'] = cmp.mapping.scroll_docs(4),
			['<c-space>'] = cmp.mapping.complete(),
      ['<CR>'] = cmp.mapping.confirm({ 
				behavior = cmp.ConfirmBehavior.Insert,
				select = true,
			}),
    },

    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'path' },
      { name = 'vsnip' },
      { name = 'buffer', keyword_length = 5},
    }),

		snippet = {
      expand = function(args)
				vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      end,
    },

	  -- Completion suggestions formatting
		formatting = {
			format = lspkind.cmp_format({
				with_text = true,
				maxwidth = 50,
				menu = {
					vsnip= '[snip]',
					nvim_lsp = '[LSP]',
					buffer = '[buff]',
					path = '[path]',
				}
			})
		},

		experimental = {
			native_menu=false,
			ghost_text=true,
		},

  })
EOF
