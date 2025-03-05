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

		"lewis6991/gitsigns.nvim",
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
