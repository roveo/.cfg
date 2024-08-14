require("zen-mode").setup({
	window = {
		backdrop = 0.9,
		width = 120,
	},
})

vim.keymap.set("n", "<leader>z", ":ZenMode<CR>", { noremap = true, silent = true })
