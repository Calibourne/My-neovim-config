local plugins = 'plugins.'
local modules = plugins .. 'setup.'

-- include plugins paths to install if needed
require(plugins .. 'plugins-install')

-- activate plugins
require(modules .. 'whichkey-module')
require(modules .. 'gitsigns-module')
require(modules .. 'lspconfig-module')
require(modules .. 'treesitter-module')

-- choose one of these 2
-- require(modules .. 'lualine-module') -- 1
require(modules .. 'feline-module') --2




--require 'plugins.setup.doom_one-module'
