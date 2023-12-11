return {
	'lewis6991/gitsigns.nvim',
	opts = {
		signs = {
			add = { text = '+' },
			change = { text = '~' },
			delete = { text = '_' },
			topdelete = { text = '‾' },
			changedelete = { text = '~' },
		},
		on_attach = function(bufnr)
			local gs = package.loaded.gitsigns

			vim.keymap.set('n', '<leader>gbl', gs.toggle_current_line_blame, { buffer = bufnr, desc = 'Blame line' })
			vim.keymap.set('n', '<leader>gbf', function() gs.blame_line{ full=true } end, { buffer = bufnr, desc = 'Blame file' })

			vim.keymap.set('n', '<leader>gs', gs.stage_hunk, { buffer = bufnr, desc = 'Stage hunk' })
			vim.keymap.set('n', '<leader>gr', gs.reset_hunk, { buffer = bufnr, desc = 'Reset hunk' })
			vim.keymap.set('n', '<leader>gu', gs.undo_stage_hunk, { buffer = bufnr, desc = 'Undo stage hunk' })

			vim.keymap.set('v', '<leader>gs', function() gs.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end, { buffer = bufnr, desc = 'Stage hunk' })
			vim.keymap.set('v', '<leader>gr', function() gs.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end, { buffer = bufnr, desc = 'Reset hunk' })

			vim.keymap.set('n', '<leader>gh', gs.preview_hunk, { buffer = bufnr, desc = 'Preview git hunk' })
			vim.keymap.set({ 'n', 'v' }, ']c', function()
				if vim.wo.diff then
					return ']c'
				end
				vim.schedule(function()
					gs.next_hunk()
				end)
				return '<Ignore>'
			end, { expr = true, buffer = bufnr, desc = 'Jump to next hunk' })
			vim.keymap.set({ 'n', 'v' }, '[c', function()
				if vim.wo.diff then
					return '[c'
				end
				vim.schedule(function()
					gs.prev_hunk()
				end)
				return '<Ignore>'
			end, { expr = true, buffer = bufnr, desc = 'Jump to previous hunk' })
		end,
	},
}
