return {
	"vuki656/package-info.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim"
	},
	config = function()
		require("package-info").setup()

		-- Show dependency versions
		vim.keymap.set({ "n" }, "<leader>ns", require("package-info").show, { silent = true, noremap = true })

		-- Hide dependency versions
		vim.keymap.set({ "n" }, "<leader>nc", require("package-info").hide, { silent = true, noremap = true })

		-- Toggle dependency versions
		vim.keymap.set({ "n" }, "<leader>nt", require("package-info").toggle, { silent = true, noremap = true })

		-- Update dependency on the line
		vim.keymap.set({ "n" }, "<leader>nu", require("package-info").update, { silent = true, noremap = true })

		-- Delete dependency on the line
		vim.keymap.set({ "n" }, "<leader>nd", require("package-info").delete, { silent = true, noremap = true })

		-- Install a new dependency
		vim.keymap.set({ "n" }, "<leader>ni", require("package-info").install, { silent = true, noremap = true })

		-- Install a different dependency version
		vim.keymap.set({ "n" }, "<leader>np", require("package-info").change_version, { silent = true, noremap = true })
	end
}
