local dap = require("dap")

-- debugger keymaps
-- languages use their own maps autocmds, see go.lua for how "debug test" is set up
vim.keymap.set("n", "<F5>", dap.continue)
vim.keymap.set("n", "<F6>", dap.step_out)
vim.keymap.set("n", "<F7>", dap.step_into)
vim.keymap.set("n", "<F8>", dap.step_over)
vim.keymap.set("n", "<F9>", dap.toggle_breakpoint)
vim.keymap.set("n", "<F10>", dap.restart)
vim.keymap.set("n", "<F12>", dap.terminate)

local widgets = require("dap.ui.widgets")
vim.keymap.set("n", "<leader>ds", widgets.sidebar(widgets.scopes).toggle)
vim.keymap.set("n", "<leader>dp", widgets.preview)
vim.keymap.set("n", "<leader>dr", dap.repl.toggle)
