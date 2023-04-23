local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
	-- Packer can manage itself
    -- 'wbthomason/packer.nvim',
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            ,branch = '0.1.x',
		dependencies = { {'nvim-lua/plenary.nvim'} }
	},
	'Mofiqul/vscode.nvim',
	{'nvim-treesitter/nvim-treesitter', init=function() 
        pcall(vim.cmd,':TSUpdate')
    end},
	'nvim-treesitter/playground',
	'mbbill/undotree',
	'tpope/vim-fugitive',
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { {'nvim-tree/nvim-web-devicons'} }
	},
	'ryanoasis/vim-devicons',
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		dependencies = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
			'williamboman/mason.nvim',
			init = function()
				pcall(vim.cmd, ':MasonUpdate')
			end,
		},
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},     -- Required
		{'hrsh7th/cmp-nvim-lsp'}, -- Required
		{'L3MON4D3/LuaSnip'},     -- Required
	    }
    },
    {"numToStr/Comment.nvim",
        config = function()
		    require("Comment").setup()
		end
    }
}
local opts = {}
require("lazy").setup(plugins, opts)
