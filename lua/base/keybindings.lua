local M = require 'utils'
map = M.map
g = M["g"]

--Remap space as leader key
map('', '<Space>', '<Nop>', { noremap = true, silent = true })

g.mapleader = ' '
g.maplocalleader = ' '

--Remap for dealing with word wrap
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

map('i', 'jk', '<Esc>', {noremap = true, silent = true})

--Add leader shortcuts
map('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
map('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })
map('n', '<leader>/', ':noh<CR>', { noremap = true, silent = true })
map('n', '<leader>s', ':StripWhitespace<CR>', { noremap = true, silent = true })
map('n', '<leader>fp', ':let @+ = expand("%")<CR>', { noremap = true, silent = true })
map('n', '<leader>b', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], { noremap = true, silent = true })
map('n', '<leader>o', [[<cmd>lua require('telescope.builtin').find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<CR>]], { noremap = true, silent = true })
map('n', '<leader>sb', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]], { noremap = true, silent = true })
map('n', '<leader>sp', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true, silent = true })
map('n', '<leader>?', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]], { noremap = true, silent = true })
map('n', '<leader>i', '<cmd>lua require("telescope.builtin").git_status(require("telescope.themes").get_dropdown({}))<cr>')
map('n', '<leader><leader>w', "<cmd>lua require'hop'.hint_words()<cr>", {})
map('n', '<leader><leader>l', "<cmd>lua require'hop'.hint_lines()<cr>", {})
map('n', '<leader>]', ':tabn<cr>', { noremap = true, silent = true })
map('n', '<leader>[', ':tabp<cr>', { noremap = true, silent = true })
map('n', '<C-b>', ':NvimTreeFindFileToggle<cr>', { noremap = true, silent = true })
