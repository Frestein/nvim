return {
	{
		"mfussenegger/nvim-lint",
		opts = {
			linters_by_ft = {
				lua = { "selene" },
			},
			---@type table<string,table>
			linters = {
				selene = {
					-- `condition` is another LazyVim extension that allows you to
					-- dynamically enable/disable linters based on the context.
					condition = function(ctx)
						return vim.fs.find({ "selene.toml" }, { path = ctx.filename, upward = true })[1]
					end,
				},
			},
		},
	},
}
