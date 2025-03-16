return {
	recommended = function()
		return LazyVim.extras.wants {
			ft = "systemd",
		}
	end,

	{
		"neovim/nvim-lspconfig",
		optional = true,
		---@class PluginLspOpts
		opts = {
			---@type lspconfig.options
			servers = {
				systemd_ls = {},
			},
			setup = {
				systemd_ls = function()
					local configs = require "lspconfig.configs"

					if not configs.systemd_ls then
						configs.systemd_ls = {
							default_config = {
								cmd = { "systemd-language-server" },
								filetypes = { "systemd" },
								root_dir = function(fname)
									return vim.fs.dirname(vim.fs.find(".git", { path = fname, upward = true })[1])
								end,
								single_file_support = true,
							},
							docs = {
								description = [[
https://github.com/psacawa/systemd-language-server
`systemd-language-server` can be installed via `pip`:
```sh
pip install systemd-language-server
```
Language Server for Systemd unit files
]],
							},
						}
					end
				end,
			},
		},
	},

	{
		"mfussenegger/nvim-lint",
		optional = true,
		opts = {
			linters_by_ft = {
				systemd = { "systemd-analyze" },
			},
		},
	},
}
