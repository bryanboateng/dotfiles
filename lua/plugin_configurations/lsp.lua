local options = { noremap = true, silent = true }
vim.keymap.set('n', '<Leader>e', vim.diagnostic.open_float, options)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, options)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, options)
vim.keymap.set('n', '<Leader>q', vim.diagnostic.setloclist, options)

local on_attach = function(_, bufnr)
	local buffer_options = { noremap = true, silent = true, buffer = bufnr }

	-- Displays hover information about the symbol under the cursor
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, buffer_options)

	-- Jump to the definition
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, buffer_options)

	-- Jump to declaration
	vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, buffer_options)

	-- Lists all the implementations for the symbol under the cursor
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, buffer_options)

	-- Jumps to the definition of the type symbol
	vim.keymap.set('n', '<Leader>D', vim.lsp.buf.type_definition, buffer_options)

	-- Lists all the references
	vim.keymap.set('n', 'gr', vim.lsp.buf.references, buffer_options)

	-- Displays a function's signature information
	vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, buffer_options)

	-- Renames all references to the symbol under the cursor
	vim.keymap.set('n', '<Leader>rn', vim.lsp.buf.rename, buffer_options)

	-- Selects a code action available at the current cursor position
	vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action, buffer_options)

	-- Formats
	vim.keymap.set('n', '<Leader>rf', function() vim.lsp.buf.format { async = true } end, buffer_options)

	-- Workspace folders
	vim.keymap.set('n', '<Leader>wa', vim.lsp.buf.add_workspace_folder, buffer_options)
	vim.keymap.set('n', '<Leader>wr', vim.lsp.buf.remove_workspace_folder, buffer_options)
	vim.keymap.set('n', '<Leader>wl', function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, buffer_options)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig')['tsserver'].setup {
	on_attach = on_attach,
	capabilities = capabilities,
}

require('lspconfig')['sumneko_lua'].setup {
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = 'LuaJIT',
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { 'vim' },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
		},
	},
}
require('lspconfig')['sourcekit'].setup {
	on_attach = on_attach,
	capabilities = capabilities,
}
require('lspconfig')['tailwindcss'].setup {
	on_attach = on_attach,
	capabilities = capabilities,
}
