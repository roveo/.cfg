require("nvim-tree").setup({
	view = {
		width = 50,
		signcolumn = "yes",
	},
	reload_on_bufenter = true,
	sync_root_with_cwd = true,
	respect_buf_cwd = true,
	renderer = {
		highlight_git = "name",
		icons = {
			git_placement = "signcolumn",
		},
	},
	update_focused_file = {
		enable = true,
	},
	filters = {
		git_ignored = false,
		dotfiles = false,
	},
})

vim.keymap.set("n", "<C-f>", "<cmd>NvimTreeToggle<CR>")
