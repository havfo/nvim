vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>df", ":w !diff % -<CR>", { desc = "Diff current buffer with file on disk" })
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste without losing yank" })

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copy to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copy to system clipboard" })
vim.keymap.set("n", "<leader>cf", [[:%y+<CR>]], { desc = "Copy entire buffer to system clipboard" })

vim.keymap.set({"n", "v"}, "<leader>dv", [["_d]], { desc = "Delete to black hole register" })

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format current buffer" })

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Go to next location in quickfix list" })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Go to previous location in quickfix list" })

vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace word under cursor" })
vim.keymap.set("n", "<leader>rw", "<cmd>%s/\\s\\+$//e<CR>", { desc = "Remove trailing whitespace" })
vim.keymap.set("n", "<leader>bj", "<cmd>%!jq<CR>", { desc = "Beautify JSON" })

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<M-d>', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

vim.keymap.set('n', '<M-Left>', '<C-w>h', { desc = 'Move to left window' })
vim.keymap.set('n', '<M-Down>', '<C-w>j', { desc = 'Move to down window' })
vim.keymap.set('n', '<M-Up>', '<C-w>k', { desc = 'Move to up window' })
vim.keymap.set('n', '<M-Right>', '<C-w>l', { desc = 'Move to right window' })
