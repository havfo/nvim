return {
	'nvim-tree/nvim-tree.lua',
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		require("nvim-tree").setup({
			update_focused_file = { enable = true },
			filters = { git_ignored = false },
			view = { width = 35 },
		})

		vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>')
	end
}
