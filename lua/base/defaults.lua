local M = require 'utils'
local o = M["o"]
local cmd = M["cmd"]
o.tabstop=4
o.softtabstop=4
o.shiftwidth=4
o.mouse='a'
o.expandtab = true
o.relativenumber = true
o.number = true
o.autoindent = true
o.clipboard='unnamed'
o.termguicolors=true
o.swapfile = false
o.foldmethod = 'syntax'
-- cmd([[sefoldmethod=syntax]])