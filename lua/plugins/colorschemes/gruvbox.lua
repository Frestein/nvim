return {
	{
		"ellisonleao/gruvbox.nvim",
		opts = function()
			local colors = require("gruvbox").palette
			return {
				overrides = {
					--- blink.cmp ---
					BlinkCmpLabel = { link = "GruvboxFg0" },
					BlinkCmpLabelDeprecated = { link = "GruvboxFg1" },
					BlinkCmpLabelMatch = { link = "GruvboxBlueBold" },
					BlinkCmpLabelDetail = { link = "GruvboxGray" },
					BlinkCmpLabelDescription = { link = "GruvboxGray" },
					BlinkCmpKindText = { link = "GruvboxOrange" },
					BlinkCmpKindVariable = { link = "GruvboxOrange" },
					BlinkCmpKindMethod = { link = "GruvboxBlue" },
					BlinkCmpKindFunction = { link = "GruvboxBlue" },
					BlinkCmpKindConstructor = { link = "GruvboxYellow" },
					BlinkCmpKindUnit = { link = "GruvboxBlue" },
					BlinkCmpKindField = { link = "GruvboxBlue" },
					BlinkCmpKindClass = { link = "GruvboxYellow" },
					BlinkCmpKindInterface = { link = "GruvboxYellow" },
					BlinkCmpKindModule = { link = "GruvboxBlue" },
					BlinkCmpKindProperty = { link = "GruvboxBlue" },
					BlinkCmpKindValue = { link = "GruvboxOrange" },
					BlinkCmpKindEnum = { link = "GruvboxYellow" },
					BlinkCmpKindOperator = { link = "GruvboxYellow" },
					BlinkCmpKindKeyword = { link = "GruvboxPurple" },
					BlinkCmpKindEvent = { link = "GruvboxPurple" },
					BlinkCmpKindReference = { link = "GruvboxPurple" },
					BlinkCmpKindColor = { link = "GruvboxPurple" },
					BlinkCmpKindSnippet = { link = "GruvboxGreen" },
					BlinkCmpKindFile = { link = "GruvboxBlue" },
					BlinkCmpKindFolder = { link = "GruvboxBlue" },
					BlinkCmpKindEnumMember = { link = "GruvboxAqua" },
					BlinkCmpKindConstant = { link = "GruvboxOrange" },
					BlinkCmpKindStruct = { link = "GruvboxYellow" },
					BlinkCmpKindTypeParameter = { link = "GruvboxYellow" },
					BlinkCmpSource = { link = "GruvboxGray" },
					BlinkCmpGhostText = { link = "GruvboxBg4" },
					-- snacks.nvim ---
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
