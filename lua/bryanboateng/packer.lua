return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use 'projekt0n/github-nvim-theme'
	use 'lewis6991/gitsigns.nvim'
end)