local dap = require("dap-go")
dap.setup()

vim.api.nvim_create_autocmd("FileType", {
    pattern = "go",
    callback = function ()
        vim.keymap.set("n", "<leader>dt", dap.debug_test)
    end
})
