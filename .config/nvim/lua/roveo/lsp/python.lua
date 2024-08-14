require("lspconfig").jedi_language_server.setup({})
require("lspconfig").ruff_lsp.setup({
	init_options = {
		settings = {
			args = { "--extend-select", "I" },
		},
	},
})
