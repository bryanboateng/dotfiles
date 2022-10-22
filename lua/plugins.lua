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
			{'hrsh7th/cmp-nvim-lsp'},
		},
		config = "require('plugin_configurations.lsp')"
	}
	use {
		'hrsh7th/nvim-cmp',
		config = "require('plugin_configurations.cmp')"
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
