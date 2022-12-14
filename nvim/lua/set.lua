vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 3
vim.opt.shiftwidth = 3
vim.opt.smartindent = true

vim.opt.hlsearch = false

vim.opt.linebreak = true
vim.opt.breakindent = true

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.opt.listchars= {
	eol = '\\u00AC',
	tab = '\\u00BB\\u0020',
	space = '\\u00B7',
	precedes = '\\u27E8',
	extends = '\\u27E9',
	trail = '\\u00D7',
	nbsp = '\\u00B0'
}
vim.opt.list = true

vim.g.mapleader = " "

vim.g.netrw_bufsettings = ''
		.. ' number'
		.. ' relativenumber'
		.. ' nomodifiable'
		.. ' nobuflisted'
		.. ' nowrap'
		.. ' readonly'
