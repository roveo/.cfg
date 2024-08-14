vim.g.mapleader = " "

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.fixeol = true
vim.opt.title = true
vim.opt.titlestring = "%{fnamemodify(getcwd(), ':t')} ~ %f"
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.wo.wrap = false

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("roveo.plugins")
require("roveo.colorscheme")
require("roveo.map")
require("roveo.lsp")

