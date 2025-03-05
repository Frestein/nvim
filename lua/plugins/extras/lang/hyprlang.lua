return {
	"neovim/nvim-lspconfig",
	optional = true,
	---@class PluginLspOpts
	opts = {
		---@type lspconfig.options
		servers = {
			hyprls = {},
		},
	},
}
