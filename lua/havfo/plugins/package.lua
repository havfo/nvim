return {
	"vuki656/package-info.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim"
	},
	config = function()
		require("package-info").setup()

		-- Show dependency versions
		vim.keymap.set({ "n" }, "<leader>ns", require("package-info").show, { desc = "Show versions", silent = true, noremap = true })

		-- Hide dependency versions
		vim.keymap.set({ "n" }, "<leader>nc", require("package-info").hide, { desc = "Hide versions", silent = true, noremap = true })

		-- Toggle dependency versions
		vim.keymap.set({ "n" }, "<leader>nt", require("package-info").toggle, { desc = "Toggle versions", silent = true, noremap = true })

		-- Update dependency on the line
		vim.keymap.set({ "n" }, "<leader>nu", require("package-info").update, { desc = "Update version on line", silent = true, noremap = true })

		-- Delete dependency on the line
		vim.keymap.set({ "n" }, "<leader>nd", require("package-info").delete, { desc = "Delete dependency", silent = true, noremap = true })

		-- Install a new dependency
		vim.keymap.set({ "n" }, "<leader>ni", require("package-info").install, { desc = "Install dependency", silent = true, noremap = true })

		-- Install a different dependency version
		vim.keymap.set({ "n" }, "<leader>np", require("package-info").change_version, { desc = "Install different version", silent = true, noremap = true })
	end
}
