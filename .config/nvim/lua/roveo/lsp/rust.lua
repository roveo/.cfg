local lspconfig = require("lspconfig")

lspconfig.rust_analyzer.setup({
	capabilities = vim.lsp.protocol.make_client_capabilities(),
	--
	-- Server-specific settings. See `:help lspconfig-setup`
	settings = {
		["rust-analyzer"] = {},
	},
})
