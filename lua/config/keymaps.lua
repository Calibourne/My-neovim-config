-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")

wk.register({
  ["<leader>."] = { name = "Toggle comment(s)" },
  ["v<A-Up>"] = { name = "Move (selected) up" },
  ["v<A-Down>"] = { name = "Move (selected) down" },
})

vim.keymap.set("n", "<leader>.", function()
  require("Comment.api").toggle.linewise.current()
end)

vim.keymap.set("v", "<leader>.", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")

vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv")
