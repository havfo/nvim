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

		vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles,
			{ desc = '[?] Find recently opened files' })
		vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers,
			{ desc = '[ ] Find existing buffers' })

		vim.keymap.set('n', '<leader>/',
			function()
				require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
					winblend = 10,
					previewer = false,
				})
			end,
			{ desc = '[/] Fuzzily search in current buffer' }
		)

		vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
		vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
		vim.keymap.set('n', '<M-s>', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
		vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
		vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
		vim.keymap.set('n', '<M-f>', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
	end
}
