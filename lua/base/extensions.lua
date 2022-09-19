local M = require 'utils'
local cmd = M.cmd

cmd 'autocmd Filetype ruby setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2'
cmd 'autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2'
cmd 'autocmd Filetype javascriptreact setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2'
cmd 'autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2'
cmd 'autocmd Filetype css setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2'
cmd 'autocmd BufNewFile,BufRead *.coffee setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2'
cmd 'autocmd BufNewFile,BufRead *.coffee set syntax=javascript'
cmd 'set clipboard=unnamed'
