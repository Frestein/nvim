local M = {}

local function load_headers()
	local header_path = vim.fn.stdpath "config" .. "/lua/modules/dashboard/headers/"
	local themes = { "default" }
	local headers = {}

	for _, t in ipairs(M.themes) do
		if not vim.tbl_contains(themes, t.theme) then
			table.insert(themes, t.theme)
		end
	end

	for _, theme in ipairs(themes) do
		local theme_files = vim.fn.glob(header_path .. theme .. "/*.txt", true, true)
		headers[theme] = {}

		for _, file in ipairs(theme_files) do
			local content = vim.fn.readfile(file)
			local header_str = table.concat(content, "\n")
			table.insert(headers[theme], header_str)
		end
	end

	return headers
end

function M.get_header()
	local utils = require "modules.dashboard.utils"
	local headers = load_headers()
	local themes = M.themes

	math.randomseed(os.time())

	local date = os.date "*t"
	local year = tonumber(date.year)
	local month = tonumber(date.month)
	local day = tonumber(date.day)

	for _, t in ipairs(themes) do
		if t.holiday == "easter" then
			local easter = utils.calculate_easter()
			t.month = easter.month
			t.day = easter.day
			t.holiday = nil
		elseif t.holiday == "us_thanksgiving" then
			local thanksgiving = utils.calculate_us_thanksgiving()
			t.month = thanksgiving.month
			t.day = thanksgiving.day
			t.holiday = nil
		end

		local from = t.from or t
		local to = t.to or t

		if month >= from.month then
			from.year = year
			to.year = to.month < from.month and year + 1 or year
		else -- month < from.month
			from.year = year - 1
			to.year = to.month < from.month and year or year - 1
		end

		local ff = from.year * 10000 + from.month * 100 + from.day
		local tt = to.year * 10000 + to.month * 100 + to.day
		local dd = year * 10000 + month * 100 + day

		if dd >= ff and dd <= tt then
			local random_index = math.random(#headers[t.theme])
			return headers[t.theme][random_index]
		end
	end

	local random_index = math.random(#headers["default"])
	return headers["default"][random_index]
end

M.themes = {
	{ theme = "halloween", month = 10, day = 31 },
	{ theme = "starwars", from = { month = 11, day = 1 }, to = { month = 11, day = 30 } },
	{ theme = "xmas", from = { month = 12, day = 28 }, to = { month = 1, day = 14 } },
}

-- stylua: ignore
---@type snacks.dashboard.Item[]
M.keys = {
	{ icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
	{ icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
	{ icon = " ", key = "p", desc = "Projects", action = ":lua Snacks.picker.projects()" },
	{ icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
	{ icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
	{ icon = "󰦛 ", key = "s", desc = "Restore Session", action = ":lua require('persistence').load { last = true }" },
	{ icon = " ", key = "S", desc = "Sessions", action = ":lua require('persistence').select()" },
	{ icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', { cwd = vim.fn.stdpath('config') })" },
    { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
	{ icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
	{ icon = "󱐁 ", key = "z", desc = "Zoxide", action = ":lua Snacks.picker.zoxide()" },
	{ icon = " ", key = "k", desc = "Keymaps", action = ":lua Snacks.dashboard.pick('keymaps')" },
	{ icon = " ", key = "q", desc = "Quit", action = ":qa" },
}

M.startup = function()
	local stats = require("lazy").stats()
	local ms = math.floor(stats.startuptime)

	return {
		align = "center",
		text = {
			{ " Loaded ", hl = "footer" },
			{ stats.loaded .. "/" .. stats.count, hl = "special" },
			{ " plugins in ", hl = "footer" },
			{ ms .. "ms", hl = "special" },
		},
	}
end

return M
