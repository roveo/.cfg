local tt = require("toggleterm")

tt.setup({
	size = function(term)
		if term.direction == "horizontal" then
			return vim.o.lines * 0.4
		elseif term.direction == "vertical" then
			return vim.o.columns * 0.4
		end
	end,
	shade_terminals = false,
	open_mapping = [[<C-\>]],
	direction = "float",
})

-- esc to enter normal mode while in terminal (scrolling etc)
vim.keymap.set("t", "<C-n>", [[<C-\><C-n>]])

-- lazygit with <C-g>
local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, close_on_exit = true, id = 2 })

function _lazygit_toggle()
	lazygit:toggle()
end

vim.keymap.set("n", "<C-g>", _lazygit_toggle)
vim.keymap.set("t", "<C-g>", _lazygit_toggle)

vim.api.nvim_create_user_command("RunSQL", function(tbl)
	vim.cmd.normal('"sy')
	local text = vim.fn.getreg("s")

	local f = assert(io.open("/tmp/sql_query.sql", "w"))
	f:write(text)
	f:close()

	local command = string.format("cat /tmp/sql_query.sql | $RUN_SQL | vd -f csv --theme=light -", text)

	local visidata_term = Terminal:new({
		cmd = command,
		direction = "float",
		close_on_exit = true,
		id = 3,
	})
	visidata_term:toggle()
end, { range = true })

vim.keymap.set("v", "<C-r>", function()
	vim.cmd("RunSQL")
end)
