return {
	'nvim-treesitter/nvim-treesitter',
	dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects' },
	build = ':TSUpdate',
	config = function()
		vim.defer_fn(function()
			require('nvim-treesitter.configs').setup {
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = '<c-s>',
						node_incremental = '<c-s>',
						scope_incremental = '<c-a>',
						node_decremental = '<c-c>',
					},
				},
				textobjects = {
					select = {
						enable = true,
						lookahead = true,
						keymaps = {
							['aa'] = '@parameter.outer',
							['ia'] = '@parameter.inner',
							['af'] = '@function.outer',
							['if'] = '@function.inner',
							['ac'] = '@class.outer',
							['ic'] = '@class.inner',
						},
					},
					move = {
						enable = true,
						set_jumps = true,
						goto_next_start = { [']m'] = '@function.outer', [']]'] = '@class.outer' },
						goto_next_end = { [']M'] = '@function.outer', [']['] = '@class.outer' },
						goto_previous_start = { ['[m'] = '@function.outer', ['[['] = '@class.outer' },
						goto_previous_end = { ['[M'] = '@function.outer', ['[]'] = '@class.outer' },
					},
					swap = {
						enable = true,
						swap_next = { ['<leader>a'] = '@parameter.inner' },
						swap_previous = { ['<leader>A'] = '@parameter.inner' },
					},
				},
			}
		end, 0)
	end,
} -- whether to set jumps in the jumplist
