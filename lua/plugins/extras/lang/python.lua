local lsp = vim.g.lazyvim_python_lsp or "pyright"

return {
	{
		"neovim/nvim-lspconfig",
		---@class PluginLspOpts
		opts = {
			---@type lspconfig.options
			servers = {
				[lsp] = {
					settings = {
						[lsp] = {
							analysis = {
								diagnosticMode = "workspace",
								typeCheckingMode = "off",
							},
						},
					},
				},
			},
		},
	},

	{
		"mfussenegger/nvim-lint",
		opts = {
			linters_by_ft = {
				python = { "ruff" },
			},
		},
	},
}
