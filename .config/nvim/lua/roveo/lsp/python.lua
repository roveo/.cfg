local lspconfig = require("lspconfig")

lspconfig.jedi_language_server.setup({})
lspconfig.ruff_lsp.setup({
	init_options = {
		settings = {
			args = { "--extend-select", "I" },
		},
	},
})
