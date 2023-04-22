vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>sp", vim.cmd.PackerSync)

vim.keymap.set("n", "<leader>.", function ()
	require("Comment.api").toggle.linewise.current()
end)

vim.keymap.set("v", "<leader>.", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")

vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv")
