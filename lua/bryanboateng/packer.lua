return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		"projekt0n/github-nvim-theme",
		config = "require('bryanboateng.plugin_configs.github_theme')"
	}
	use 'lewis6991/gitsigns.nvim'
	use {
		"nvim-lualine/lualine.nvim",
		after = "github-nvim-theme",
		config = "require('bryanboateng.plugin_configs.lualine')"
	}
end)
