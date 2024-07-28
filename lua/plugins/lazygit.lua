return {
  "kdheepak/lazygit.nvim",
  -- optional for floating window border decoration
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local wk = require("which-key")
    wk.add({
      { "<leader>g", group = "[G]it" },
    })

    vim.keymap.set('n', '<leader>gl', '<Cmd>LazyGit<CR>')
  end
}
