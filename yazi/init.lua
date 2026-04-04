require("git"):setup({
	-- order = 1500,
	order = 0,
})

require("zoxide"):setup({
	update_db = true,
})

---@diagnostic disable: undefined-global
function Linemode:mtime_only()
	local time = math.floor(self._file.cha.mtime or 0)
	local mtime = time ~= 0 and os.date("%Y/%m/%d %H:%M", time) or ""
	-- return ui.Line(string.format("%-17s", mtime))
	return mtime
end
