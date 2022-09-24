------------------- Base -------------------

require('base.setup')

------------------ Utility -----------------

local M = require('utils')
local cmd = M.cmd
local map = M.map


---------- Install packer manager ----------

require('packer-install')

------------- Load the plugins -------------

require('plugins.plugins-setup')

cmd([[colorscheme vscode]])
cmd([[colorscheme doom-one]])
--cmd([[colorscheme vscode]])

require('feline').setup({theme = colors})
