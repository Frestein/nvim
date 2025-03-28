return {
	{
		"saghen/blink.cmp",
		optional = true,
		---@module 'blink.cmp'
		---@type blink.cmp.Config | { sources: { compat: string[] } }
		opts = {
			completion = {
				menu = {
					draw = {
						-- We don't need label_description now because label and label_description are already
						-- combined together in label by colorful-menu.nvim.
						columns = { { "kind_icon" }, { "label", gap = 1 } },
						components = {
							label = {
								text = function(ctx)
									return require("colorful-menu").blink_components_text(ctx)
								end,
								highlight = function(ctx)
									return require("colorful-menu").blink_components_highlight(ctx)
								end,
							},
						},
					},
				},
			},
		},
	},

	{
		"xzbdmw/colorful-menu.nvim",
		opts = {},
	},
}
