return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		"projekt0n/github-nvim-theme",
		config = "require('bryanboateng.plugin_configs.github_theme')"
	}
	use {
		'lewis6991/gitsigns.nvim',
		config = "require('bryanboateng.plugin_configs.gitsigns')"
	}
	use {
		"nvim-lualine/lualine.nvim",
		after = "github-nvim-theme",
		config = "require('bryanboateng.plugin_configs.lualine')"
	}
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ":TSUpdate",
		config = "require('bryanboateng.plugin_configs.nvim_treesitter')"
	}
	use {
		'nvim-telescope/telescope.nvim',
		branch = '0.1.x',
		requires = {
			{'nvim-lua/plenary.nvim'},
			{'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
		},
		config = "require('bryanboateng.plugin_configs.nvim_telescope')"
	}
end)
