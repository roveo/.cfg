local easypick = require("easypick")

easypick.setup({
	pickers = {
		{
			name = "zoxide",
			command = "zoxide query -l",
			previewer = easypick.previewers.default(),
			action = easypick.actions.nvim_commandf("cd %s | e ."),
		},
	},
})
