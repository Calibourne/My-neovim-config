require("plugins")
require("remap")
require("editor")
vim.cmd('colorscheme nord')
vim.g.nord_italic = false

local function initColorscheme(theme)
	theme = theme or "vscode"
	vim.cmd.colorscheme(theme)

	-- vim.api.nvim_set_hl(0, "Normal", {})
        -- ,{ bg = "none" }
	-- vim.api.nvim_set_hl(0, "NormalFloat", {})
        -- ,{ bg = "none" }
end

initColorscheme("nord")
