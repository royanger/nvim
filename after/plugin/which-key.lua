local wk = require('which-key')
wk.register({
	b = {
		name = "Buffers",
	},
	c = {
		name = "Comments",
		c = { "Toggles linewise comment" },
		b = { "Toggles blockwaie comment" },
	},
	f = {
		name = "Find Files/Search Files"
	},
	g = {
		name = "Git",
		f = "[G]it [F]iles",
		b = "[G]it [B]ranches",
		c = "[G]it [C]ommits",
		i = "[G]it [S]tatus",
		d = "[G]it [D]iff for the buffer",
		s = "[G]it S[T]ash",
		l = "Open [L]azyGit",
		v = "Open GitDiff[V]iew",
	},
	h = {
		name = "Harpoon",
		m = "Harpoon [M]odal",
		a = "[A]dd current file",
		r = "[R]emove current file",
		h = "Move to  next mark",
		l = "Move to previous mark",
		["1"] = "Move to mark [1]",
		["2"] = "Move to mark [2]",
		["3"] = "Move to mark [3]",
		["4"] = "Move to mark [4]",
		["5"] = "Move to mark [5]",
		["6"] = "Move to mark [6]",
	},
	s = {
		name = "Search"
	},
	t = {
		name = "Trouble",
		t = "Open [T]rouble",
		w = "Open workspace [D]iagnostics",
		d = "Open document [D]iagnostics",
		q = "Trouble [Q]uickfix",
		l = "Trouble [L]oclist",
	},
	v = {
		name = "View Defs/Refs",
		d = "[V]iew [D]efintion",
		r = "[V]iew [R]eferences",
		I = "[V]iew [I]mplementation",
		D = "[V]iew Type [D]efinition",
		s = "[V]iew Document [S]umbols",
		w = "[V]iew [W]orkspace Symbols",
	},
}, { prefix = "<leader>" })
