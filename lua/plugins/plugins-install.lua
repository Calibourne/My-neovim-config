return require('packer').startup(function()
    use 'wbthomason/packer.nvim' -- Package manager
    use 'b3nj5m1n/kommentary'
    -- UI to select things (files, grep results, open buffers...)
    use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } } }
    -- Appearance
    use 'sainnhe/everforest'
    use 'Mofiqul/vscode.nvim'
    use 'NTBBloodbath/doom-one.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'feline-nvim/feline.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'SmiteshP/nvim-gps'
    -- Add indentation guides even on blank lines
    use 'lukas-reineke/indent-blankline.nvim'
    -- Add git related info in the signs columns and popups
    use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
    -- Add Keybind hints
    use {
        'AckslD/nvim-whichkey-setup.lua',
        requires = {'liuchengxu/vim-which-key'}
    }
    -- Add Multi cursor
    use {'mg979/vim-visual-multi', branch= 'master'}
    -- Highlight, edit, and navigate code using a fast incremental parsing library
    use 'nvim-treesitter/nvim-treesitter'
    -- Toggle Comment
    use "terrortylor/nvim-comment"
    -- Code Folding
    use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}
    -- use{ 'anuvyklack/pretty-fold.nvim',}
        --[[ config = function()
            require('pretty-fold').setup()
        end ]]
    -- Additional textobjects for treesitter
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'phaazon/hop.nvim'
    use 'ntpeters/vim-better-whitespace'
    use 'alvan/vim-closetag'
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'saadparwaiz1/cmp_luasnip'
    use "rafamadriz/friendly-snippets"
    use 'editorconfig/editorconfig-vim'
    use 'kyazdani42/nvim-tree.lua'
    use 'APZelos/blamer.nvim'
    use 'lewis6991/impatient.nvim'
    use 'nathom/filetype.nvim'
    use 'antoinemadec/FixCursorHold.nvim'
    use 'Pocco81/auto-save.nvim'
    use 'AndrewRadev/splitjoin.vim'

    -- Live Markdown
    use ({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
end)
