return {
	{
		"mfussenegger/nvim-lint",
		opts = {
			linters_by_ft = {
				["yaml.ansible"] = { "ansible_lint" },
			},
		},
	},
}
