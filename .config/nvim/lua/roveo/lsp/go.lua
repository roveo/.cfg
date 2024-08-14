local lspc = require("lspconfig")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspc.gopls.setup {
	capabilities = capabilities,
}


