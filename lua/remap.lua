vim.g.mapleader = " "

vim.keymap.set("n", "<C-b>", function()
    pcall(vim.cmd, ':NvimTreeToggle')
end)

vim.keymap.set("n", "<C-f>", function()
    pcall(vim.cmd, ':NvimTreeFocus')
    pcall(vim.cmd, ':NvimTreeClean')
end)

vim.keymap.set("n", "<leader>sp", vim.cmd.PackerSync)

vim.keymap.set("n", "<leader>.", function ()
	require("Comment.api").toggle.linewise.current()
end)

vim.keymap.set("v", "<leader>.", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")

vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv")

local telescope = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', function ()
    pcall(vim.cmd, ':Telescope file_browser')
end, {})
vim.keymap.set('n', '<leader>fg', telescope.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescope.buffers, {})
vim.keymap.set('n', '<leader>fh', telescope.help_tags, {})

vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

vim.keymap.set('n', '<C-u>', vim.cmd.UndotreeToggle)
