return require('packer').startup(
function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            ,branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'Mofiqul/vscode.nvim'
	use('nvim-treesitter/nvim-treesitter', {run=':TSUpdate'})
	use 'nvim-treesitter/playground'
	use 'mbbill/undotree'
	use 'tpope/vim-fugitive'
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	use 'ryanoasis/vim-devicons'
	use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
  }
  use {
	  "numToStr/Comment.nvim",
	  -- keys = { "gc", "gb" },
	  init = function()
		  require("core.utils").load_mappings "comment"
	  end,
	  config = function()
		  require("Comment").setup()
	  end,
  }
end)

