local tsc = require('tsc')

tsc.setup({
	auto_open_qflist = true,
	auto_close_qflist = false,
	auto_focus_qflist = false,
	auto_start_watch_mode = false,
	bin_path = require("utils").find_tsc_bin(),
	enable_progress_notifications = true,
	flags = {
		noEmit = true,
		project = function()
			return require("utils").find_nearest_tsconfig()
		end,
		watch = false,
	},
	hide_progress_notifications_from_history = true,
	spinner = { "⣾", "⣽", "⣻", "⢿", "⡿", "⣟", "⣯", "⣷" },
	pretty_errors = true,
})
