return {
	{
		"artemave/workspace-diagnostics.nvim",
		opts = {},
	},

	{
		"neovim/nvim-lspconfig",
        -- stylua: ignore
		opts = function()
			local lsp = vim.lsp.buf
			local keys = require("lazyvim.plugins.lsp.keymaps").get()

			keys[#keys + 1] = { "<leader>cwa", function() lsp.add_workspace_folder() end, desc = "Add Folder (LSP)" }
			keys[#keys + 1] = { "<leader>cwr", function() lsp.remove_workspace_folder() end, desc = "Remove Folder (LSP)" }
			keys[#keys + 1] = { "<leader>cwl", function() print(vim.inspect(lsp.list_workspace_folders())) end, desc = "List Folders (LSP)" }
			keys[#keys + 1] = {
				"<leader>cwp",
				function()
					for _, client in ipairs(vim.lsp.get_clients()) do
						require("workspace-diagnostics").populate_workspace_diagnostics(client, 0)
					end
				end,
				desc = "Populate Diagnostics (LSP)",
			}
		end,
	},
}
