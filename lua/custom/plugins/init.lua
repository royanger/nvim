-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- Esc to 'jk' for Visual and Isnert mode
vim.keymap.set("i", "jk", "<ESC>", { desc = "Esc while in Insert mode" })
vim.keymap.set("x", "jk", "<ESC>", { desc = "Esc while in Visual mode" })

-- Move selected line / block of text in visual mode
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", { desc = "Move selection up" })
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", { desc = "Move section ddown" })

-- move to the left or right buffer and close current buffer
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


vim.keymap.set('n', '<leader>gf', '', { desc = 'Search [G]it [F]iles' })

return {


}
