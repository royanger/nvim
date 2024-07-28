--[[ Map 'jk' to ESC in Visual and Insert mode ]]
vim.keymap.set("i", "jk", "<ESC>", { desc = "Esc while in Insert mode" })
vim.keymap.set("x", "jk", "<ESC>", { desc = "Esc while in Visual mode" })

--[[ Move selecttion when in Visual mode ]]
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", { desc = "Move selection up" })
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", { desc = "Move section ddown" })


--[[ Buffer related keymaps ]]
local wk = require("which-key")
wk.add({
  { "<leader>b", group = "[B]uffer" },
})
vim.keymap.set('n', '<leader>bh', '<Cmd>BufferPrevious<CR>,', { desc = 'Go to previous buffer' })
vim.keymap.set('n', '<leader>bl', '<Cmd>BufferNext<CR>,', { desc = 'Go to next buffer' })
vim.keymap.set('n', '<leader>bc', '<Cmd>BufferClose<CR>,', { desc = 'Close buffer' })

vim.keymap.set('n', '<leader>bml', '<Cmd>BufferMoveNext<CR>,', { desc = 'Move buffer to the right' })
vim.keymap.set('n', '<leader>bmh', '<Cmd>BufferMovePrevious<CR>,', { desc = 'Move buffer to the left' })

vim.keymap.set('n', '<leader>b1', '<Cmd>BufferGoto 1<CR>', { desc = 'Go to buffer 1' })
vim.keymap.set('n', '<leader>b2', '<Cmd>BufferGoto 2<CR>', { desc = 'Go to buffer 2' })
vim.keymap.set('n', '<leader>b3', '<Cmd>BufferGoto 3<CR>', { desc = 'Go to buffer 3' })
vim.keymap.set('n', '<leader>b4', '<Cmd>BufferGoto 4<CR>', { desc = 'Go to buffer 4' })
vim.keymap.set('n', '<leader>b5', '<Cmd>BufferGoto 5<CR>', { desc = 'Go to buffer 5' })
vim.keymap.set('n', '<leader>b6', '<Cmd>BufferGoto 6<CR>', { desc = 'Go to buffer 6' })
vim.keymap.set('n', '<leader>b7', '<Cmd>BufferGoto 7<CR>', { desc = 'Go to buffer 7' })
vim.keymap.set('n', '<leader>b8', '<Cmd>BufferGoto 8<CR>', { desc = 'Go to buffer 8' })
vim.keymap.set('n', '<leader>b9', '<Cmd>BufferGoto 9<CR>', { desc = 'Go to buffer 9' })

--[[ Search and Replace oncurrent word ]]
vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Search & Replace selection" })

--[[ Keerp search result at center of the screen ]]
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--[[ Keep cursor in the middle of the screen ]]
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
