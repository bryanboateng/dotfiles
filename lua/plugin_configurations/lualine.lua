require("lualine").setup {
	options = {
		icons_enabled = false,
		section_separators = '',
		component_separators = ''
	},
	sections = {
		lualine_a = {},
		lualine_x = {'filetype'}
	}
}
