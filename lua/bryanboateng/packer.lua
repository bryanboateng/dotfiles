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
end)
