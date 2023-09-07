local opts = { noremap = true, silent = true }
-- Normal-mode commands
vim.keymap.set('n', '˚', ':MoveLine(-1)<CR>', { unpack(opts) })
vim.keymap.set('n', '<A-k>', ':MoveLine(-1)<CR>', { desc = "Move line up", unpack(opts) })
vim.keymap.set('n', '∆', ':MoveLine(1)<CR>', { unpack(opts) })
vim.keymap.set('n', '<A-j>', ':MoveLine(1)<CR>', { desc = "Move line down", unpack(opts) })
vim.keymap.set('n', '˙', ':MoveWord(-1)<CR>', { unpack(opts) })
vim.keymap.set('n', '<A-h>', ':MoveWord(-1)<CR>', { desc = "Move word left", unpack(opts) })
vim.keymap.set('n', '¬', ':MoveWord(1)<CR>', { unpack(opts) })
vim.keymap.set('n', '<A-l>', ':MoveWord(1)<CR>', { desc = "Move word right", unpack(opts) })
vim.keymap.set('n', '<leader>wf', ':MoveWord(1)<CR>', { desc = "Move line down", unpack(opts) })
vim.keymap.set('n', '<leader>wb', ':MoveWord(-1)<CR>', { desc = "Move line down", unpack(opts) })

-- Visual-mode commands
vim.keymap.set('v', '˚', ':MoveBlock(-1)<CR>', { unpack(opts) })
vim.keymap.set('v', '<A-k>', ':MoveBlock(-1)<CR>', { desc = "Move line up", unpack(opts) })
vim.keymap.set('v', '∆', ':MoveBlock(1)<CR>', { unpack(opts) })
vim.keymap.set('v', '<A-j>', ':MoveBlock(1)<CR>', { desc = "Move line down", unpack(opts) })
vim.keymap.set('v', '˙', ':MoveWord(-1)<CR>', { unpack(opts) })
vim.keymap.set('v', '<A-h>', ':MoveWord(-1)<CR>', { desc = "Move word left", unpack(opts) })
vim.keymap.set('v', '¬', ':MoveWord(1)<CR>', { unpack(opts) })
vim.keymap.set('v', '<A-l>', ':MoveWor(1)<CR>', { desc = "Move word right", unpack(opts) })


local wk = require('which-key')

wk.register({
	["˚"] = "which_key_ignore",
	["∆"] = "which_key_ignore",
	["˙"] = "which_key_ignore",
	["¬"] = "which_key_ignore",
})
