return {
	{
		"mfussenegger/nvim-lint",
		optional = true,
		opts = {
			linters_by_ft = {
				["yaml.ansible"] = { "ansible_lint" },
			},
		},
	},
}
