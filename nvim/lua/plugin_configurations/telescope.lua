local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<Leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<Leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<Leader>fh', builtin.help_tags, {})

require('telescope').setup {
	defaults = {
		path_display={'truncate'},
		layout_strategy = 'flex'
	}
}
require('telescope').load_extension('fzy_native')
