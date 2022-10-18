local plugins = 'plugins.'
local modules = plugins .. 'setup.'

-- include plugins paths to install if needed
require(plugins .. 'plugins-install')

-- activate plugins
require(modules .. 'whichkey-module')
require(modules .. 'lspconfig-module')
require(modules .. 'treesitter-module')
-- require(modules .. 'doom_one-module')

-- choose one of these 2
-- require(modules .. 'gitsigns-module')
-- require(modules .. 'lualine-module') -- 1
-- require(modules .. 'feline-module') --2
-- require(modules .. 'ufo-module')
-- require(modules .. 'pretty_fold-module')



vim.cmd([[:PackerCompile]])
-- vim.cmd([[:so %]])
vim.o.completeopt = 'menu,menuone,noselect'
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

