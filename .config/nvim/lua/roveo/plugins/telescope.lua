local telescope = require("telescope")
telescope.setup()

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>f", builtin.find_files, {})
vim.keymap.set("n", "<leader>g", builtin.git_files, {})
vim.keymap.set("n", "<leader>s", builtin.live_grep)

vim.keymap.set("n", "<leader>b", builtin.buffers, {})

vim.keymap.set("n", "<leader>o", function()
	builtin.lsp_document_symbols({ symbol_width = 50 })
end)
vim.keymap.set("n", "<leader>p", function()
	builtin.lsp_dynamic_workspace_symbols({ symbol_width = 50 })
end)
vim.keymap.set("n", "<leader>r", builtin.lsp_references)

vim.keymap.set("n", "<leader>a", "<cmd>Easypick zoxide<CR>")

vim.keymap.set("n", "<leader>e", builtin.diagnostics)

telescope.load_extension("make")
vim.keymap.set("n", "<leader>m", "<cmd>Telescope make<CR>")
