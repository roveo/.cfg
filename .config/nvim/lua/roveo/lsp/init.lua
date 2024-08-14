require("roveo.lsp.go")
require("roveo.lsp.lua")
require("roveo.lsp.python")
require("roveo.lsp.rust")

vim.keymap.set("n", "<leader>R", vim.lsp.buf.rename)

-- show diagnostics in a floating window
vim.o.updatetime = 750
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
	group = vim.api.nvim_create_augroup("float_diagnostic", { clear = true }),
	callback = function()
		vim.diagnostic.open_float(nil, { focus = false })
	end,
})
