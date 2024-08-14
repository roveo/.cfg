require("nvim-treesitter.configs").setup({
    highlight = {
        enable = true,
        ensure_installed = {"python", "go", "rust", "html", "json", "yaml"},
    },
})


