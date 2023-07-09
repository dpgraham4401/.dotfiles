local M = {}

M.config = {
	size = 20,
	hide_numbers = true, -- hide the number column in toggleterm buffers
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 2, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
	start_in_insert = true,
	insert_mappings = true, -- whether or not the open mapping applies in insert mode
    terminal_mappings = true,
	persist_size = true,
	direction = "float",
	close_on_exit = true, -- close the terminal window when the process exits
	shell = vim.o.shell, -- change the default shell
	float_opts = {
		border = "curved",
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
