local M = {}

function M.map(mode, lhs, rhs, outer_options)
	local options = { noremap = true }
	if outer_options then
		options = vim.tbl_extend("force", options, outer_options)
	end
	vim.keymap.set(mode, lhs, rhs, options)
end

return M
