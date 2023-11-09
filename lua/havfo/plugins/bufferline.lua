return {
	'akinsho/bufferline.nvim',
	version = '*',
	dependencies = { 'nvim-tree/nvim-web-devicons', 'echasnovski/mini.bufremove' },
	config = function()
		require('bufferline').setup({
			options = {
				-- stylua: ignore
				close_command = function(n) require('mini.bufremove').delete(n, false) end,
				-- stylua: ignore
				right_mouse_command = function(n) require('mini.bufremove').delete(n, false) end,
				diagnostics = 'nvim_lsp',
				always_show_bufferline = false,
				diagnostics_indicator = function(_, _, diag)
					local ret = (diag.error and ' ' .. diag.error .. ' ' or '')
						.. (diag.warning and ' ' .. diag.warning or '')
					return vim.trim(ret)
				end,
				offsets = {
					{
						filetype = 'NvimTree',
						text = 'File explorer',
						highlight = 'Directory',
						text_align = 'center',
					},
				},
			},
		})
	end
}
