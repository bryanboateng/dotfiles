return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		"projekt0n/github-nvim-theme",
		config = "require('plugin_configs.github_theme')"
	}
	use {
		'lewis6991/gitsigns.nvim',
		config = "require('plugin_configs.gitsigns')"
	}
	use {
		"nvim-lualine/lualine.nvim",
		after = "github-nvim-theme",
		config = "require('plugin_configs.lualine')"
	}
	use {
		'neovim/nvim-lspconfig',
		requires = {
			{'hrsh7th/cmp-nvim-lsp'},
		},
		config = "require('plugin_configs.nvim_lspconfig')"
	}
	use {
		'hrsh7th/nvim-cmp',
		config = "require('plugin_configs.nvim_cmp')"
	}
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ":TSUpdate",
		config = "require('plugin_configs.nvim_treesitter')"
	}
	use {
		'nvim-telescope/telescope.nvim',
		branch = '0.1.x',
		requires = {
			{'nvim-lua/plenary.nvim'},
			{'nvim-telescope/telescope-fzy-native.nvim'}
		},
		config = "require('plugin_configs.nvim_telescope')"
	}
end)
