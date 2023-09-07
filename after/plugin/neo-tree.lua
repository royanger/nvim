-- Neotree config
local neotree = require('neo-tree')
neotree.setup({
	filesystem = {
		follow_current_file = {
			enabled = true
		},
		filtered_items = {
			visible = false,
			show_hidden_count = true,
			hide_dotfiles = false,
			hide_gitignored = false,
			hide_hidden = false,
		}
	}
})

vim.keymap.set('n', '<C-b>', ':Neotree filesystem reveal right toggle<Enter>')
vim.keymap.set('n', '<C-e>', ':Neotree filesystem reveal float toggle<Enter>')
