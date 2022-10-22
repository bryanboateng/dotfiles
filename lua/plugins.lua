return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		"projekt0n/github-nvim-theme",
		config = "require('plugin_configurations.theme')"
	}
	use {
		'lewis6991/gitsigns.nvim',
		config = "require('plugin_configurations.gitsigns')"
	}
	use {
		"nvim-lualine/lualine.nvim",
		after = "github-nvim-theme",
		config = "require('plugin_configurations.lualine')"
	}
	use {
		'neovim/nvim-lspconfig',
		requires = {
			{
				'hrsh7th/nvim-cmp',
				requires = {
					{ 'L3MON4D3/LuaSnip' },
					{ 'hrsh7th/cmp-nvim-lsp' },
					{ 'hrsh7th/cmp-path' },
					{ 'saadparwaiz1/cmp_luasnip' },
				},
				config = "require('plugin_configurations.cmp')"
			},
		},
		config = "require('plugin_configurations.lsp')"
	}
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ":TSUpdate",
		config = "require('plugin_configurations.treesitter')"
	}
	use {
		'nvim-telescope/telescope.nvim',
		branch = '0.1.x',
		requires = {
			{'nvim-lua/plenary.nvim'},
			{'nvim-telescope/telescope-fzy-native.nvim'}
		},
		config = "require('plugin_configurations.telescope')"
	}
end)
