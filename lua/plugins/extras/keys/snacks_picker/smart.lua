return {
	{
		"folke/snacks.nvim",
		-- stylua: ignore
		keys = {
			{ "<leader><space>", function() Snacks.picker.smart() end, desc = "Find Files (smart)" },
		},
	},
}
