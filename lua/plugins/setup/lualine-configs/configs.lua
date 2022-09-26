local config_path = 'plugins.setup.lualine-configs.'

local configs = {
    default = require(config_path .. 'default'),

    -- Stylish, preconfigured lualines from the official github page
    evil_line = require(config_path .. 'evil-line'),
    slanted_gaps = require(config_path .. 'slanted'),
    bubbles = require(config_path .. 'bubbles')
}

return configs
