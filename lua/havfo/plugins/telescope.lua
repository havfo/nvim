return {
	'nvim-telescope/telescope.nvim',
	branch = '0.1.x',
	dependencies = {
		'nvim-lua/plenary.nvim',
		{
			'nvim-telescope/telescope-fzf-native.nvim',
			build = 'make',
			cond = function()
				return vim.fn.executable 'make' == 1
			end,
		},
	},
	config = function()
		require('telescope').setup {}
		pcall(require('telescope').load_extension, 'fzf')

		vim.keymap.set('n', '<C-s>',
			function()
				require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
					winblend = 10,
					previewer = false,
					default_text = "'",
				})
			end,
			{ desc = '[S]earch in current buffer' }
		)

		vim.keymap.set('n', '<C-b>', require('telescope.builtin').buffers, { desc = 'Find existing [B]uffers' })
		vim.keymap.set('n', '<C-f>', require('telescope.builtin').find_files, { desc = 'Search [F]iles' })
		vim.keymap.set('n', '<C-g>', require('telescope.builtin').live_grep, { desc = 'Search by [G]rep' })
	end
}
