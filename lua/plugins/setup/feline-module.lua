local configs_path = 'plugins.setup.feline-configs.'

local configs = require(configs_path .. 'configs')

require('feline').setup(configs.default)
