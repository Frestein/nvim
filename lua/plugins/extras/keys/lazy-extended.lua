local map = vim.keymap.set

map("n", "<leader>ll", "<cmd>Lazy home<cr>", { desc = "Home" })
map("n", "<leader>ls", "<cmd>Lazy sync<cr>", { desc = "Sync" })
map("n", "<leader>lp", "<cmd>Lazy profile<cr>", { desc = "Profile" })
map("n", "<leader>lx", "<cmd>LazyExtra<cr>", { desc = "Extra" })

return {
	"folke/which-key.nvim",
	optional = true,
	opts = function(_, opts)
		table.insert(opts.spec, { "<leader>l", group = "lazy" })
	end,
}
