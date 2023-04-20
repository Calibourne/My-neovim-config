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
end
)