local lsp = vim.g.lazyvim_python_lsp or "pyright"

return {
	{
		"neovim/nvim-lspconfig",
		optional = true,
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
		optional = true,
		opts = {
			linters_by_ft = {
				python = { "ruff" },
			},
		},
	},

	{
		"stevearc/conform.nvim",
		optional = true,
		cmd = "ConformInfo",
		---@module "conform"
		---@type conform.setupOpts
		opts = {
			formatters_by_ft = {
				python = { "ruff_format", "ruff_organize_imports", "ruff_fix", "black" },
			},
		},
	},
}
