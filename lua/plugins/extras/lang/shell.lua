return {
	{
		"mfussenegger/nvim-lint",
		opts = {
			linters_by_ft = {
				bash = { "shellcheck", "bash" },
				fish = { "fish" },
				sh = { "shellcheck", "bash" },
				zsh = { "zsh" },
			},
		},
	},
}
