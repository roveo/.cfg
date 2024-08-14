require("nvim-tree").setup({
	view = {
		width = 50,
	},
	reload_on_bufenter = true,
	sync_root_with_cwd = true,
	respect_buf_cwd = true,
	update_focused_file = {
		enable = true,
		update_root = true,
	},
})

vim.keymap.set("n", "<C-f>", "<cmd>NvimTreeToggle<CR>")
