local go = require("formatter.filetypes.go")
local rust = require("formatter.filetypes.rust")

require("formatter").setup({
	filetype = {
		lua = { require("formatter.filetypes.lua").stylua },
		go = {
			go.goimports,
			function()
				return { exe = "gofumpt", stdin = true }
			end,
		},
		python = {
			function()
				return {
					exe = "ruff",
					args = { "format", "-q", "-" },
					stdin = true,
				}
			end,
			function()
				return {
					exe = "ruff",
					args = { "check", "--select", "I", "--fix", "-q", "-" },
					stdin = true,
				}
			end,
		},
		rust = {
			rust.rustfmt,
			rust.cargoFmt,
		},
		sql = {
			function()
				return {
					exe = "sqlfmt -",
					stdin = true,
				}
			end,
		},
	},
})

-- format on save (from README.md)
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
augroup("__formatter__", { clear = true })
autocmd("BufWritePost", {
	group = "__formatter__",
	command = ":FormatWrite",
})
