local fs = require "utils.fs"

local plugins = {
	{
		"mfussenegger/nvim-lint",
		optional = true,
		opts = {
			linters_by_ft = {
				lua = { "selene" },
			},
			---@type table<string, table>
			linters = {
				selene = {
					condition = function(ctx)
						return vim.fs.find({ "selene.toml" }, { path = ctx.filename, upward = true })[1]
					end,
				},
			},
		},
	},
}

---@param plugin LazyPluginSpec
local function add_plugin(plugin)
	table.insert(plugins, plugin)
end

if fs.exists "mpv" then
	add_plugin {
		"Frestein/mpv-types-lua",
	}

	if vim.fn.expand("%:p"):match "mpv" then
		add_plugin {
			"folke/lazydev.nvim",
			optional = true,
			opts = {
				library = {
					{ path = "mpv-types-lua/types", words = { "mp" } },
				},
			},
		}
	end
end

return plugins
