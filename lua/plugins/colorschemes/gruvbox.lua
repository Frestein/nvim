return {
	{
		"ellisonleao/gruvbox.nvim",
		opts = {
			overrides = {
				-- WinBar = { link = "GruvboxFg4" },
				-- WinBarNC = { link = "GruvboxFg4" },
				-- NvimSeparator = { fg = colors.dark4 },
				-- StatusLineNC = {
				-- 	fg = colors.light4,
				-- 	bg = colors.dark0,
				-- },
				-- FloatBorder = {
				-- 	fg = colors.light4,
				-- 	bg = colors.dark0,
				-- },
				QuickFixLine = { link = "Visual" },
				--- mini.files ---
				-- MiniFilesTitle = {
				-- 	fg = colors.light4,
				-- 	bg = colors.dark0,
				-- },
				-- MiniFilesTitleFocused = {
				-- 	fg = colors.light2,
				-- 	bg = colors.dark0,
				-- },
				--- foldtext.lua ---
				-- FoldedSpace = {
				-- 	fg = "NONE",
				-- 	bg = "NONE",
				-- },
				-- FoldedIcon = {
				-- 	fg = "NONE",
				-- },
				-- FoldedText = {
				-- 	bg = "NONE",
				-- 	fg = colors.light4,
				-- 	italic = true,
				-- },
				--- trouble.nvim ---
				-- TroubleStatusline1 = { link = "Normal" },
				-- TroubleSeparatorHighlight = { fg = colors.bright_yellow, bg = colors.dark4 },
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
				SnacksIndentScope = { link = "GruvboxGray" },
				SnacksIndentChunk = { link = "GruvboxGray" },
				--- noice.nvim ---
				NoiceLspProgressTitle = {
					link = "Comment",
				},
				--- lazy.nvim  ---
				LazyUpdates = {
					link = "GruvboxGreen",
				},
				--- highlight-undo.nvim ---
				HighlightUndo = {
					link = "DiffChange",
				},
				--- gitsigns.nvim ---
				GitSignsCurrentLineBlame = { link = "Comment" },
				--- symbols-usage.nvim ---
				SymbolUsageContent = { link = "Comment", italic = true },
				SymbolUsageRef = { link = "Function", italic = true },
				SymbolUsageDef = { link = "Type", italic = true },
				SymbolUsageImpl = { link = "Keyword", italic = true },
			},
		},
	},

	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "gruvbox",
		},
	},
}
