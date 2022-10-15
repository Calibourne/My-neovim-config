local M = require 'utils'
local fn = M["fn"]
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

