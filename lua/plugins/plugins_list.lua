return {
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
    },
    {'nvim-tree/nvim-tree.lua',
        config = function()
            require("nvim-tree").setup {}
        end,
    },
    {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    },
    {'airblade/vim-gitgutter',
    init = function()
      -- load gitsigns only when a git file is opened
      vim.api.nvim_create_autocmd({ "BufRead" }, {
        group = vim.api.nvim_create_augroup("GitSignsLazyLoad", { clear = true }),
        callback = function()
          vim.fn.system("git -C " .. '"' .. vim.fn.expand "%:p:h" .. '"' .. " rev-parse")
          if vim.v.shell_error == 0 then
            vim.api.nvim_del_augroup_by_name "GitSignsLazyLoad"
            vim.schedule(function()
              require("lazy").load { plugins = { "gitsigns.nvim" } }
            end)
          end
        end,
      })
    end,
    },
}
