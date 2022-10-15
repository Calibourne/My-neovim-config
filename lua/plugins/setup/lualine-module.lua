local config_path = 'plugins.setup.lualine-configs.'

local configs = require(config_path .. 'configs')

return configs.evil_line

-- local lualine = require('lualine')
-- lualine.setup()
-- lualine.setup(slanted_gaps)
-- lualine.setup(configs.bubbles)
-- lualine.setup(configs.default.onedark)
