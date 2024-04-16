return {
	'mbbill/undotree',
	config = function()
		vim.keymap.set('n', '<A-u>', ':UndotreeToggle<CR>')
	end
}
