lua <<EOF
require'nvim-treesitter.configs'.setup {
				ensure_installed = "typescript", "javascript", "json", "lua", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
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

