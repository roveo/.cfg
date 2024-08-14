local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("nvim-treesitter/playground")

	-- color scheme
	use({ "catppuccin/nvim", as = "catppuccin" })

	-- file search and navigation
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		requires = "nvim-lua/plenary.nvim",
	})

	-- language stuff
	use("mhartington/formatter.nvim")
	use("neovim/nvim-lspconfig")
	use("hrsh7th/nvim-cmp") -- autocomplete
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/vim-vsnip")

	use("github/copilot.vim")
	use("jparise/vim-graphql")

	-- debugging
	-- go
	use("mfussenegger/nvim-dap")
	use("leoluz/nvim-dap-go")

	-- pest (rust parser generator)
	use("pest-parser/pest.vim")

	-- testing
	use({
		"nvim-neotest/neotest",
		requires = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"nvim-neotest/neotest-go",
			"nvim-neotest/neotest-python",
			"nvim-neotest/neotest-plenary", -- this is for lua
		},
	})

	-- niceties
	use("lewis6991/gitsigns.nvim")
	use("nvim-tree/nvim-tree.lua")
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})

	-- show current function in top line
	use("nvim-treesitter/nvim-treesitter-context")

	-- terminal + lazygit
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
	})

	-- custom pickers
	use({ "axkirillov/easypick.nvim", requires = "nvim-telescope/telescope.nvim" })

	-- run Makefile targets
	use("sopa0/telescope-makefile")

	if packer_bootstrap then
		require("packer").sync()
	end

	-- zen mode
	use("folke/zen-mode.nvim")

	-- better standard interfaces
	use("stevearc/dressing.nvim")

	-- auto-insert bracket/paren pairs
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	-- indentation guides
	use({
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("ibl").setup({
				scope = { enabled = false },
			})
		end,
	})

	-- highlight current word
	use({
		"yamatsum/nvim-cursorline",
		config = function()
			require("nvim-cursorline").setup({ cursorline = { enable = false }, cursorword = { enable = true } })
		end,
	})

	use({ "folke/neodev.nvim", config = {} })

	require("roveo.plugins.treesitter")
	require("roveo.plugins.telescope")
	require("roveo.plugins.easypick")
	require("roveo.plugins.cmp")

	require("roveo.plugins.dap")
	require("roveo.plugins.dap-go")
	require("roveo.plugins.neotest")

	require("roveo.plugins.gitsigns")
	require("roveo.plugins.nvim-tree")
	require("roveo.plugins.formatter")
	require("roveo.plugins.toggleterm")
	require("roveo.plugins.zen-mode")
	require("roveo.plugins.dressing")
end)
