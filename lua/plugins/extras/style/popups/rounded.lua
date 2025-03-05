return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			diagnostics = {
				float = { border = "rounded" },
			},
		},
	},

	{
		"neovim/nvim-lspconfig",
		opts = function()
			require("lspconfig.ui.windows").default_options.border = "rounded"
		end,
	},

	{
		"folke/noice.nvim",
		opts = {
			presets = {
				lsp_doc_border = true,
			},
			views = {
				hover = {
					size = {
						max_width = 80,
					},
				},
			},
		},
	},

	{
		"saghen/blink.cmp",
		---@module 'blink.cmp'
		---@type blink.cmp.Config | { sources: { compat: string[] } }
		opts = {
			completion = {
				menu = {
					border = "single",
					scrollbar = false,
					winblend = vim.o.pumblend,
				},
				documentation = { window = { border = "single" } },
			},
			signature = { window = { border = "single" } },
		},
	},

	{
		"folke/snacks.nvim",
		opts = function()
			require("snacks").config.style("news", {
				border = "rounded",
				backdrop = false,
				width = 0.84,
				height = 0.62,
			})
		end,
	},
}
