local neotest = require("neotest")
local python = require("neotest-python")
local go = require("neotest-go")
local lua = require("neotest-plenary")

neotest.setup({
	log_level = vim.log.levels.DEBUG,
	adapters = {
		python({
			dap = { justMyCode = false },
		}),
		go({
			args = { "-count=1", "-timeout=300s" },
		}),
		lua,
	},
})

-- run nearest
vim.keymap.set("n", "<leader>tt", function()
	neotest.run.run()
end)

-- run file
vim.keymap.set("n", "<leader>tf", function()
	neotest.run.run(vim.fn.expand("%"))
end)

-- open results panel
vim.keymap.set("n", "<leader>tp", function()
	neotest.output_panel.toggle()
end)

-- open summary panel
vim.keymap.set("n", "<leader>ts", function()
	neotest.summary.toggle()
end)

-- open output window
vim.keymap.set("n", "<leader>to", function()
	neotest.output.open({ enter = true })
end)
