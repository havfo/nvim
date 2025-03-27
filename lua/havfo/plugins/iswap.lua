return {
	"mizlan/iswap.nvim",
	event = "VeryLazy",
	config = function()
		vim.keymap.set('n', '<A-m>', ':IMoveWith<CR>')
	end
}
