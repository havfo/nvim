return {
	'akinsho/bufferline.nvim',
	version = '*',
	dependencies = { 'nvim-tree/nvim-web-devicons', 'echasnovski/mini.bufremove' },
	config = function()
		local bufremove = require('mini.bufremove')

		require('bufferline').setup({
			options = {
				-- stylua: ignore
				close_command = function(n) bufremove.delete(n, false) end,
				-- stylua: ignore
				right_mouse_command = function(n) bufremove.delete(n, false) end,
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

		vim.keymap.set('n', '<leader>bc', bufremove.delete, { desc = "Close current buffer", noremap = true, silent = true })
		vim.keymap.set('n', '<leader>bo', ':BufferLineCloseOthers<cr>', { desc = "Close other buffers", noremap = true, silent = true })
		vim.keymap.set('n', '<leader>bn', ':BufferLineCycleNext<cr>', { desc = "Goto next buffer", noremap = true, silent = true })
		vim.keymap.set('n', '<leader>bp', ':BufferLineCyclePrev<cr>', { desc = "Goto previous buffer", noremap = true, silent = true })
		vim.keymap.set('n', '<leader>1', ':BufferLineGoToBuffer 1<cr>', { noremap = true, silent = true })
		vim.keymap.set('n', '<leader>2', ':BufferLineGoToBuffer 2<cr>', { noremap = true, silent = true })
		vim.keymap.set('n', '<leader>3', ':BufferLineGoToBuffer 3<cr>', { noremap = true, silent = true })
		vim.keymap.set('n', '<leader>4', ':BufferLineGoToBuffer 4<cr>', { noremap = true, silent = true })
		vim.keymap.set('n', '<leader>5', ':BufferLineGoToBuffer 5<cr>', { noremap = true, silent = true })
		vim.keymap.set('n', '<leader>6', ':BufferLineGoToBuffer 6<cr>', { noremap = true, silent = true })
		vim.keymap.set('n', '<leader>7', ':BufferLineGoToBuffer 7<cr>', { noremap = true, silent = true })
		vim.keymap.set('n', '<leader>8', ':BufferLineGoToBuffer 8<cr>', { noremap = true, silent = true })
		vim.keymap.set('n', '<leader>9', ':BufferLineGoToBuffer 9<cr>', { noremap = true, silent = true })
	end
}
