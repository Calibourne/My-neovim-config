require("editor")
require("plugins")
require("remap")
vim.cmd('colorscheme nord')

local function initColorscheme(theme)
	theme = theme or "vscode"
	vim.cmd.colorscheme(theme)

	-- vim.api.nvim_set_hl(0, "Normal", {})
        -- ,{ bg = "none" }
	-- vim.api.nvim_set_hl(0, "NormalFloat", {})
        -- ,{ bg = "none" }
end

initColorscheme("doom-one")
