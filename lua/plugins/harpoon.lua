return {
  'ThePrimeagen/harpoon',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    --[[ Harpoon keymaps ]]
    local wk = require("which-key")
    wk.add({
      { "<leader>h", group = "[H]arpoon" },
    })

    vim.keymap.set("n", "<leader>ha", function() require("harpoon.mark").add_file() end, { desc = "Add [m]ark" })
    vim.keymap.set("n", "<leader>hr", function() require("harpoon.mark").rm_file() end, { desc = "Remove [m]ark" })

    vim.keymap.set("n", "<leader>hm", function() require("harpoon.ui").toggle_quick_menu() end,
      { desc = "View quick [m]enu" })

    vim.keymap.set("n", "<leader>hh", function() require("harpoon.ui").nav_next() end, { desc = "Move to [n]ext" })
    vim.keymap.set("n", "<leader>hl", function() require("harpoon.ui").nev_prev() end, { desc = "Move to [p]revious" })

    vim.keymap.set("n", "<leader>h1", function() require("harpoon.ui").nav_file(1) end, { desc = "Move to [1]" })
    vim.keymap.set("n", "<leader>h2", function() require("harpoon.ui").nav_file(2) end, { desc = "Move to [2]" })
    vim.keymap.set("n", "<leader>h3", function() require("harpoon.ui").nav_file(3) end, { desc = "Move to [3]" })
    vim.keymap.set("n", "<leader>h4", function() require("harpoon.ui").nav_file(4) end, { desc = "Move to [4]" })
    vim.keymap.set("n", "<leader>h5", function() require("harpoon.ui").nav_file(5) end, { desc = "Move to [5]" })
    vim.keymap.set("n", "<leader>h5", function() require("harpoon.ui").nav_file(6) end, { desc = "Move to [6]" })
  end,

}
