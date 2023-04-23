-- vim.opt.guicursor=""

vim.opt.nu=true
vim.opt.relativenumber=true

vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab=true

vim.opt.smartindent=true

vim.opt.wrap=false

vim.opt.swapfile=false
vim.opt.backup=false
vim.opt.undodir=os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile=true

-- vim.opt.
-- vim.opt.
-- vim.opt.
-- vim.opt.
-- vim.opt.
-- vim.opt.
-- vim.opt.
-- vim.opt.
-- vim.opt.
-- vim.opt.

local function initColorscheme(theme)
	theme = theme or "vscode"
	vim.cmd.colorscheme(theme)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

initColorscheme()
