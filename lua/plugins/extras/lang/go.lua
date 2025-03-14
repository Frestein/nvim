return {
	{

		"ray-x/go.nvim",
		ft = { "go", "gomod" },
		config = function(_, opts)
			require("go").setup(opts)
		end,
	},

	{
		"mfussenegger/nvim-lint",
		optional = true,
		opts = {
			linters_by_ft = {
				go = { "golangcilint" },
				gomod = { "golangcilint" },
			},
		},
	},
}
