return {
	{
		"snacks.nvim",
		opts = {
			indent = {
				animate = {
					enabled = false,
				},
			},
			statuscolumn = {
				folds = {
					open = true,
					git_hl = true,
				},
			},
		},
	},

	{
		"neovim/nvim-lspconfig",
		optional = true,
		---@class PluginLspOpts
		opts = {
			---@type vim.diagnostic.Opts
			diagnostics = {
				virtual_text = { prefix = "" },
			},
		},
	},

	{
		"lewis6991/gitsigns.nvim",
		optional = true,
		opts = {
			signs = {
				add = { text = "┃" },
				change = { text = "┃" },
				delete = { text = "" },
				topdelete = { text = "" },
				changedelete = { text = "󱕖" },
			},
			signs_staged = {
				add = { text = "┃" },
				change = { text = "┃" },
				delete = { text = "" },
				topdelete = { text = "" },
				changedelete = { text = "󱕖" },
			},
		},
	},
}
