local M = require 'utils'
local map = M.map
local g = M["g"]

-- Remap space as leader key

map('', '<Space>', '<Nop>', { noremap = true, silent = true })
g.mapleader = ' '
g.maplocalleader = ' '

-- Remap for dealing with word wrap
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

map('i', 'jk', '<Esc>', {noremap = true, silent = true})

-- Add leader shortcuts
map('n', '<leader>w', [[:w<CR>]], { noremap = true, silent = true })
map('n', '<leader>q', [[:q<CR>]], { noremap = true, silent = true })
map('n', '<leader>/', [[:noh<CR>]], { noremap = true, silent = true })
map('n', '<leader>s', [[:StripWhitespace<CR>]], { noremap = true, silent = true })
map('n', '<leader>fp', [[:let @+ = expand("%")<CR>]], { noremap = true, silent = true })
map('n', '<leader>b', [[:Telescope buffers<CR>]], { noremap = true, silent = true })
map('n', '<leader>o', [[:Telescope find_files<CR>]], { noremap = true, silent = true })
map('n', '<leader>ff', [[:Telescope current_buffer_fuzzy_find<CR>]], { noremap = true, silent = true })
map('n', '<leader>lg', [[:Telescope live_grep<CR>]], { noremap = true, silent = true })

map('n', '<leader>?', [[:Telescope oldfiles<CR>]], { noremap = true, silent = true })
map('n', '<leader>i', [[:Telescope git_status<CR>]])
map('n', '<leader><leader>w', "<cmd>lua require'hop'.hint_words()<cr>", {})
map('n', '<leader><leader>l', "<cmd>lua require'hop'.hint_lines()<cr>", {})
map('n', '<leader>]', ':tabn<cr>', { noremap = true, silent = true })
map('n', '<leader>[', ':tabp<cr>', { noremap = true, silent = true })
map('n', '<C-b>', ':NvimTreeFindFileToggle<cr>', { noremap = true, silent = true })

map('n', '<A-Up>', ':m -2<cr>', {noremap = true, silent = true})
map('n', '<A-Down>', ':m +1<cr>', {noremap = true, silent = true})

map('n', '<leader>rf', 'gg=G<cr>', {noremap = true, silent = true})

map('i', "<S-Tab>", "<C-d>")


-- map('n', '<leader>sb', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]], { noremap = true, silent = true })
-- map('n', '<leader>o', [[<cmd>lua require('telescope.builtin').find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<CR>]], { noremap = true, silent = true })
-- map('n', '<leader>?', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]], { noremap = true, silent = true })
-- map('n', '<leader>sb', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]], { noremap = true, silent = true })
-- map('n', '<leader>b', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], { noremap = true, silent = true })
-- map('n', '<leader>i', '<cmd>lua require("telescope.builtin").git_status(require("telescope.themes").get_dropdown({}))<cr>')
-- map('n', '<leader>sp', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true, silent = true })
