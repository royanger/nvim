--[[ map 'jk' to esc in visual and insert mode ]]
vim.keymap.set("i", "jk", "<esc>", { desc = "esc while in insert mode" })
vim.keymap.set("x", "jk", "<esc>", { desc = "esc while in visual mode" })

--[[ move selecttion when in visual mode ]]
vim.keymap.set("x", "k", ":move '<-2<cr>gv-gv", { desc = "move selection up" })
vim.keymap.set("x", "j", ":move '>+1<cr>gv-gv", { desc = "move section ddown" })

--[[ buffer related keymaps ]]
vim.keymap.set('n', '<leader>bh', '<cmd>bufferprevious<cr>,', { desc = 'go to previous buffer' })
vim.keymap.set('n', '<leader>bl', '<cmd>buffernext<cr>,', { desc = 'go to next buffer' })
vim.keymap.set('n', '<leader>bc', '<cmd>bufferclose<cr>,', { desc = 'close buffer' })

vim.keymap.set('n', '<leader>bml', '<cmd>buffermovenext<cr>,', { desc = 'move buffer to the right' })
vim.keymap.set('n', '<leader>bmh', '<cmd>buffermoveprevious<cr>,', { desc = 'move buffer to the left' })

vim.keymap.set('n', '<leader>b1', '<cmd>buffergoto 1<cr>', { desc = 'go to buffer 1' })
vim.keymap.set('n', '<leader>b2', '<cmd>buffergoto 2<cr>', { desc = 'go to buffer 2' })
vim.keymap.set('n', '<leader>b3', '<cmd>buffergoto 3<cr>', { desc = 'go to buffer 3' })
vim.keymap.set('n', '<leader>b4', '<cmd>buffergoto 4<cr>', { desc = 'go to buffer 4' })
vim.keymap.set('n', '<leader>b5', '<cmd>buffergoto 5<cr>', { desc = 'go to buffer 5' })
vim.keymap.set('n', '<leader>b6', '<cmd>buffergoto 6<cr>', { desc = 'go to buffer 6' })
vim.keymap.set('n', '<leader>b7', '<cmd>buffergoto 7<cr>', { desc = 'go to buffer 7' })
vim.keymap.set('n', '<leader>b8', '<cmd>buffergoto 8<cr>', { desc = 'go to buffer 8' })
vim.keymap.set('n', '<leader>b9', '<cmd>buffergoto 9<cr>', { desc = 'go to buffer 9' })

--[[ search and replace oncurrent word ]]
vim.keymap.set("n", "<leader>sr", [[:%s/\<<c-r><c-w>\>/<c-r><c-w>/gi<left><left><left>]],
	{ desc = "[s]earch & [r]eplace selection" })

--[[ format the current buffer ]]
vim.keymap.set("n", "<leader>pp", ":lua vim.lsp.buf.format()<cr>")

--[[ keerp search result at center of the screen ]]
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "n", "nzzzv")

--[[ trouble keymaps ]]
vim.keymap.set("n", "<leader>tt", function() require("trouble").open() end)
vim.keymap.set("n", "<leader>tw", function() require("trouble").open("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>td", function() require("trouble").open("document_diagnostics") end)
vim.keymap.set("n", "<leader>tq", function() require("trouble").open("quickfix") end)
vim.keymap.set("n", "<leader>tl", function() require("trouble").open("loclist") end)
vim.keymap.set("n", "gr", function() require("trouble").open("lsp_references") end)

--[[ keep cursor in the middle of the screen ]]
vim.keymap.set("n", "<c-d>", "<c-d>zz")
vim.keymap.set("n", "<c-u>", "<c-u>zz")

--[[ harpoon keymaps ]]
vim.keymap.set("n", "<leader>ha", function() require("harpoon.mark").add_file() end)
vim.keymap.set("n", "<leader>hr", function() require("harpoon.mark").rm_file() end)

vim.keymap.set("n", "<leader>hm", function() require("harpoon.ui").toggle_quick_menu() end)

vim.keymap.set("n", "<leader>hh", function() require("harpoon.ui").nav_next() end)
vim.keymap.set("n", "<leader>hl", function() require("harpoon.ui").nev_prev() end)

vim.keymap.set("n", "<leader>h1", function() require("harpoon.ui").nav_file(1) end)
vim.keymap.set("n", "<leader>h2", function() require("harpoon.ui").nav_file(2) end)
vim.keymap.set("n", "<leader>h3", function() require("harpoon.ui").nav_file(3) end)
vim.keymap.set("n", "<leader>h4", function() require("harpoon.ui").nav_file(4) end)
vim.keymap.set("n", "<leader>h5", function() require("harpoon.ui").nav_file(5) end)
vim.keymap.set("n", "<leader>h5", function() require("harpoon.ui").nav_file(6) end)

--[[ git fugitive telescope bindings ]]
vim.keymap.set('n', "<leader>gb", "<cmd>telescope git_banches<cr>")
vim.keymap.set('n', "<leader>gs", "<cmd>telescope git_status<cr>")
vim.keymap.set('n', "<leader>gd", "<cmd>telescope git_bcommits<cr>")
vim.keymap.set('n', "<leader>gc", "<cmd>telescope git_commits<cr>")
vim.keymap.set('n', "<leader>gf", "<cmd>telescope git_files<cr>")
vim.keymap.set('n', "<leader>gt", "<cmd>telescope git_stash<cr>")

--[[ lazygit keymaps ]]
vim.keymap.set('n', '<leader>gl', '<cmd>LazyGit<cr>')

--[[ git diffview keymaps]]
vim.keymap.set('n', '<leader>gv', '<cmd>diffviewopen<cr>')
