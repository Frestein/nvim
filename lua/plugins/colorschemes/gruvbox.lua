return {
	{
		"ellisonleao/gruvbox.nvim",
		opts = function()
			local colors = require("gruvbox").palette
			return {
				overrides = {
					--- blink.cmp ---
					BlinkCmpKindSupermaven = { link = "GruvboxYellow" },
					--- snacks.nvim ---
					SnacksPickerDir = { link = "GruvboxGray" },
					SnacksPickerPathHidden = { link = "GruvboxGray" },
					SnacksPickerGitStatusUntracked = { link = "GruvboxGray" },
					SnacksPicker = { link = "Normal" },
					SnacksPickerBorder = { link = "Grey" },
					SnacksPickerTitle = { link = "Title" },
					SnacksPickerFooter = { link = "SnacksPickerTitle" },
					SnacksPickerPrompt = { link = "Orange" },
					SnacksPickerInputCursorLine = { link = "Normal" },
					SnacksPickerToggle = { link = "CursorLine" },
					SnacksPickerBufFlags = { link = "Grey" },
					SnacksPickerSelected = { link = "Aqua" },
					SnacksPickerKeymapRhs = { link = "Grey" },
					--- gitsigns.nvim ---
					GitSignsCurrentLineBlame = { link = "Comment" },
					--- symbols-usage.nvim ---
					SymbolUsageContent = { link = "Comment", italic = true },
					SymbolUsageRef = { link = "Function", italic = true },
					SymbolUsageDef = { link = "Type", italic = true },
					SymbolUsageImpl = { link = "Keyword", italic = true },
				},
			}
		end,
	},

	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "gruvbox",
		},
	},
}
