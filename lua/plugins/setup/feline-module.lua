local configs_path = 'plugins.setup.feline-configs.'

local configs = require(configs_path .. 'configs')

local feline = require('feline')

local selected_config = configs.lsp_aware

feline.setup(selected_config.feline)
feline.winbar.setup(selected_config.winbar)
