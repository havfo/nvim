return {
	'folke/which-key.nvim',
	opts = {},
	config = function()
		require('which-key').setup()
		require('which-key').add {
			{ '<leader>c', group = '[C]ode' },
			{ '<leader>d', group = '[D]ocument' },
			{ '<leader>g', group = '[G]it' },
			{ '<leader>h', group = 'More git' },
			{ '<leader>r', group = '[R]ename' },
			{ '<leader>s', group = '[S]earch' },
			{ '<leader>w', group = '[W]orkspace' },
		}
	end,
}
