local M = {}

M.config = {
	-- size can be a number or function which is passed the current terminal
	size = 20,
	-- open_mapping = [[<c-\>]],
	hide_numbers = true, -- hide the number column in toggleterm buffers
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 2, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
	start_in_insert = false,
	insert_mappings = true, -- whether or not the open mapping applies in insert mode
	persist_size = true,
	-- direction = 'vertical' | 'horizontal' | 'window' | 'float',
	direction = "float",
	close_on_exit = true, -- close the terminal window when the process exits
	shell = vim.o.shell, -- change the default shell
	-- This field is only relevant if direction is set to 'float'
	float_opts = {
		-- The border key is *almost* the same as 'nvim_win_open'
		-- see :h nvim_win_open for details on borders however
		-- the 'curved' border is a custom border type
		-- not natively supported but implemented in this plugin.
		-- border = 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
		border = "curved",
		-- width = <value>,
		-- height = <value>,
		winblend = 0,
		highlights = { border = "Normal", background = "Normal" },
	},
}

M.setup = function()
	local status_ok, terminal = pcall(require, "toggleterm")
	if not status_ok then
		return
	end
	terminal.setup(M.config)
end

return M
