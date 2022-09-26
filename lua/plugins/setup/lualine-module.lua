local lualine = require('lualine')

local config_path = 'plugins.setup.lualine-configs.'

local configs = require(config_path .. 'configs')

lualine.setup(configs.evil_line)
-- lualine.setup(slanted_gaps)
-- lualine.setup(configs.bubbles)
-- lualine.setup(configs.default.onedark)
